package com.butler.app.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.dao.BchargeDAO;
import com.butler.app.dao.BchargeDTO;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;
import com.butler.app.dao.ReviewDTO;
import com.butler.app.dao.UserDAO;
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
	  	//저장될 파일의 최대크기(10mb)
		int size = 1024*1024*10;
		
		//cos라이브러리 이용
		
		boolean fcheck = false;
		
		MultipartRequest multi = new MultipartRequest(req, saveFolder,size,"UTF-8",new DefaultFileRenamePolicy());
		//input [type=file] 태그의 name을 써주면 시스템상 이름을 받아올수있음
		String systemname = multi.getFilesystemName("file");
		if(systemname == null) {
			fcheck=true;
		}
		
		//input [type=file] 태그의 name을 써주면 사용자가 업로드할 당시의 이름을 받아올 수 있음.
		String orgname = multi.getOriginalFileName("file");
		
		String review_contents = multi.getParameter("review_contents");
		loginUser= (UserDTO)session.getAttribute("LoginUser");
		String review_nickname = loginUser.getUser_nickname();
		String BUSINESS_PLACE_NUM_FK = multi.getParameter("BUSINESS_PLACE_NUM_FK");
		
		ReviewDTO reviewDTO = new ReviewDTO();
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);		
		transfer.setPath(req.getContextPath()+"/app/myinfo/myinfo_reviewView.jsp");
		return transfer;
	}
	
}
