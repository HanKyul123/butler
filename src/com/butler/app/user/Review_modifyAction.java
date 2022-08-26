package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;
import com.butler.app.dao.ReviewDTO;
import com.butler.app.dao.ReviewFileDAO;
import com.butler.app.dao.ReviewFileDTO;
import com.butler.app.dao.UserDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Review_modifyAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		HotelDTO hdto = new HotelDTO();
		HotelDAO hdao = new HotelDAO();
		ReviewFileDAO rfdao = new ReviewFileDAO();
		
		//파일 업로드
		//파일이 저장될 경로
		String saveFolder = req.getServletContext().getRealPath("/reviewfile");
		System.out.println(saveFolder);
		
		//저장될 파일의 최대 크기(10MB)
		int size = 1024*1024*10;
		
		//cos 라이브러리 이용														기본파일 이름변경 정책
		MultipartRequest multi = new MultipartRequest(req,saveFolder,size,"UTF-8",new DefaultFileRenamePolicy());
		
		int business_place_num_pk = Integer.parseInt(multi.getParameter("business_place_num_pk"));
		String Mnew_review = multi.getParameter("Mnew_review");
		int review_num = Integer.parseInt(multi.getParameter("review_num"));

		
		System.out.println(review_num);
		System.out.println(Mnew_review);
		System.out.println(business_place_num_pk);
		
		if(hdao.Review_modifyAction(Mnew_review, review_num)) {
			System.out.println("end");
			//수정완료
			

			
			//input[type=file] 태그의 name을 써주면 시스템상 이름을 받아올 수 있음
			String systemname1 = multi.getFilesystemName("file1");
			
			System.out.println(systemname1);

			//input[type=file] 태그의 name을 써주면 사용자가 업로드할 당시의 이름을 받아올 수 있음
			String orgname1 = multi.getOriginalFileName("file1");
			System.out.println(orgname1);
			

				ReviewDTO file = new ReviewDTO();
				file.setBusiness_place_num_fk(business_place_num_pk);
				file.setReview_file_systemname(systemname1);
				file.setReview_file_orgname(orgname1);
				file.setReview_num_pk(review_num);
				rfdao.ModifyFile(file);

			
			PrintWriter out = resp.getWriter();
	        out.print("<script>");
	        //alert('apple님 어서오세요~!');
	        out.print("alert('리뷰 수정이 완료되었습니다.');");
	        //location.href = '???/app/board/main.jsp';
	        out.print("location.href = '"+req.getContextPath()+"/hotel/reservationViewAction.ho?business_place_num_pk="+business_place_num_pk+"';");
	        out.print("</script>");
		}
		return null;
	}
	
	
}
