package com.butler.app.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.dao.BchargeDAO;
import com.butler.app.dao.BchargeDTO;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;
import com.butler.app.dao.ReviewDTO;
import com.butler.app.dao.UserDAO;
import com.butler.app.dao.UserDTO;

public class ReviewWriteOKAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);		
		transfer.setPath(req.getContextPath()+"/app/myinfo/myinfo_reviewView.jsp");
		return transfer;
	}
	
}
