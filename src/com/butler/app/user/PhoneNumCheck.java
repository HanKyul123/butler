package com.butler.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;

public class PhoneNumCheck implements Action{

   @Override
   public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      String phone_num = req.getParameter("phone_num");
//      기능구현 해야함~ 
      
      
      
      
      if(true) {
         //잘들어왔으면
         
      }
      else {
         //에러
      }
      
      
      return null;
   }
   
}