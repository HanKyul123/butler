package com.butler.app.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.dao.BookDAO;
import com.butler.app.dao.BookDTO;

public class GoReviewWritingAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		BookDAO bdao = new BookDAO();
		int BOOK_NUM_PK =Integer.parseInt(req.getParameter("BOOK_NUM_PK"));
		BookDTO book = bdao.findBook(BOOK_NUM_PK);
		
		req.setAttribute("book", book);
	
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/myinfo_write_reviewView/myinfo_write_reviewView.jsp");
		return transfer;
	}
}
