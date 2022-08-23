package com.butler.app.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.KUserDAO;
import com.butler.app.dao.UserDTO;


public class KakaoLoginAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
				
		System.out.println("1");

		UserDTO user = new UserDTO();
		KUserDAO kdao = new KUserDAO();
		
		
		String user_name = req.getParameter("user_name");
//		String user_name = req.getParameter("user_name");
		String user_email = req.getParameter("user_email");
		
		System.out.println(user_name);
		System.out.println(user_email);
		
		PrintWriter out = resp.getWriter();
		
		if(kdao.kakaoDBcheck(user_name, user_email) != null) {
			//기존 가입자
			
			System.out.println("2");
			
			HttpSession session = req.getSession(true);
			session.setAttribute("LoginUser", kdao.kakaoDBcheck(user_name, user_email));
	
			UserDTO useruser = (UserDTO)session.getAttribute("LoginUser");
//			System.out.println(useruser.getUser_addr());
			
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('"+useruser.getUser_nickname()+"님 어서오세요~!');");
			//location.href = '???/app/board/main.jsp';
			out.print("location.href = '"+req.getContextPath()+"/';");
			out.print("</script>");
				
		}
		else {
			//신규 가입자
			System.out.println("3");
			
			HttpSession session = req.getSession(true);
			UserDTO LoginUser = new UserDTO();
			LoginUser.setUser_name(user_name);
			LoginUser.setUser_email(user_email);
			
			session.setAttribute("LoginUser", LoginUser);
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(true);
			transfer.setPath("/app/join/join_1.jsp");
			return transfer;
		}
		return null;
	}

}
