package com.butler.app.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class PhoneProveAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		System.out.println("2");
		
		String user_phone = req.getParameter("user_phone_1");
		
		System.out.println(user_phone);
		
		HttpSession session = req.getSession(true);
		session.setAttribute("user_phone", user_phone);
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		transfer.setPath("/app/join/join_3.jsp");
		return transfer;

	}
	
}
