package com.butler.app.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;

public class SearchkeywordAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String keyword = req.getParameter("keyword");
		System.out.println(keyword);
		
		HotelDTO hdto = new HotelDTO();
		HotelDAO hdao = new HotelDAO();
		
		List<HotelDTO> searchResult = hdao.SearchkeywordOK(keyword);
		if(searchResult != null) {
			System.out.println("여기니?");
		}
		else {
			System.out.println("오니?");
			PrintWriter out = resp.getWriter();
			out.print("<script>");
			out.print("alert('이메일 및 닉네임 중복검사를 진행해 주세요');");
			out.print("</script>");				
			out.print("location.href = '" + req.getContextPath() + "/app/searchView/searchView.jsp';");
			out.print("</script>");
		}

		return null;
	}
	
}
