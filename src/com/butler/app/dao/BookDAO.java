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

	public List findRIP(int USER_NUM_FK) {
		 return sqlsession.selectList("book.findRIP",USER_NUM_FK);
	}
	public List findUCBook(int USER_NUM_FK) {
		 return sqlsession.selectList("book.findUCBook",USER_NUM_FK);
	}
	public List findRC(int USER_NUM_FK) {
		 return sqlsession.selectList("book.findRC",USER_NUM_FK);
	}
}
