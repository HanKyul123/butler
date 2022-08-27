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
	
	public BookDTO findBook(int BOOK_NUM_PK) {
		 return (BookDTO)sqlsession.selectOne("book.findBook",BOOK_NUM_PK);
	}

	public List findRIP(int USER_NUM_FK) {
		 return sqlsession.selectList("book.rip",USER_NUM_FK);
	}
	public List findUCBook(int USER_NUM_FK) {
		 return sqlsession.selectList("book.ucbook",USER_NUM_FK);
	}
	public List findRC(int USER_NUM_FK) {
		 return sqlsession.selectList("book.rc",USER_NUM_FK);
	}
}
