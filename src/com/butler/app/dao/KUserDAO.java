package com.butler.app.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class KUserDAO {
	
	SqlSession sqlsession;

	public KUserDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public KUserDTO kakaoDBcheck(String user_name, String user_email) {
	      HashMap<String, String> datas = new HashMap<String, String>();
	      datas.put("user_name", user_name);
	      datas.put("user_email", user_email);
	      return sqlsession.selectOne("kakaoDBcheck",datas);
	   }
	
	
	
	
//	public boolean join(KloginDTO user) {
//	      return sqlsession.insert("User.join",user) == 1;
//	   }
//
//	   public boolean checkId(String userid) {
//	      return (Integer)sqlsession.selectOne("User.checkId",userid) == 0;
//	   }
//
//	   public boolean login(String userid, String userpw) {
//	      HashMap<String, String> datas = new HashMap<String, String>();
//	      datas.put("userid", userid);
//	      datas.put("userpw", userpw);
//	      return (Integer)sqlsession.selectOne("User.login",datas) == 1;
//	   }
//	}
	
}
