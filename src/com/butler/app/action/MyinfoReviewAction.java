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
		
		System.out.println("1"); 
		
		ReviewDAO rdao  = new ReviewDAO();
		
		List<MyinfoReviewDTO> reviewResult = (List<MyinfoReviewDTO>)rdao.MyinfoReviewResult(user_nickname);		
		session.setAttribute("reviewResult", reviewResult);
	
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);		
		transfer.setPath(req.getContextPath()+"/app/myinfo/myinfo_reviewView.jsp");
		return transfer;
		
	}
	
}
