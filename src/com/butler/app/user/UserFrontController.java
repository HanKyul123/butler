package com.butler.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.ActionTo;
import com.butler.app.action.KakaoLoginAction;
import com.butler.app.action.PhoneProveAction;

public class UserFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		doProcess(req,resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI= req.getRequestURI();
		String contextPath=req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionTo transfer = null;
		String path="";
		boolean isRedirect;
		switch (command) {
		case "/login.login.us":
			transfer = new ActionTo();
			transfer.setPath("app/login/login.jsp");
			transfer.setRedirect(false);
			break;
		
		case "/join1.us":
			System.out.println("1");
			transfer = new ActionTo();
			transfer.setPath("app/join/join_1.jsp");
			transfer.setRedirect(false);
			break;
			
		case "/Login.loginok.us":
			try {
				transfer = new UserLoginOkAction().execute(req, resp);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			break;
			
		case "/login/Kloginok.us" :
			transfer = new ActionTo();
			try {
				transfer = new KakaoLoginAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		case "/main.logout.us" :
			req.getSession().removeAttribute("LoginUser");
			transfer = new ActionTo();
			transfer.setPath("/");
			transfer.setRedirect(false);
			break;
			
			
		case "/kakaoLogout.us":
			req.getSession().removeAttribute("LoginUser");
			transfer = new ActionTo();
			transfer.setPath("/");
			transfer.setRedirect(false);
			break;
			
		case "/login/loginPhoneProve.us":
			transfer = new ActionTo();
			try {
				transfer = new PhoneProveAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		
		case "/user/join.us":
			System.out.println("3-1");
			transfer = new ActionTo();
			try {
				transfer = new UserJoinOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("0");
				e.printStackTrace();
			}
			break;
		case "/user/checkemailok.us":
	         System.out.println("4-1");
	         try {
	            new CheckEmailOkAction().execute(req,resp);
	         } catch (Exception e) {
	        	 e.printStackTrace();
	         }
	         break;
	      case "/user/checknicknameok.us":
	         System.out.println("5-1");
	         try {
	            new CheckNicknameOkAction().execute(req,resp);
	         } catch (Exception e) {
	        	 e.printStackTrace();
	         }
	         break;
	         
	      case "/user/review_modifyAction.us":
		     try {
		        new Review_modifyAction().execute(req,resp);
		     } catch (Exception e) {
		    	 e.printStackTrace();
			 }
			 break;
		
	 }
		if(transfer !=null) {
			if(transfer.isRedirect()) {
				resp.sendRedirect(transfer.getPath());
			}else {
				req.getRequestDispatcher(transfer.getPath()).forward(req, resp);
			}
		}
	}
	
}
