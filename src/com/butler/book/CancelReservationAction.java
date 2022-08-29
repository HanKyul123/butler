package com.butler.book;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.BookDAO;
import com.butler.app.dao.BookDTO;

public class CancelReservationAction implements Action{
	
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		BookDTO book = new BookDTO();
		BookDAO bdao = new BookDAO();
		
		int BOOK_NUM_PK=Integer.parseInt(req.getParameter("BOOK_NUM_PK"));
		book = bdao.findBook(BOOK_NUM_PK);
		if(bdao.cancelReservation(BOOK_NUM_PK)) {
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('예약이 취소되었습니다');");
			out.print("</script>");
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);
			transfer.setPath("/book/findMyReservation.book");
			return transfer;
			
		}else {
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('예약이 취소에 실패하였습니다.');");
			out.print("</script>");
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);
			transfer.setPath("/book/findMyReservation.book");
			return transfer;
			
		}
	}
}
