package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;


public class CheckEmailOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String user_email = req.getParameter("user_email");
		UserDAO udao = new UserDAO();
		PrintWriter out = resp.getWriter();//응답을 작성하기 위한 객체
		System.out.println("4-2");
			if(udao.Checkemail(user_email)) {
				System.out.println("4-3-o");
				out.write("O");
			}
			else {
				System.out.println("4-3-x");
				out.write("X");
			}
		out.close();
		return null;
	}
}
