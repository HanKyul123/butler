package com.butler.app.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;


import com.butler.mybatis.SqlMapConfig;

public class ReviewDAO {
SqlSession sqlsession;
	
	public ReviewDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public ReviewDTO getDetail(int reviewnum) {
		return sqlsession.selectOne("Review.getDetail",reviewnum);
	}

	public boolean insertReview(ReviewDTO review) {
		return sqlsession.insert("Review.insertBoard",review) == 1;
	}

	public int getLastNum(String userid) {
		return sqlsession.selectOne("Review.getLastNum",userid);
	}

	public void updateReadCount(int reviewnum) {
		sqlsession.update("Review.updateReadCount",reviewnum);
	}

	public boolean removeReview(int reviewnum) {
		return sqlsession.delete("Review.removeReview", reviewnum) == 1;
	}

	public boolean updateReview(ReviewDTO review) {
		return sqlsession.update("Review.updateReview",review) == 1;
	}

}








