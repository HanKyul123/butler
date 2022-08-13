package com.butler.app.user;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;
import com.butler.app.dao.UserDTO;


public class UserJoinOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		UserDTO user = new UserDTO();		
		UserDAO udao = new UserDAO();
		
		System.out.println("3-2");
		
		HttpSession session = req.getSession(true);
		UserDTO useruser = (UserDTO)session.getAttribute("LoginUser");
		
		int user_logintype = useruser.getUser_logintype();
		String user_phone = useruser.getUser_phone();
		
		System.out.println(user_logintype);
		System.out.println(user_phone);
		
		
		String user_email = req.getParameter("email");
		String user_name = req.getParameter("user_name");
		String user_pw = req.getParameter("pw");
		String user_nickname = req.getParameter("nick");
		
		String user_zipcode = req.getParameter("zipcode");
		String user_addr = req.getParameter("addr");
		String user_addrdetail = req.getParameter("addrdetail");
		String user_addretc = req.getParameter("addretc");
		
		System.out.println(user_pw);
		PrintWriter out = resp.getWriter();
		
		 if(useruser.getUser_email() != null && useruser.getUser_name() != null) {
	         if(user_pw == "" || user_nickname == "" || user_zipcode == "" || user_addr == "") {
	            System.out.println("6");
	        	out.print("<script>");
	            out.print("location.href = '"+req.getContextPath()+"/app/join/kjoin_3.jsp';");
	            out.print("</script>");
	            
	         }
	      }
		user.setUser_logintype(user_logintype);
		user.setUser_nickname(user_nickname);
		user.setUser_pw(user_pw);
		user.setUser_name(user_name);
		user.setUser_zipcode(user_zipcode);
		user.setUser_addr(user_addr);
		user.setUser_addrdetail(user_addrdetail);
		user.setUser_addretc(user_addretc);
		user.setUser_email(user_email);
		user.setUser_phone(user_phone);
		
		
		
		if(udao.UserJoin(user)) {
	         session.setAttribute("LoginUser", user);
	         UserDTO loginUser = (UserDTO)session.getAttribute("LoginUser");
	         System.out.println(loginUser.getUser_addr());
	         
	         out.print("<script>");
	         //alert('apple님 어서오세요~!');
	         out.print("alert('"+useruser.getUser_nickname()+"님 어서오세요~!');");
	         //location.href = '???/app/board/main.jsp';
	         out.print("location.href = '"+req.getContextPath()+"/';");
	         out.print("</script>");
	         
	       }
	      
		 else { // != 
	    	 if(useruser.getUser_email().equals(user_email) || useruser.getUser_nickname().equals(user_nickname)) {
	    		 System.out.println("7");
		         out.print("<script>");
		         //alert('apple님 어서오세요~!');
		         out.print("alert('이메일 및 닉네임 중복검사를 진행해 주세요');");
		         //location.href = '???/app/board/main.jsp';
		         out.print("location.href = '"+req.getContextPath()+"/app/join/join_3.jsp';");
		         out.print("</script>");
	    	 }
		         
//	         ActionTo transfer = new ActionTo();
//	         transfer.setPath("/app/join/join_3.jsp");
//	         transfer.setRedirect(false);
//	         return transfer;
	    	 }
	    	 	 
	    	 
		 return null;	
		 }
	}


