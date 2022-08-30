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
		BchargeDTO bcdto = new BchargeDTO();
		BchargeDAO bcdao = new BchargeDAO();
		
		
		System.out.println(req.getParameter("business_place_num_pk"));
		
		int business_place_num_pk = Integer.parseInt(req.getParameter("business_place_num_pk"));
		
		HotelDTO hotelresult = hdao.ReservationViewActionOK(business_place_num_pk);
		UserDTO ownerResult = udao.SearchOwnerResult(business_place_num_pk);
		List<BchargeDTO> animal_type = bcdao.SearchAnimaltype(business_place_num_pk);
		
		List<BchargeDTO> etc_result = bcdao.SearchEtctype(business_place_num_pk);
		List<BchargeDTO> dog_result = bcdao.SearchDogtype(business_place_num_pk);
		List<BchargeDTO> cat_result = bcdao.SearchCattype(business_place_num_pk);
		List<BchargeDTO> bird_result = bcdao.SearchBirdtype(business_place_num_pk);
		List<BchargeDTO> reptile_result = bcdao.SearchReptiletype(business_place_num_pk);
		List<BchargeDTO> amphibia_result = bcdao.SearchAmphibiatype(business_place_num_pk);
		List<BchargeDTO> rodent_result = bcdao.SearchRodenttype(business_place_num_pk);
		List<BchargeDTO> weasel_result = bcdao.SearchWeaseltype(business_place_num_pk);
		List<BchargeDTO> pig_result = bcdao.SearchPigtype(business_place_num_pk);
		List<BchargeDTO> rabbit_result = bcdao.SearchRabbittype(business_place_num_pk);

		
		if(hotelresult != null && ownerResult != null) {
	
			//결과 있음	
			HttpSession session = req.getSession(true);
			session.setAttribute("hotelresult", hotelresult);
			session.setAttribute("ownerResult", ownerResult);
			session.setAttribute("animal_type", animal_type);
			
			System.out.println("동물타입 시작");
			session.setAttribute("etc_result", etc_result);
			session.setAttribute("dog_result", dog_result);
			session.setAttribute("cat_result", cat_result);
			session.setAttribute("bird_result", bird_result);
			session.setAttribute("reptile_result", reptile_result);
			session.setAttribute("amphibia_result", amphibia_result);
			session.setAttribute("rodent_result", rodent_result);
			session.setAttribute("weasel_result", weasel_result);
			session.setAttribute("pig_result", pig_result);
			session.setAttribute("rabbit_result", rabbit_result);
			System.out.println("돌물타입 끝");
			
			List<ReviewDTO> reviewResult = hdao.ReviewResultOK(business_place_num_pk);
			if(reviewResult != null) {
//				System.out.println(reviewResult.get(0).getReview_num_pk()+"리뷰 넘");
				session.setAttribute("reviewResult", reviewResult);				
			}
			
				
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);		
			transfer.setPath(req.getContextPath()+"/app/reservationView/reservationView.jsp");
			return transfer;
		}
		return null;
	}
	 
}
