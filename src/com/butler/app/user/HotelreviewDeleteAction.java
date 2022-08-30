package com.butler.app.user;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;


public class HotelreviewDeleteAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		  resp.setCharacterEncoding("utf-8");
	      resp.setContentType("text/html; charset=utf-8");
	      int review_num_pk = Integer.parseInt(req.getParameter("reviewNumPk"));
	      int reply_num_pk = Integer.parseInt(req.getParameter("replyNumPk"));
	      String user_nickname = req.getParameter("user_nickname");
	      String review_nickname = req.getParameter("reviewNickname");
	      int business_place_num_pk = Integer.parseInt(req.getParameter("business_place_num_pk"));
	       
	      
	      System.out.println(review_nickname);
	      System.out.println(user_nickname);
	      System.out.println("리뷰넘"+review_num_pk);
	      System.out.println("리플넘"+reply_num_pk);
	      
	      
	      HotelDTO htdo = new HotelDTO();
	      HotelDAO hdao = new HotelDAO();
	      
	      
	       
	      if(review_nickname.equals(user_nickname)) { 
	    	  System.out.println("7");
	    	 if(reply_num_pk == 0) {
	    		hdao.ReviewDeleteResult(review_num_pk);
	    		System.out.println("8");
	    		PrintWriter out = resp.getWriter();
	    		out.print("<script>");
	    		out.print("alert('리뷰 삭제가 완료되었습니다.');");
	    		out.print("location.href = '/hotel/reservationViewAction.ho?business_place_num_pk="+business_place_num_pk+"';");
	            out.print("</script>");
	           
	      }
	      else {System.out.println("0");
	         hdao.ReplyDeleteResult(reply_num_pk);
	         hdao.ReviewDeleteResult(review_num_pk);
	         System.out.println("9");
	         PrintWriter out = resp.getWriter();
	         out.print("<script>");
	           out.print("alert('리뷰 삭제가 완료되었습니다.');");
	           out.print("location.href = '/hotel/reservationViewAction.ho?business_place_num_pk="+business_place_num_pk+"';");
	           out.print("</script>");
//	           ActionTo transfer = new ActionTo();
//			   transfer.setRedirect(false);		
//			   transfer.setPath(req.getContextPath()+"/app/reservationView/reservationView.jsp");
//			   return transfer;
	      }
	      }
	      return null;
	}

}
