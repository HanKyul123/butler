package com.butler.app.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.KUserDAO;
import com.butler.app.dao.KUserDTO;


public class KakaoLoginAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
				
		System.out.println("1");

		KUserDTO user = new KUserDTO();
		KUserDAO kdao = new KUserDAO();
		
		
		String user_name = req.getParameter("user_name");
//		String user_name = req.getParameter("user_name");
		String user_email = req.getParameter("user_email");
		
		System.out.println(user_name);
		System.out.println(user_email);
		
		if(kdao.kakaoDBcheck(user_name, user_email) != null) {
			//기존 가입자
			
			System.out.println("2");
			
			String logintype = String.valueOf(kdao.kakaoDBcheck(user_name, user_email).getUser_logintype());
			System.out.println(logintype);
			
			req.setAttribute("user_logintype",kdao.kakaoDBcheck(user_name, user_email).getUser_logintype());
			req.setAttribute("user_num",kdao.kakaoDBcheck(user_name, user_email).getUser_num());
			req.setAttribute("user_status",kdao.kakaoDBcheck(user_name, user_email).getUser_status());
			req.setAttribute("user_identity",kdao.kakaoDBcheck(user_name, user_email).getUser_identity());
			req.setAttribute("nickname",kdao.kakaoDBcheck(user_name, user_email).getNickname());
			req.setAttribute("user_pw",kdao.kakaoDBcheck(user_name, user_email).getUser_pw());
			req.setAttribute("user_name",kdao.kakaoDBcheck(user_name, user_email).getUser_name());
			req.setAttribute("user_addr",kdao.kakaoDBcheck(user_name, user_email).getUser_addr());
			req.setAttribute("user_email",kdao.kakaoDBcheck(user_name, user_email).getUser_email());
			req.setAttribute("user_phone",kdao.kakaoDBcheck(user_name, user_email).getUser_phone());
	
//			req.setAttribute("user_logintype", user_logintype);
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(true);
			transfer.setPath("/testview.jsp");
			return transfer;
				
		}
		else {
			//신규 가입자
			System.out.println("3");
			
			HttpSession session = req.getSession(true);
			session.setAttribute("user_name", user_name);
			session.setAttribute("user_email", user_email);
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(true);
			transfer.setPath("/app/join/join_1.jsp");
			return transfer;
		}
	}

}
