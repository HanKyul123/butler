package com.butler.app.dao;

import java.util.HashMap;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class ReplyDAO {
	SqlSession sqlsession;	
	public boolean insertReply(ReplyDTO reply) {
		return sqlsession.insert("review.insertReply",reply) == 1;
	}

	public List<ReplyDTO> getReplies(int review_num) {
		return sqlsession.selectList("review.getReplies",review_num);
	}

	public boolean updateReply(int reply_num, String reply_contents) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("reply_num", reply_num);
		datas.put("reply_contents", reply_contents);
		
		return sqlsession.update("review.updateReply",datas) == 1;
	}

	public boolean removeReply(int reply_num) {
		return sqlsession.delete("review.removeReply",reply_num) == 1;
	}

}


