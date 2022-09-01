package com.butler.app.action;

import java.io.PrintWriter;
import java.util.HashMap;

import java.util.List;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;

import com.butler.app.dao.HotelDAO;
import com.butler.app.dao.HotelDTO;


public class ChoiceAction implements Action{

   @Override
   public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      resp.setCharacterEncoding("utf-8");
      resp.setContentType("text/html; charset=utf-8");
      
      HttpSession session = req.getSession(true);
      HotelDAO hdao = new HotelDAO();
      HotelDTO hdto = new HotelDTO();
      
      String newKeyword = "";
      
      String keyword = req.getParameter("keyword"); 
      
      String dateOne = req.getParameter("dateOne");
      String dateTwo = req.getParameter("dateTwo");
      
      //동물
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
      
      //사업장
      String hotel = req.getParameter("Hotel");
      String hospital = req.getParameter("Hospital");      
      
      //지역
      String Seoul = req.getParameter("Seoul");
      String Busan = req.getParameter("Busan");
      String Daegu = req.getParameter("Daegu");
      String Incheon = req.getParameter("Incheon");
      String Gwangju = req.getParameter("Gwangju");
      String Daejeon = req.getParameter("Daejeon");
      String Ulsan = req.getParameter("Ulsan");
      String Sejong = req.getParameter("Sejong");
      String Gyeonggi_do = req.getParameter("Gyeonggi_do");
      String Gangwon_do = req.getParameter("Gangwon_do");
      String Chungcheongbuk_do = req.getParameter("Chungcheongbuk_do");
      String Chungcheongnam_do = req.getParameter("Chungcheongnam_do");
      String Jeollabuk_do = req.getParameter("Jeollabuk_do");
      String Jeollanam_do = req.getParameter("Jeollanam_do");
      String Gyeongsangbuk_do = req.getParameter("Gyeongsangbuk_do");
      String Gyeongsangnam_do = req.getParameter("Gyeongsangnam_do");
      String Jeju = req.getParameter("Jeju");
      
      
      
      
      //전체
      if(dog == null && cat == null && bird == null && reptile == null 
         && amphibia == null && rodent == null && weasel == null && 
         pig == null && rabbit == null && else_pet == null && hotel == null && hospital == null
         && Seoul == null &&   Busan == null && Daegu == null && Incheon == null && Gwangju == null &&
         Daejeon == null && Ulsan == null && Sejong == null && Gyeonggi_do == null && Gangwon_do == null &&
         Chungcheongbuk_do == null && Chungcheongnam_do == null && Jeollabuk_do == null && Chungcheongnam_do == null
         && Jeollabuk_do == null && Jeollanam_do == null && Gyeongsangbuk_do == null && Gyeongsangnam_do == null &&
         Jeju == null) {
         PrintWriter out = resp.getWriter();
           out.print("<script>");
           out.print("location.href = '"+req.getContextPath()+"/hotel/searchkeyword.ho?keyword="+keyword+"';");
            out.print("</script>");
      }
      else {
         
         
         
         HashMap<String, String> datas = new HashMap<String, String>();
         
         // 동물
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
            datas.put("pet6", "설치");
         }
         else {
            datas.put("pet6", "없음");
         }
         
         if(weasel != null) { 
            datas.put("pet7", "족제비");
         }
         else {
            datas.put("pet7", "없음");
         }
         
         if(pig != null) { 
            datas.put("pet8", "돼지");
         }
         else {
            datas.put("pet8", "없음");
         }
         
         if(rabbit != null) { 
            datas.put("pet9", "토끼");
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
         
         // 사업장
         if(hotel != null) {
            datas.put("category1", "1");
         }
         else {
            datas.put("category1", "없음");
         }
         
         if(hospital != null) {
            datas.put("category2", "2");
         }
         else {
            datas.put("category2", "없음");
         }
         
         
         // 지역
         if(Seoul != null) { 
            datas.put("location1", "서울");
         }
         else {
            datas.put("location1", "없음");
         }
         
         if(Busan != null) { 
            datas.put("location2", "부산");
         }
         else {
            datas.put("location2", "없음");
         }
         
         if(Daegu != null) { 
            datas.put("location3", "대구");
         }
         else {
            datas.put("location3", "없음");
         }
         
         if(Incheon != null) {
            datas.put("location4", "인천");
         }
         else {
            datas.put("location4", "없음");
         }
         
         if(Gwangju != null) {
            datas.put("location5", "광주");
         }
         else {
            datas.put("location5", "없음");
         }
         
         if(Daejeon != null) {
            datas.put("location6", "대전");
         }
         else {
            datas.put("location6", "없음");
         }
         if(Ulsan != null) { 
            datas.put("location7", "울산");
         }
         else {
            datas.put("location7", "없음");
         }
         
         if(Sejong != null) { 
            datas.put("location8", "세종");
         }
         else {
            datas.put("location8", "없음");
         }
         
         if(Gyeonggi_do != null) { 
            datas.put("location9", "경기");
         }
         else {
            datas.put("location9", "없음");
         }
         
         if(Gangwon_do != null) {
            datas.put("location10", "강원");
         }
         else {
            datas.put("location10", "없음");
         }
         
         if(Chungcheongbuk_do != null) {
            datas.put("location11", "충청북도");
         }
         else {
            datas.put("location11", "없음");
         }
         
         if(Chungcheongnam_do != null) {
            datas.put("location12", "충청남도");
         }
         else {
            datas.put("location12", "없음");
         }
         if(Jeollabuk_do != null) { 
            datas.put("location13", "전라북도");
         }
         else {
            datas.put("location13", "없음");
         }
         
         if(Jeollanam_do != null) {
            datas.put("location14", "전라남도");
         }
         else {
            datas.put("location14", "없음");
         }
         
         if(Gyeongsangbuk_do != null) {
            datas.put("location15", "경상북도");
         }
         else {
            datas.put("location15", "없음");
         }
         
         if(Gyeongsangnam_do != null) {
            datas.put("location16", "경상남도");
         }
         else {
            datas.put("location16", "없음");
         }
         if(Jeju != null) {
            datas.put("location17", "제주");
         }
         else {
            datas.put("location17", "없음");
         }
         
         boolean hashTagchk = true;
         boolean locationchk = true;
         boolean categorychk = true;
         

         //지역과 호텔 
         if(dog == null && cat == null && bird == null && reptile == null && 
            amphibia == null && rodent == null && weasel == null && 
            pig == null && rabbit == null && else_pet == null){
            hashTagchk = false;
         }
         //지역과 동물
         else if(hotel == null && hospital == null) {
            categorychk = false;
         }
         //호텔과 동물
         else if(Seoul == null &&   Busan == null && Daegu == null && Incheon == null && Gwangju == null &&
            Daejeon == null && Ulsan == null && Sejong == null && Gyeonggi_do == null && Gangwon_do == null &&
            Chungcheongbuk_do == null && Chungcheongnam_do == null && Jeollabuk_do == null && Chungcheongnam_do == null &&
            Jeollabuk_do == null && Jeollanam_do == null && Gyeongsangbuk_do == null && Gyeongsangnam_do == null && Jeju == null){
            locationchk = false;
         }
         //지역과 호텔
         if(locationchk == true && categorychk == true && hashTagchk == false) {
            System.out.println(datas);
            
            List<HotelDTO> list = hdao.locaNcateCheckOk(datas);
            
            
            

            for (Entry<String, String> entry : datas.entrySet()) {
                   if(entry.getValue() == "1") {
                      entry.setValue("호텔");
                   }
                   else if(entry.getValue() == "2"){
                      entry.setValue("동물병원");
                   }                
                   
                   if(!entry.getValue().equals("없음")) {
                      newKeyword = newKeyword+"#"+entry.getValue();
                   }
                   

               }
            System.out.println(newKeyword);
            
            
            
            session.setAttribute("list", list);
            session.setAttribute("keyword", newKeyword);
            ActionTo transfer = new ActionTo();
            transfer.setRedirect(false);      
            transfer.setPath(req.getContextPath()+"/app/searchView/searchView.jsp?keyword="+newKeyword);
            return transfer;
//            PrintWriter out = resp.getWriter();
//                 out.print("<script>");
//                 out.print("location.href = '"+req.getContextPath()+"/app/searchView/searchView.jsp';");
//                 out.print("</script>"); 
//                 
         }
         //지역과 동물
         else if(locationchk == true && categorychk == false && hashTagchk == true){
            System.out.println(datas);
            
            List<HotelDTO> list = hdao.locaNanimalOK(datas);
            
            
            
            

            for (Entry<String, String> entry : datas.entrySet()) {
                   if(entry.getValue() == "1") {
                      entry.setValue("호텔");
                   }
                   else if(entry.getValue() == "2"){
                      entry.setValue("동물병원");
                   }                
                   
                   if(!entry.getValue().equals("없음")) {
                      newKeyword = newKeyword+"#"+entry.getValue();
                   }
                   

               }
            System.out.println(newKeyword);
            
            
            session.setAttribute("list", list);
            session.setAttribute("keyword", newKeyword);
            ActionTo transfer = new ActionTo();
            transfer.setRedirect(false);      
            transfer.setPath(req.getContextPath()+"/app/searchView/searchView.jsp?keyword="+newKeyword);
            return transfer;
//            PrintWriter out = resp.getWriter();
//                 out.print("<script>");
//                 out.print("location.href = '"+req.getContextPath()+"/app/searchView/searchView.jsp';");
//                 out.print("</script>"); 
         }
         //호텔과 동물
         else if(locationchk == false && categorychk == true && hashTagchk == true){
            System.out.println(datas);
            
            List<HotelDTO> list = hdao.cateNanimalOK(datas);
            
            
            session.setAttribute("list", list);
            
            
            
            for (Entry<String, String> entry : datas.entrySet()) {
                   if(entry.getValue() == "1") {
                      entry.setValue("호텔");
                   }
                   else if(entry.getValue() == "2"){
                      entry.setValue("동물병원");
                   }                
                   
                   if(!entry.getValue().equals("없음")) {
                      newKeyword = newKeyword+"#"+entry.getValue();
                   }
                   

               }
            session.setAttribute("keyword", newKeyword);
            ActionTo transfer = new ActionTo();
            transfer.setRedirect(false);      
            transfer.setPath(req.getContextPath()+"/app/searchView/searchView.jsp?keyword="+newKeyword);
            return transfer;
//            PrintWriter out = resp.getWriter();
//                 out.print("<script>");
//                 out.print("location.href = '"+req.getContextPath()+"/app/searchView/searchView.jsp';");
//                 out.print("</script>"); 
         }
         //지역+호텔+동물
         else if(locationchk == true && categorychk == true && hashTagchk == true){
//            System.out.println(datas);
            
            List<HotelDTO> list = hdao.AllboxCheckOK(datas);
            
            
            session.setAttribute("list", list);
            
            
            

            for (Entry<String, String> entry : datas.entrySet()) {
                   if(entry.getValue() == "1") {
                      entry.setValue("호텔");
                   }
                   else if(entry.getValue() == "2"){
                      entry.setValue("동물병원");
                   }                
                   
                   if(!entry.getValue().equals("없음")) {
                      newKeyword = newKeyword+"#"+entry.getValue();
                   }
                   

               }
            System.out.println(newKeyword);
            session.setAttribute("keyword", newKeyword);
            ActionTo transfer = new ActionTo();
            transfer.setRedirect(false);      
            transfer.setPath(req.getContextPath()+"/app/searchView/searchView.jsp?keyword="+newKeyword);
            return transfer;
//            PrintWriter out = resp.getWriter();
//                 out.print("<script>");
//                 out.print("location.href = '"+req.getContextPath()+"/app/searchView/searchView.jsp';");
//                 out.print("</script>"); 
         }
         
//         System.out.println(datas);
         
         List<HotelDTO> list = hdao.choiseOK(datas);
         
         
         session.setAttribute("list", list);
         
         
         

//         for (Entry<String, String> entry : datas.entrySet()) {
//                if(entry.getValue() == "1") {
//                   entry.setValue("호텔");
//                }
//                else if(entry.getValue() == "2"){
//                   entry.setValue("동물병원");
//                }                
//                
//                if(!entry.getValue().equals("없음")) {
//                   newKeyword = newKeyword+"#"+entry.getValue();
//                }
//                
//
//            }
            System.out.println(newKeyword);
         
         session.setAttribute("keyword", newKeyword);
         ActionTo transfer = new ActionTo();
         transfer.setRedirect(false);      
         transfer.setPath(req.getContextPath()+"/app/searchView/searchView.jsp?keyword="+newKeyword);
         return transfer;
//         PrintWriter out = resp.getWriter();
//              out.print("<script>");
//              out.print("location.href = '"+req.getContextPath()+"/app/searchView/searchView.jsp';");
//              out.print("</script>"); 
         
      }
   
      return null;
   }   
}