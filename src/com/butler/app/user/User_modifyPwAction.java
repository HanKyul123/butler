package com.butler.app.user;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;
import com.butler.app.dao.UserDTO;

public class User_modifyPwAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		
		HttpSession session = req.getSession(true);
		
		int user_num_pk = Integer.parseInt(req.getParameter("user_num_pk2"));
		int user_logintype = Integer.parseInt(req.getParameter("user_logintype2"));
		
		
		
		
		String user_new_pw = req.getParameter("re_new_pw");
		System.out.println(user_new_pw);
		System.out.println(user_num_pk);
		
        PrintWriter out = resp.getWriter();
		
		System.out.println("100");
		user.setUser_logintype(user_logintype);
		user.setUser_num_pk(user_num_pk);
		
		
		
		System.out.println(user_new_pw);
		
		
			user.setUser_pw(user_new_pw);
			
		if(udao.User_modifyPwOk(user)) {
	         
			System.out.println("end");
				//비밀번호 수정완료
	         UserDTO useruser = (UserDTO)udao.User_select_pk(user_num_pk);
	         session.setAttribute("LoginUser", useruser);
	         
				out.print("<script>");
		        out.print("alert('비밀번호 수정이 완료되었습니다.');");
		        out.print("location.href = '/app/myinfo/myinfoView/myinfoView.jsp';");
		        out.print("</script>");
	         
	       }
	      
		else { 
			 		System.out.println("7");
		            out.print("<script>");
		            out.print("alert('다시 확인해주세요');");
		            out.print("location.href = '/app/myinfo/myinfoView/myinfoView.jsp';");
		            out.print("</script>");            
		        }
		
		
		
		
		return null;
}
}