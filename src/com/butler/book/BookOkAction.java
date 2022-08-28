package com.butler.book;


import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.BookDAO;
import com.butler.app.dao.BookDTO;
import com.butler.app.dao.PetsDAO;
import com.butler.app.dao.PetsDTO;
import com.butler.app.dao.UserDTO;

public class BookOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		HttpSession session = req.getSession(false);
		Date nowDate = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");		
		PrintWriter out = resp.getWriter();
		int USER_NUM_FK = 0;
		BookDAO bdao = new BookDAO();
		PetsDAO pdao = new PetsDAO();
		 
		//데이터베이스에 올릴 호텔 DTO 생성부분		
		//호텔넘버를 가져오는 부분
		int BUSINESS_PLACE_NUM_FK = Integer.parseInt(req.getParameter("BUSINESS_PLACE_NUM_FK"));
		System.out.println("BUSINESS_PLACE_NUM_FK = "+ BUSINESS_PLACE_NUM_FK);
		//예약 입실일 받아오는 부분
		
		String checkInDateStr= req.getParameter("book_checkin_date") ;
		System.out.println("checkInDateStr : "+checkInDateStr);
		Date checkInDatetypeDate = sdf.parse(checkInDateStr);
		//sql에 들어갈수 있도록 형변환
		java.sql.Date book_checkin_date = java.sql.Date.valueOf(sdf.format(checkInDatetypeDate));
		System.out.println("book_checkin_date = "+ book_checkin_date);
		//예약 퇴실일 받아오는 부분
		//예약 입실일 받아오는 부분
		String checkOutDateStr= req.getParameter("book_checkout_date") ;
		System.out.println("checkOutDateStr : "+checkOutDateStr);
		Date checkOutDatetypeDate = sdf.parse(checkOutDateStr);
		//sql에 들어갈수 있도록 형변환
		java.sql.Date book_checkout_date = java.sql.Date.valueOf(sdf.format(checkOutDatetypeDate));
		System.out.println("book_checkout_date = "+ book_checkout_date);
		//예약 등록시간 만들기
		java.sql.Date book_regdate = java.sql.Date.valueOf(sdf.format(nowDate));
		System.out.println("book_regdate = "+ book_regdate);
		//비용
		int book_charge = Integer.parseInt(req.getParameter("book_charge"));
		System.out.println("book_charge = "+ book_charge);
		//예약 요청사항
		//세션에서 로그인 유저넘버 가져오기		
		
		if(session!=null) {
			UserDTO loginUser = (UserDTO)session.getAttribute("LoginUser");
			USER_NUM_FK = loginUser.getUser_num_pk();
			System.out.println("USER_NUM_FK = "+USER_NUM_FK);
		}else {
			System.out.println("BookOkAction 에서 session에 로그인된 유저의 정보가 없습니다.");
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('BookOkAction 에서 session에 로그인된 유저의 정보가 없습니다. 메인으로 돌아갑니다');");
			//location.href = '???/app/board/main.jsp';
			out.print("location.href = '"+req.getContextPath()+"/index.jsp';");
			out.print("</script>");
		}
		//데이터베이스에 올릴 PETDTO 생성부분
		
		BookDTO newbook = new BookDTO(BUSINESS_PLACE_NUM_FK, USER_NUM_FK,book_regdate, book_checkin_date, book_checkout_date, book_charge);
		
		Map<String, String[]> allParameterMap = req.getParameterMap();
		Map<String, String> petsMap = new HashMap<String, String>();
		ArrayList<PetsDTO> petsDTOs = new ArrayList<PetsDTO>();
		Iterator<String> petsIter = req.getParameterMap().keySet().stream().filter(t->t.contains("pets")).sorted().iterator();
		
		while(petsIter.hasNext()) {
			String key=petsIter.next();
			System.out.println(allParameterMap.get(key)[0]);
			petsMap.put(key, allParameterMap.get(key)[0]);
		}
		
		System.out.println("USER_NUM_FK : "+ USER_NUM_FK);

		List<BookDTO> rc = new ArrayList<BookDTO>();
		List<BookDTO> rip = new ArrayList<BookDTO>();
		List<BookDTO> ucBook = new ArrayList<BookDTO>();
		
		rc = bdao.findRC(USER_NUM_FK);
		System.out.println("bdao.findRC(USER_NUM_FK) 호출완료");
		System.out.println(rc);
		rip = bdao.findRIP(USER_NUM_FK);
		System.out.println("bdao.findRIP(USER_NUM_FK) 호출완료");
		System.out.println(rip);
		ucBook = bdao.findUCBook(USER_NUM_FK);
		System.out.println("bdao.findUCBook(USER_NUM_FK) 호출완료");
		System.out.println(ucBook);
		
		int BOOK_NUM_PK = 0;				
		if(bdao.booking(newbook)) {
			//예약 성공시
			BOOK_NUM_PK = bdao.findBookNum(newbook);	
			System.out.println(BOOK_NUM_PK);
			for (int i = 0; i < petsMap.size()/2; i++) {
				String pets_type = "pets_type"+i;			
				String pets_weight = "pets_weight"+i;
				int pets_typev = Integer.parseInt(petsMap.get(pets_type));
				String pets_pets_weightv = petsMap.get(pets_weight);		
				PetsDTO petDTO = new PetsDTO(USER_NUM_FK, pets_typev, pets_pets_weightv,BOOK_NUM_PK);
				petsDTOs.add(petDTO);
			}
			for (int i = 0; i < petsDTOs.size(); i++) {
				System.out.println(petsDTOs.get(i));
				if(pdao.insertPets(petsDTOs.get(i))) {
					System.out.println("petDto"+i+"번 방 DB입력완료");
				}else {
					System.out.println("petDto"+i+"번 방 DB입력실패");
				}
			}
			
			req.setAttribute("rc", rc);
			req.setAttribute("rip",rip);
			req.setAttribute("ucBook", ucBook);
			
			
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);
			transfer.setPath("/app/myinfo/myinfo_reservationView/myinfo_reservationView.jsp");
			return transfer;
		}else {
			//예약실패시
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(false);
			transfer.setPath("/app/error/Error.jsp");
			System.out.println("예약에 실패하였습니다.");
			return transfer;
		}
	}
}
