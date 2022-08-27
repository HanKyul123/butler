package com.butler.book;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.BookDAO;
import com.butler.app.dao.BookDTO;
import com.butler.app.dao.PetsDAO;
import com.butler.app.dao.UserDTO;

public class ReservationDetailViewAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		HttpSession session = req.getSession(false);	
		PrintWriter out = resp.getWriter();
		BookDAO bdao = new BookDAO();
		int USER_NUM_FK = 0;
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
		
		BookDTO book = new BookDTO();
		int BOOK_NUM_PK = Integer.parseInt(req.getParameter("BOOK_NUM_PK"));
		book = bdao.findBook(BOOK_NUM_PK);
		
		req.setAttribute("book",book);
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/myinfo/myinfo_reservation_detailView.jsp");
		return transfer;
	
	}
}
