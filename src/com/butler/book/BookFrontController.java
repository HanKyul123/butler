package com.butler.book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.ActionTo;

public class BookFrontController extends HttpServlet{
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
			case "/book/BookOk.book":
			try {
				transfer = new BookOkAction().execute(req, resp);		
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
			case "/book/findMyReservation.book":
				try {
					transfer = new FindMyReservation().execute(req, resp);		
				} catch (Exception e) {
					e.printStackTrace();
				}
			break;
			
			case "/book/goReservationDetailView.book":
				try {
					transfer = new ReservationDetailViewAction().execute(req, resp);		
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
