package com.butler.app.dao;

import java.util.HashMap;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class ReplyDAO {
	SqlSession sqlsession;	
	public boolean insertReply(ReplyDTO reply) {
		return sqlsession.insert("Review.insertReply",reply) == 1;
	}

	public List<ReplyDTO> getReplies(int reviewdnum) {
		return sqlsession.selectList("Review.getReplies",reviewdnum);
	}

	public boolean updateReply(int replynum, String replycontents) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("replynum",replynum);
		datas.put("replycontents", replycontents);
		
		return sqlsession.update("Review.updateReply",datas) == 1;
	}

	public boolean removeReply(int replynum) {
		return sqlsession.delete("Review.removeReply",replynum) == 1;
	}

}


