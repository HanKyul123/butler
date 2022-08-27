package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;
import com.butler.app.dao.UserDTO;

public class UserResignAction implements Action{
 
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		UserDTO udto = new UserDTO();
		UserDAO udao = new UserDAO();
		
		HttpSession session = req.getSession(true);
		UserDTO user = (UserDTO)session.getAttribute("LoginUser");
		
		PrintWriter out = resp.getWriter();
		
		if(udao.UserResignOK(user)) {
			//성공! 잘가!
			
			session.removeAttribute("LoginUser");
			
			out.print("<script>");
	        out.print("alert('이용해 주셔서 감사합니다.');");
	        out.print("location.href = '/';");
	        out.print("</script>");
		}
		else {
			out.print("<script>");
	        out.print("alert('다시한번 시도해 주세요');");
	        out.print("location.href = '/app/myinfo/myinfoView.jsp';");
	        out.print("</script>");
		}
		  
		  
		
		
		return null;
	}
	
}
