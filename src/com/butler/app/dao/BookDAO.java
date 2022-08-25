package com.butler.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class BookDAO {
	SqlSession sqlsession;
	
	public BookDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public boolean booking(BookDTO newBook) {
		 return (Integer)sqlsession.insert("book.book",newBook) == 1;
	}
	
	public int findBookNum(BookDTO Book) {
		 return (Integer)sqlsession.selectOne("book.findBookNum",Book);
	}
	
}
