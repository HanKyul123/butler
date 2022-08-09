package com.butler.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;

public class UserLoginOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		//MIME 타입
		resp.setContentType("text/html; charset=utf-8");
		
		UserDAO udao = new UserDAO();
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		
		return null;
	}
	
}
