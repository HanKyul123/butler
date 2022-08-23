package com.butler.app.user;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;
import com.butler.app.dao.UserDTO;

public class UserLoginOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		//MIME 타입
		resp.setContentType("text/html; charset=utf-8");
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();
		
		int user_logintype = 0;
		String user_email = req.getParameter("user_email");
		String user_pw = req.getParameter("user_pw");
		
		System.out.println(user_email);
		System.out.println(user_pw);
		
		System.out.println("2");
		
		 
		PrintWriter out = resp.getWriter();
		
		if(!udao.DBEmailCheck(user_email, user_pw)) {
			//로그인 실패
			System.out.println("3");
			
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('아이디, 비밀번호 재확인 부탁드립니다.');");
			//location.href = '???/app/board/main.jsp';
			out.print("location.href = '"+req.getContextPath()+"/app/login/login.jsp';");
			out.print("</script>");
			
		}
		else {
			UserDTO LoginUser = (UserDTO)udao.DBCheck(user_email, user_pw, user_logintype);
			if(LoginUser.getUser_email().equals(user_email) && LoginUser.getUser_pw().equals(user_pw)){
				System.out.println(LoginUser.getUser_name());
				System.out.println(LoginUser.getUser_email());
				System.out.println(LoginUser.getUser_pw());
					//기존가입자
				
					HttpSession session = req.getSession(true);
					session.setAttribute("LoginUser", LoginUser);
					
					UserDTO useruser = (UserDTO)session.getAttribute("LoginUser");
//					System.out.println(useruser.getUser_addr());
					
					out.print("<script>");
					//alert('apple님 어서오세요~!');
					out.print("alert('"+useruser.getUser_nickname()+"님 어서오세요~!');");
					//location.href = '???/app/board/main.jsp';
					out.print("location.href = '"+req.getContextPath()+"/';");
					out.print("</script>");
				}	
		}
		return null;

	}
	
}
