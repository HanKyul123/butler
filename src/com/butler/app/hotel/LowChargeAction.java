package com.butler.app.hotel;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;

public class LowChargeAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String keyword = (String) req.getAttribute("keyword");
		System.out.println("keyword");
		
		HotelDTO hdto = new HotelDTO();
		HotelDAO hdao = new HotelDAO();
		
		List<HotelDTO> LowChargeResult = hdao.LowChargeResult(keyword);
				
		if(LowChargeResult != null) {
			//결과 있음
			HttpSession session = req.getSession(true);
			session.setAttribute("list", LowChargeResult);
			req.setAttribute("keyword", keyword);
			
			List<HotelDTO> test = (List<HotelDTO>) session.getAttribute("list");
			
			System.out.println(test.get(0).getBusiness_name());
		}
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/searchView/searchView.jsp");
		return transfer;
	}
	
}
