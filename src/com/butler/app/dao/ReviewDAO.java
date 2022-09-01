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
	
	public boolean insertReview(ReviewDTO review) {
		return sqlsession.insert("review.insertReview",review) == 1;
	}

	public boolean removeReview(int review_num) {
		return sqlsession.delete("review.removeReview", review_num) == 1;
	}

	public boolean updateReview(int review_num, String review_contents) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("review_num",review_num);
		datas.put("review_contents", review_contents);
		
		return sqlsession.update("review.updateReply",datas) == 1;
	}
	public List<MyinfoReviewDTO> MyinfoReviewResult(String user_nickname, int user_num_pk) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_nickname",user_nickname);
		datas.put("user_num_pk", user_num_pk);
	    List<MyinfoReviewDTO> list;
	    list = sqlsession.selectList("Hotel.MyinfoReviewResult",datas);
	    return list;
	   }

	public List findMyReview(String user_nickname) {
		return   sqlsession.selectList("review.findMyReview",user_nickname);
	}
}








