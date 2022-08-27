package com.butler.app.user;

import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;
import com.mysql.cj.Session;

import smspack.smsClass;

public class prove_numChackAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String prove_num = req.getParameter("prove_num");
		UserDAO udao = new UserDAO();
		
		smsClass sms = new smsClass();

		System.out.println("5");
		System.out.println(prove_num);
			
			
  
		
		PrintWriter out = resp.getWriter();

		HttpSession session = req.getSession(true);
		session.getAttribute("certiNum");
		System.out.println(session.getAttribute("certiNum"));

		if(prove_num.equals(session.getAttribute("certiNum"))) {
			
			System.out.println("5-4-o");
			out.write("O");
		}
		else {
			System.out.println("5-4-x");
			out.write("X");
			
		}
		out.close();
		
		return null;
		
	}

}
