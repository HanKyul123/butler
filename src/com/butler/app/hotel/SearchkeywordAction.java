package com.butler.app.hotel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;

public class SearchkeywordAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String keyword = req.getParameter("keyword");
		System.out.println(keyword);
		
		return null;
	}
	
}
