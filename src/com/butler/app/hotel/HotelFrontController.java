package com.butler.app.hotel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.ActionTo;
import com.butler.app.action.ChoiceAction;
import com.butler.app.action.HoteldetailAction;
import com.butler.app.action.KakaoLoginAction;
import com.butler.app.action.PhoneProveAction;
import com.butler.app.action.ReservationViewAction;
import com.butler.app.action.SearchkeywordAction;

public class HotelFrontController extends HttpServlet{
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
		case "/hotel/searchkeyword.ho":
			try {
				transfer = new SearchkeywordAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/hotel/searchevent.ho":
			try {
				transfer = new SearchkeywordAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/hotel/reservationViewAction.ho":
			try {
				transfer = new ReservationViewAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		
//		case "/hotel/hoteldetail.ho":
//			try {
//				transfer = new HoteldetailAction().execute(req, resp);
//			} catch (Exception e) {
//				
//				e.printStackTrace();
//			}
//			break;
		case "/hotel/choice.ho":
	         try {
	            transfer = new ChoiceAction().execute(req, resp);
	         } catch (Exception e) {
	            e.printStackTrace();
	         }
	         break;
	   
	   case "/indexPage.ho":
		   System.out.println("초기페이지");
			try {
				transfer = new SearchkeywordAction().execute(req, resp);
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
