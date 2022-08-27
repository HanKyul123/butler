package com.butler.app.hotel;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;

public class HomePagedAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HotelDTO hdto = new HotelDTO();
		HotelDAO hdao = new HotelDAO();
		
		int topnum = 5; 
		
		List<HotelDTO> recommandResult = hdao.recommandResult(topnum);
		
		System.out.println(recommandResult);
		
		req.setAttribute("recommandResult", recommandResult);
		
		System.out.println("초기 2");
		
		ActionTo transfer = new ActionTo(); 
		transfer.setRedirect(false);
		transfer.setPath("/home.jsp");
		return transfer;
	}
	
}
