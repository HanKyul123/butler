package com.butler.app.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.dao.MyinfoReviewDTO;
import com.butler.app.dao.ReviewDAO;
import com.butler.app.dao.ReviewDTO;
import com.butler.app.dao.UserDTO;

public class MyinfoReviewAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HttpSession session = req.getSession(true);
		UserDTO LoginUser = (UserDTO) session.getAttribute("LoginUser");
		String user_nickname = LoginUser.getUser_nickname();
		int user_num_pk = LoginUser.getUser_num_pk();
		System.out.println("1"); 
		System.out.println(user_num_pk);
		
		ReviewDAO rdao  = new ReviewDAO();
		
		List<MyinfoReviewDTO> reviewResult = (List<MyinfoReviewDTO>)rdao.MyinfoReviewResult(user_nickname, user_num_pk);		
		session.setAttribute("reviewResult", reviewResult);
	
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);		
		transfer.setPath(req.getContextPath()+"/app/myinfo/myinfo_reviewView.jsp");
		return transfer;
		
	}
	
}
