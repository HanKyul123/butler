package com.butler.app.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class HotelDAO {

   SqlSession sqlsession;
   
   public HotelDAO() {
      sqlsession = SqlMapConfig.getFactory().openSession(true);
   }

public List<HotelDTO> SearchkeywordOK(String keyword) {
	List<HotelDTO> list;
	if(keyword == null || keyword.equals("")) {
		//결과 없을때
		System.out.println("1");
		list = sqlsession.selectList("Hotel.Searchkeyword",keyword);
	}
	else {
		//결과있을때
//		datas.put("keyword",keyword);
		System.out.println("2");
		list = sqlsession.selectList("Hotel.Searchkeyword",keyword);
	}
	return list;
	
	
	
//	if(sqlsession.selectList("Hotel.Searchkeyword",keyword) == null) {
//		return null;	
//	}
//	else {
//		list = sqlsession.selectList("Hotel.Searchkeyword",keyword);
//		return list;
//	}

}

	
	
	

   
  
	
}