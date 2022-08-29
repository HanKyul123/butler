package com.butler.app.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;
import com.butler.app.dao.ReviewDTO;
import com.butler.app.dao.ReviewFileDAO;
import com.butler.app.dao.ReviewFileDTO;
import com.butler.app.dao.UserDAO;
import com.butler.app.dao.UserDTO;

public class ReservationViewAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		System.out.println("1");
		HotelDAO hdao = new HotelDAO();
		HotelDTO hdto = new HotelDTO();
		UserDTO udto = new UserDTO();
		UserDAO udao = new UserDAO();
		ReviewDTO rdto = new ReviewDTO();
		ReviewFileDTO rfdto = new ReviewFileDTO();
		ReviewFileDAO rfdao = new ReviewFileDAO();
		
		
		System.out.println(req.getParameter("business_place_num_pk"));
		
		int business_place_num_pk = Integer.parseInt(req.getParameter("business_place_num_pk"));
		
		HotelDTO hotelresult = hdao.ReservationViewActionOK(business_place_num_pk);
		UserDTO ownerResult = udao.SearchOwnerResult(business_place_num_pk);
		if(hotelresult != null && ownerResult != null) {
	
			//결과 있음	
			HttpSession session = req.getSession(true);
			session.setAttribute("hotelresult", hotelresult);
			session.setAttribute("ownerResult", ownerResult);
			
			List<ReviewDTO> reviewResult = hdao.ReviewResultOK(business_place_num_pk);
			
			System.out.println(reviewResult);
			
			if(reviewResult != null) {
//				System.out.println(reviewResult.get(0).getReview_num_pk()+"리뷰 넘");
				session.setAttribute("reviewResult", reviewResult);				
			}
			
//			List<ReviewFileDTO> fileResult = rfdao.ReviewGetFile(business_place_num_pk);
//			if(fileResult != null) {
//				System.out.println(fileResult.get(0).getFile_review_orgname()+"db 결과임");
//				session.setAttribute("RFResult", fileResult);
//				
//			}
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);		
			transfer.setPath(req.getContextPath()+"/app/reservationView/reservationView.jsp");
			return transfer;
		}
		return null;
	}
	
}
