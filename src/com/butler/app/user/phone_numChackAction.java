package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;

import smspack.smsClass; 


public class phone_numChackAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String phone_num = req.getParameter("phone_num");

		System.out.println("6");
		System.out.println(phone_num);
			
		PrintWriter out = resp.getWriter();
		smsClass test = new smsClass();

		String certiNum =  test.SMS(phone_num);
		if(certiNum != null) {
			System.out.println("6-3-o");
			
			HttpSession session = req.getSession(true);
			session.setAttribute("certiNum", certiNum);
			System.out.println(session.getAttribute("certiNum"));

			out.write("O");
		}
		else {
			System.out.println("6-3-x");
			out.write("X");
		}
		out.close();
		
			
		
		return null;
	}
	
}