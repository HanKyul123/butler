package com.butler.book;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;

public class NotLoginUserAlert implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.print("<script>");
        out.print("alert('로그인 후 이용부탁드립니다.');");
        out.print("location.href = '/app/login/login.jsp';");
        out.print("</script>");
		
		
		return null;
	}
	
}
