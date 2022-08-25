package com.butler.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class BookDAO {
	SqlSession sqlsession;
	
	public BookDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public boolean SearchkeywordOK(BookDTO newBook) {

		
		
		return false;
	
	
	}
}
