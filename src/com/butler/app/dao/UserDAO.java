package com.butler.app.dao;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class UserDAO {
SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public boolean join(UserDTO user) {
		return sqlsession.insert("User.join",user) == 1;
	}

	public boolean checkId(String userid) {
		return (Integer)sqlsession.selectOne("User.checkId",userid) == 0;
	}

	public boolean login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<String, String>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		return (Integer)sqlsession.selectOne("User.login",datas) == 1;
	}
	
	public boolean DBEmailCheck(String user_email, String user_pw) {
	      HashMap<String, String> datas = new HashMap<String, String>();
	       datas.put("user_email", user_email);
	       datas.put("user_pw", user_pw);
	       if(sqlsession.selectOne("DBEmailCheck", datas) == null) {
	    	   return false;
	       }
	       else {
	    	   return true;	    	   
	       }
	}

	public UserDTO DBCheck(String user_email, String user_pw, int user_type) {
		      HashMap<String, String> datas = new HashMap<String, String>();
		       datas.put("user_email", user_email);
		       datas.put("user_pw", user_pw);		       		       
		return sqlsession.selectOne("DBcheck", datas);
	}
}
