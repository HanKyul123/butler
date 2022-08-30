package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.HotelDAO;

public class ReviewDeleteAction implements Action{

   @Override
   public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      resp.setCharacterEncoding("utf-8");
      resp.setContentType("text/html; charset=utf-8");
      int review_num_pk = Integer.parseInt(req.getParameter("reviewNumPk"));
      int reply_num_pk = Integer.parseInt(req.getParameter("replyNumPk"));
      
      System.out.println("리뷰넘"+review_num_pk);
      System.out.println("리플넘"+reply_num_pk);
      
      HotelDAO hdao = new HotelDAO();
      
      
      if(reply_num_pk == 0) {
         hdao.ReviewDeleteResult(review_num_pk);

         PrintWriter out = resp.getWriter();
         out.print("<script>");
           out.print("alert('리뷰 삭제가 완료되었습니다.');");
           out.print("location.href = '/user/myinfoRevieViewAction.us';");
           out.print("</script>");
           
      }
      else {
         hdao.ReplyDeleteResult(reply_num_pk);
         hdao.ReviewDeleteResult(review_num_pk);
         
         PrintWriter out = resp.getWriter();
         out.print("<script>");
           out.print("alert('리뷰 삭제가 완료되었습니다.');");
           out.print("location.href = '/user/myinfoRevieViewAction.us';");
           out.print("</script>");
      }
      
//      ActionTo transfer = new ActionTo();
//      transfer.setRedirect(false);
//      transfer.setPath("/user/myinfoRevieViewAction.us");
//      return transfer;
      

//      if(hdao.ReplyDeleteResult(reply_num_pk)) {
//            //리플도 삭제 완료
//      }
//      
//      if(hdao.ReviewDeleteResult(review_num_pk)) {
//      //리뷰는 삭제 -> 리플 있으면 삭제
//         out.print("<script>");
//           out.print("alert('리뷰 삭제가 완료되었습니다.');");
//           out.print("</script>");
//         
//         ActionTo transfer = new ActionTo();
//         transfer.setRedirect(false);
//         transfer.setPath("/user/myinfoRevieViewAction.us");
//         return transfer;
//      }
      
      return null;
   }
   
}