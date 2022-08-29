package com.butler.app.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.dao.ReviewDAO;
import com.butler.app.dao.ReviewDTO;
import com.butler.app.dao.UserDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewWriteOKAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//파일이 저장될 경로
		String saveFolder = req.getServletContext().getRealPath("file");
		System.out.println(saveFolder);
	  	HttpSession session = req.getSession();
		UserDTO loginUser= new UserDTO();
		ReviewDAO rdao = new ReviewDAO();
		PrintWriter out = resp.getWriter();
	  	//저장될 파일의 최대크기(10mb)
		int size = 1024*1024*10;
		
		//cos라이브러리 이용
		
		boolean fcheck = false;
		
		MultipartRequest multi = new MultipartRequest(req, saveFolder,size,"UTF-8",new DefaultFileRenamePolicy());
		//input [type=file] 태그의 name을 써주면 시스템상 이름을 받아올수있음
		String review_file_systemname = multi.getFilesystemName("file");
		if(review_file_systemname == null) {
			fcheck=true;
		}
		
		//input [type=file] 태그의 name을 써주면 사용자가 업로드할 당시의 이름을 받아올 수 있음.
		String review_file_orgname = multi.getOriginalFileName("file");
		
		String review_contents = multi.getParameter("review_contents");
		loginUser= (UserDTO)session.getAttribute("LoginUser");
		String review_nickname = loginUser.getUser_nickname();
		int BUSINESS_PLACE_NUM_FK =Integer.parseInt( multi.getParameter("BUSINESS_PLACE_NUM_FK"));
		
		ReviewDTO review = new ReviewDTO(BUSINESS_PLACE_NUM_FK, review_contents, review_nickname, review_file_systemname, review_file_orgname);
		if(rdao.insertReview(review)) {
			System.out.println("리뷰작성완료");
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);		
			transfer.setPath(req.getContextPath()+"/app/myinfo/myinfo_reviewView.jsp");
			return transfer;
		}else {
			System.out.println("리뷰작성실패");
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('리뷰작성에 실패하였습니다.');");
			//location.href = '???/app/board/main.jsp';
			out.print("location.href = '"+req.getContextPath()+"/index.jsp';");
			out.print("</script>");
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);		
			transfer.setPath(req.getContextPath()+"/app/myinfo/myinfo_reviewView.jsp");
			return transfer;
			
		}
	}
	
}
