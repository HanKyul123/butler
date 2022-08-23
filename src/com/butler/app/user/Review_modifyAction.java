package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;

public class Review_modifyAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		HotelDTO hdto = new HotelDTO();
		HotelDAO hdao = new HotelDAO();
		
		
		String business_place_num_pk = req.getParameter("business_place_num_pk");
		String Mnew_review =req.getParameter("Mnew_review");
		int review_num = Integer.parseInt(req.getParameter("review_num"));
		
		System.out.println(review_num);
		System.out.println(Mnew_review);
		System.out.println(business_place_num_pk);
		
		if(hdao.Review_modifyAction(Mnew_review, review_num)) {
			System.out.println("end");
			//수정완료
			
			PrintWriter out = resp.getWriter();
	         out.print("<script>");
	         //alert('apple님 어서오세요~!');
	         out.print("alert('리뷰 수정이 완료되었습니다.');");
	         //location.href = '???/app/board/main.jsp';
	         out.print("location.href = '"+req.getContextPath()+"/hotel/reservationViewAction.ho?business_place_num_pk="+business_place_num_pk+"';");
	         out.print("</script>");
		}
		return null;
	}
	
	
}
