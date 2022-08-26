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
		
		
		if(keyword == null || keyword == "") {
			//초기페이지
			//별점 기준 상위 5개 호텔 검색
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
		else {
			//키워드 검색
			List<HotelDTO> searchResult = hdao.SearchkeywordOK(keyword);
			
			System.out.println(searchResult);
			
			req.setAttribute("list", searchResult);
			req.setAttribute("keyword", keyword);
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);
			transfer.setPath("/app/searchView/searchView.jsp");
			return transfer;
		}
		
		
		
//		if(searchResult != null) {
//			System.out.println("여기니?");
//		}
//		else {
//			System.out.println("오니?");
//			PrintWriter out = resp.getWriter();
//			out.print("<script>");
//			out.print("alert('이메일 및 닉네임 중복검사를 진행해 주세요');");
//			out.print("</script>");				
//			out.print("location.href = '" + req.getContextPath() + "/app/searchView/searchView.jsp';");
//			out.print("</script>");
//		}
//
//		return null;
	}
	
}
