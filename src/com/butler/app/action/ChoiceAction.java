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
		
		String dog = req.getParameter("dog"); 
		String cat = req.getParameter("cat");
		String bird = req.getParameter("bird");
		String reptile = req.getParameter("reptile");
		String amphibia = req.getParameter("amphibia");
		String rodent = req.getParameter("rodent");
		String weasel = req.getParameter("weasel");
		String pig = req.getParameter("pig");
		String rabbit = req.getParameter("rabbit");
		String else_pet = req.getParameter("else_pet");
		
		String hotel = req.getParameter("Hotel");
		String hospital = req.getParameter("Hospital");		
		
		System.out.println(keyword);
		System.out.println(dog);
		System.out.println(cat);
		System.out.println(bird);
		System.out.println(reptile);
		System.out.println(amphibia);
		System.out.println(rodent);
		System.out.println(weasel);
		System.out.println(pig);
		System.out.println(rabbit);
		System.out.println(else_pet);
		
		
		if(dog == null && cat == null && bird == null && reptile == null 
			&& amphibia == null && rodent == null && weasel == null && 
			pig == null && rabbit == null && else_pet == null && hotel == null && hospital == null) {
			PrintWriter out = resp.getWriter();
	        out.print("<script>");
	        out.print("location.href = '"+req.getContextPath()+"/hotel/searchkeyword.ho?keyword="+keyword+"';");
	         out.print("</script>");
		}
		else {
			HashMap<String, String> datas = new HashMap<String, String>();
			
			
			if(dog != null) {
				datas.put("pet1", "강아지");
			}
			else {
				datas.put("pet1", "없음");
			}
			
			if(cat != null) { 
				datas.put("pet2", "고양이");
			}
			else {
				datas.put("pet2", "없음");
			}
			
			if(bird != null) { 
				datas.put("pet3", "조류");
			}
			else {
				datas.put("pet3", "없음");
			}
			
			if(reptile != null) { 
				datas.put("pet4", "파충류");
			}
			else {
				datas.put("pet4", "없음");
			}
			
			if(amphibia != null) { 
				datas.put("pet5", "양서류");
			}
			else {
				datas.put("pet5", "없음");
			}
			
			if(rodent != null) { 
				datas.put("pet6", "설치류");
			}
			else {
				datas.put("pet6", "없음");
			}
			
			if(weasel != null) { 
				datas.put("pet7", "족제비과");
			}
			else {
				datas.put("pet7", "없음");
			}
			
			if(pig != null) { 
				datas.put("pet8", "돼지류");
			}
			else {
				datas.put("pet8", "없음");
			}
			
			if(rabbit != null) { 
				datas.put("pet9", "토끼류");
			}
			else {
				datas.put("pet9", "없음");
			}
			
			if(else_pet != null) {
				datas.put("pet0", "기타");
			}
			else {
				datas.put("pet0", "없음");
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
