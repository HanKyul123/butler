package com.butler.app.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class UserDAO {

	SqlSession sqlsession;

	public UserDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public boolean join(UserDTO user) {
		return sqlsession.insert("login.join", user) == 1;
	}

	public boolean checkId(String userid) {
		return (Integer) sqlsession.selectOne("login.checkId", userid) == 0;
	}

	public boolean login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<String, String>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		return (Integer) sqlsession.selectOne("login.login", datas) == 1;
	}

	public boolean DBEmailCheck(String user_email, String user_pw) {
		HashMap<String, String> datas = new HashMap<String, String>();
		datas.put("user_email", user_email);
		datas.put("user_pw", user_pw);
		if (sqlsession.selectOne("login.DBEmailCheck", datas) == null) {
			return false;
		} else {
			return true;
		}
	}

	public UserDTO DBCheck(String user_email, String user_pw, int user_type) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_email", user_email);
		datas.put("user_pw", user_pw);
		datas.put("user_logintype", user_type);
		return sqlsession.selectOne("login.DBcheck", datas);
	}

	public boolean UserJoin(UserDTO user) {
		System.out.println("3");
		System.out.println(user.getUser_addr());

		try {
			if (sqlsession.insert("login.UserJoin", user) == 1) {
				System.out.println("4");
				return true;
			}
		} catch (Exception e) {

			System.out.println("5");

			return false;
		}

		return false;
	}

	public boolean Checkemail(String user_email) {
		System.out.println("4-2-1");
		try {
			return (Integer) sqlsession.selectOne("login.checkemail", user_email) == 0;

		} catch (Exception e) {
			return false;
		}
	}

	public boolean CheckNickname(String user_nickname) {
		System.out.println("4-2-1");
		try {
			return (Integer) sqlsession.selectOne("login.checknickname", user_nickname) == 0;

		} catch (Exception e) {
			return false;
		}
	}

	public UserDTO SearchOwnerResult(int num) {
		return sqlsession.selectOne("Hotel.SearchOwnerResult", num);
	}

	public boolean User_modifyAction(UserDTO user) {
		System.out.println("85");
		return sqlsession.update("login.User_modifyAction", user) == 1;
	}

	public UserDTO User_select_pk(int user_num_pk) {
		return sqlsession.selectOne("login.User_select_pk", user_num_pk);
	}

	public boolean UserResignOK(UserDTO user) {
		return sqlsession.update("login.UserResignOK", user) == 1;
	}

	public boolean User_modifyPwOk(UserDTO user) {
		System.out.println("86");
		return sqlsession.update("login.User_modifyPwOk", user) == 1;
	}

}
