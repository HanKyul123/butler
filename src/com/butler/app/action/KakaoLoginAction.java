package com.butler.app.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.butler.app.action.Action;
import com.butler.app.action.ActionTo;
import com.butler.app.dao.KUserDAO;
import com.butler.app.dao.KUserDTO;

public class KakaoLoginAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		System.out.println("1");

		KUserDTO user = new KUserDTO();
		KUserDAO kdao = new KUserDAO();
		
		user.setNickname(req.getParameter("nickname"));
		
		System.out.println(req.getParameter("nickname"));
		
		user.setEmail(req.getParameter("email"));
		user.setGender(req.getParameter("gender"));
		user.setAge_range(req.getParameter("age_range"));
		user.setBirthday(req.getParameter("birthday"));
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if(kdao.join(user)) {
			System.out.println("2");
			transfer.setPath("/logintestOKpage.jsp");
		}
		else {
			//localhost:9090/????
			System.out.println("3");
			transfer.setPath("/logintestOKpage.jsp");
		}
		
		return transfer;
		
	}

//	@PostMapping("/kakao-login")
//	public String loginWithKakao(KakaoLoginForm form){
//		log.info("카카오 로그인 인증정보:"+ form);
//		
//		User user = User.builder()
//					.email(form.getEmail())
//					.name(form.getName())
//					.img(form.getImg())
//					.loginType(KAKAO_LOGIN_TYPE)
//					.build();
//		
//		User savedUser = userService.loginWithKakao(user);
//		
//		// 저장된 회원정보가 없으면 전달받은 회원정보를 세션에 저장, 있으면 기존 정보 저장.
//		if(savedUser != null) {
//			SessionUtils.addAttribute("LOGIN_USER", savedUser);
//		}else {
//			SessionUtils.addAttribute("LOGIN_USER", user);
//		}
//		
//		return "redirect:/";
//	}

}
