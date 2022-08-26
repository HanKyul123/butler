package com.butler.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class ReviewFileDAO {

SqlSession sqlsession;
	
	public ReviewFileDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public boolean ModifyFile(ReviewDTO file) {
		return sqlsession.update("File.updateFile", file) == 1;
	}

	public List<ReviewFileDTO> ReviewGetFile(int business_place_num_pk) {
		List<ReviewFileDTO> list;
		list = sqlsession.selectList("File.ReviewGetFile", business_place_num_pk);
		return list;
		
	}
	
	
	
}
