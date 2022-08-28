package com.butler.app.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReviewWritingAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		
		
		
		

		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/myinfo_write_reviewView/myinfo_write_reviewView.jsp");
		return transfer;
	}
}
