package com.butler.app.dao;

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

	
	if(sqlsession.selectList("Hotel.Searchkeyword",keyword) == null) {
		return null;	
	}
	else {
		list = sqlsession.selectList("Hotel.Searchkeyword",keyword);
		return list;
	}

}

	
	
	

   
  
	
}