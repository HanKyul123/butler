package com.butler.book;


import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.BookDAO;
import com.butler.app.dao.BookDTO;
import com.butler.app.dao.PetsDAO;
import com.butler.app.dao.PetsDTO;
import com.butler.app.dao.UserDTO;

public class FindMyReservation implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		HttpSession session = req.getSession(false);	
		PrintWriter out = resp.getWriter();
		int USER_NUM_FK = 0;
		BookDAO bdao = new BookDAO();
		PetsDAO pdao = new PetsDAO();
		if(session!=null) {
			UserDTO loginUser = (UserDTO)session.getAttribute("LoginUser");
			USER_NUM_FK = loginUser.getUser_num_pk();
		}else {
			System.out.println("BookOkAction 에서 session에 로그인된 유저의 정보가 없습니다.");
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('BookOkAction 에서 session에 로그인된 유저의 정보가 없습니다. 메인으로 돌아갑니다');");
			//location.href = '???/app/board/main.jsp';
			out.print("location.href = '"+req.getContextPath()+"/index.jsp';");
			out.print("</script>");
		}


		List<BookDTO> rc = new ArrayList<BookDTO>();
		List<BookDTO> rip = new ArrayList<BookDTO>();
		List<BookDTO> ucBook = new ArrayList<BookDTO>();
		
		rc = bdao.findRC(USER_NUM_FK);
		System.out.println("bdao.findRC(USER_NUM_FK) 호출완료");
		System.out.println(rc);
		rip = bdao.findRIP(USER_NUM_FK);
		System.out.println("bdao.findRIP(USER_NUM_FK) 호출완료");
		System.out.println(rip);
		ucBook = bdao.findUCBook(USER_NUM_FK);
		System.out.println("bdao.findUCBook(USER_NUM_FK) 호출완료");
		System.out.println(ucBook);
		
		req.setAttribute("rc", rc);
		req.setAttribute("rip",rip);
		req.setAttribute("ucBook", ucBook);
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/myinfo/myinfo_reservationView.jsp");
		return transfer;
	
	}
}
