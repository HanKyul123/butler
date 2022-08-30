package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDTO;

public class UserAroundAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	    resp.setCharacterEncoding("utf-8");
	    resp.setContentType("text/html; charset=utf-8");
	    
		HttpSession session = req.getSession(true);
		UserDTO LoginUser = (UserDTO)session.getAttribute("LoginUser");
		
		PrintWriter out = resp.getWriter();
		
		if(LoginUser == null) {
			out.print("<script>");
			out.print("alert('로그인 후 이용부탁드립니다.');");
			out.print("location.href = '"+req.getContextPath()+"/app/login/login.jsp';");
			out.print("</script>");
		}
		else {
			String addretc = LoginUser.getUser_addretc();
			int idx = addretc.indexOf(",");
			String match = "[^\uAC00-\uD7A30-9a-zA-Z]";
			if(idx == -1) {
				// "," 존재하지 않음
			    String addretc2 = addretc.replaceAll(match, "");
				System.out.println(addretc2);
				out.print("<script>");
				out.print("location.href = '"+req.getContextPath()+"/hotel/searchkeyword.ho?keyword="+addretc2+"';");
				out.print("</script>");
			}
			else {
				String addretc2 = addretc.substring(0, idx);
				addretc2 = addretc2.replaceAll(match, "");
				System.out.println(addretc2);
				out.print("<script>");
				out.print("location.href = '"+req.getContextPath()+"/hotel/searchkeyword.ho?keyword="+addretc2+"';");
				out.print("</script>");				
			}
		}
		
		return null;
	}
	
}
