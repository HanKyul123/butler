package com.butler.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.UserDAO;
import com.butler.app.dao.UserDTO;

public class User_modifyAction implements Action{
	
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		
		HttpSession session = req.getSession(true);
		
//		UserDTO user = (UserDTO)session.getAttribute("LoginUser");
		
//		int user_logintype = user.getUser_logintype();
//		String user_phone = user.getUser_phone();
		
		int user_num_pk = Integer.parseInt(req.getParameter("user_num_pk"));
		int user_logintype = Integer.parseInt(req.getParameter("user_logintype"));
		
		String nickname = req.getParameter("user_nickname");
		String nickname2 = req.getParameter("user_nickname2");
		
		System.out.println(nickname2);
		System.out.println(nickname);
		
		String phone = req.getParameter("user_phone");
		String phone2 = req.getParameter("user_phone2");
		
		//기존(주소 수정없을 시)
		String user_zipcode = req.getParameter("user_zipcode");
		String user_addr = req.getParameter("user_addr");
		String user_addrdetail = req.getParameter("user_addrdetail");
		String user_addretc = req.getParameter("user_addretc");
		
		//새로 입력 주소
		String user_zipcode2 = req.getParameter("user_zipcode2");
		String user_addr2 = req.getParameter("user_addr2");
		String user_addrdetail2 = req.getParameter("user_addrdetail2");
		String user_addretc2 = req.getParameter("user_addretc2");
		
		System.out.println(user_addr);
		System.out.println(user_addrdetail);

		
//		if(udao.User_nickname_modifyAction(nickname, user_num)) {
//			System.out.println("end");
//			//수정완료
//			out.print("<script>");
//	         
//	         out.print("alert('닉네임 수정이 완료되었습니다.');");
//	         out.print("location.href = '"+req.getContextPath()+"/user/User_modifyAction.us//?user_num_pk="+user_num+"';");
//	         out.print("</script>");
//		}
		

		
//		System.out.println(user.getUser_nickname());
		
		PrintWriter out = resp.getWriter();
		
		
		user.setUser_logintype(user_logintype);
		user.setUser_num_pk(user_num_pk);
		
		user.setUser_nickname(nickname2);
		
		
		if(phone2 == null || phone2 == "") {
			user.setUser_phone(phone);		
		}
		else {
			user.setUser_phone(phone2);
		}
		
		
		if(user_zipcode2 == null || user_zipcode2 == "" || user_addr2 == null || user_addr2 == "") {
			// 주소 수정 안됨
			System.out.println("에헤이 조졌네 이거~");
			user.setUser_zipcode(user_zipcode);
			user.setUser_addr(user_addr);
			user.setUser_addretc(user_addretc);
			user.setUser_addrdetail(user_addrdetail);
		}
		else {
			//신규 주소
			System.out.println("에반데");
			user.setUser_zipcode(user_zipcode2);
			user.setUser_addr(user_addr2);
			user.setUser_addretc(user_addretc2);
			user.setUser_addrdetail(user_addrdetail2);
		}
	
		
		
		if(udao.User_modifyAction(user)) {
	         System.out.println("end");
				//수정완료
	         
	         UserDTO useruser = (UserDTO)udao.User_select_pk(user_num_pk);
	         session.setAttribute("LoginUser", useruser);
	         
				out.print("<script>");
		        out.print("alert('내 정보 수정이 완료되었습니다.');");
		        out.print("location.href = '/app/myinfo/myinfoView/myinfoView.jsp';");
		        out.print("</script>");
	         
	       }
	      
		else { 
			 if (user.getUser_nickname() != null) {
		            System.out.println("7");
		            out.print("<script>");
		            
		            out.print("alert('닉네임 중복검사를 진행해 주세요');");
		            out.print("</script>");            
		        }
		}
		 return null;	
	}

	
	}
