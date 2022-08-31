package com.butler.app.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.dao.UserDTO;



public class PhoneProveAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		System.out.println("2");
		
		HttpSession session = req.getSession(true);
		UserDTO useruser = (UserDTO)session.getAttribute("LoginUser");
		UserDTO user = new UserDTO();
		
		String user_phone = req.getParameter("user_phone_1");
		String prove_num = req.getParameter("porve_num");
		String certiNum = (String) session.getAttribute("certiNum");
		
		System.out.println(prove_num);
		System.out.println(certiNum);
		
		if(!prove_num.equals(certiNum)) {
			PrintWriter out = resp.getWriter();
        	out.print("<script>");
        	out.print("alert('인증번호가 맞지 않습니다.');");
            out.print("location.href = '"+req.getContextPath()+"/app/login/login.jsp';");
            out.print("</script>");
			
		}else {
			if(useruser == null) {
				System.out.println(user_phone);
				
				user.setUser_logintype(0);
				user.setUser_phone(user_phone);
				
				session.setAttribute("LoginUser", user);
				
				ActionTo transfer = new ActionTo();
				transfer.setRedirect(true);
				transfer.setPath("/app/join/join_3.jsp");
				return transfer;
				
			}
			else {
				
				System.out.println(user_phone);
				
				user.setUser_phone(user_phone);
				user.setUser_email(useruser.getUser_email());
				user.setUser_name(useruser.getUser_name());
				user.setUser_logintype(1); 
				
				session.setAttribute("LoginUser", user);
				
				ActionTo transfer = new ActionTo();
				transfer.setRedirect(true);
				transfer.setPath("/app/join/kjoin_3.jsp");
				return transfer;
				
			}
		}
		return null;
		
		

	 }
	
}
