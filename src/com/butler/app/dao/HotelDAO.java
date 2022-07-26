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

		if (keyword == null || keyword.equals("")) {
			// 결과 없을때
			System.out.println("1");
			list = sqlsession.selectList("Hotel.Searchkeyword", keyword);
		} else {
			// 결과있을때
//		datas.put("keyword",keyword);
			System.out.println("2");
			list = sqlsession.selectList("Hotel.Searchkeyword", keyword);
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

	public HotelDTO ReservationViewActionOK(int num) {
		return sqlsession.selectOne("reservationViewActionOK", num);
	}

	public List<ReviewDTO> ReviewResultOK(int num) {
		List<ReviewDTO> list;
		list = sqlsession.selectList("Hotel.ReviewResultOK", num);
		return list;
	}

	public boolean Review_modifyAction(String Mnew_review, int review_num) {
		 HashMap<String, Object> datas = new HashMap<String, Object>();
	      datas.put("Mnew_review", Mnew_review);
	      datas.put("review_num", review_num);
		return sqlsession.update("Hotel.Review_modifyAction", datas) == 1;
	}

	public List<HotelDTO> choiseOK(HashMap<String, String> datas) {
		List<HotelDTO> list;
		list = sqlsession.selectList("Hotel.choiseOK", datas);
		return list;
	} 

	public List<HotelDTO> recommandResult(int topnum) {
		return sqlsession.selectList("Hotel.recommandResult", topnum);
	}

	public List<HotelDTO> LowChargeResult(String keyword) {
		List<HotelDTO> list;
		list = sqlsession.selectList("Hotel.LowChargeResult", keyword);
		return list;
	}

	public List<HotelDTO> HangulResult(String keyword) {
		List<HotelDTO> list;
		list = sqlsession.selectList("Hotel.HangulResult", keyword);
		return list;
	}
	 public boolean ReviewDeleteResult(int review_num_pk) {
	      return sqlsession.delete("Hotel.ReviewDeleteResult",review_num_pk) == 1;
	      
	   }

	   public boolean ReplyDeleteResult(int reply_num_pk) {
	      return sqlsession.delete("Hotel.ReplyDeleteResult",reply_num_pk) == 1;
	   }
    //지역+카테
	public List<HotelDTO> locaNcateCheckOk(HashMap<String, String> datas) {
		List<HotelDTO> list;
		list = sqlsession.selectList("Hotel.locaNcateCheckOk", datas);
		return list;
	}
    //지역+동물
	public List<HotelDTO> locaNanimalOK(HashMap<String, String> datas) {
		List<HotelDTO> list;
		list = sqlsession.selectList("Hotel.locaNanimalOK", datas);
		return list;
	}
    //카테+동물
	public List<HotelDTO> cateNanimalOK(HashMap<String, String> datas) {
		List<HotelDTO> list;
		list = sqlsession.selectList("Hotel.cateNanimalOK", datas);
		return list;
	}
	//지역+카테+동물
	public List<HotelDTO> AllboxCheckOK(HashMap<String, String> datas) {
		List<HotelDTO> list;
		list = sqlsession.selectList("Hotel.AllboxCheckOK", datas);
		return list;
	}
		
	}

	
	
