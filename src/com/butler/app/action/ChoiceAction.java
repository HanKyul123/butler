package com.butler.app.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;

import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;
import com.butler.app.dao.ReviewDTO;
import com.butler.app.dao.UserDTO;

public class ChoiceAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		HttpSession session = req.getSession(true);
		HotelDAO hdao = new HotelDAO();
		HotelDTO hdto = new HotelDTO();
		
		
		String keyword = req.getParameter("keyword"); 
		
		String dateOne = req.getParameter("dateOne");
		String dateTwo = req.getParameter("dateTwo");
		
		String cat = req.getParameter("cat");
		String dog = req.getParameter("dog");
		String else_pet = req.getParameter("else_pet");
		
		String hotel = req.getParameter("Hotel");
		String hospital = req.getParameter("Hospital");		
		
		System.out.println(cat);
		System.out.println(dog);
		System.out.println(else_pet);
		
		
		if(cat == null && dog == null && else_pet == null && hotel == null && hospital == null) {
			PrintWriter out = resp.getWriter();
	        out.print("<script>");
	        out.print("location.href = '"+req.getContextPath()+"/hotel/searchkeyword.ho?keyword="+keyword+"';");
	         out.print("</script>");
		}
		else {
			HashMap<String, String> datas = new HashMap<String, String>();
			
			if(cat != null) { 
				datas.put("pet1", "고양이");
			}
			else {
				datas.put("pet1", "없음");
			}
			
			if(dog != null) {
				datas.put("pet2", "강아지");
			}
			else {
				datas.put("pet2", "없음");
			}
			
			
			if(else_pet != null) {
				datas.put("pet3", "그 외");
			}
			else {
				datas.put("pet3", "없음");
			}
			
			if(hotel != null) {
				datas.put("category1", "1");
			}
			else {
				datas.put("category2", "없음");
			}
			
			if(hospital != null) {
				datas.put("category2", "2");
			}
			else {
				datas.put("category2", "없음");
			}
			System.out.println(datas);
			
			List<HotelDTO> list = hdao.choiseOK(datas);
			
			
			session.setAttribute("list", list);
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);		
			transfer.setPath(req.getContextPath()+"/app/searchView/searchView.jsp");
			return transfer;
			
		}
	return null;
	}
        
}
