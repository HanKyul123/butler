package com.butler.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class BchargeDAO {
	SqlSession sqlsession;
	
	public BchargeDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public List<BchargeDTO> SearchAnimaltype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchAnimaltype", business_place_num_pk);
		return list;
	}

	public List<BchargeDTO> SearchEtctype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchEtctype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchDogtype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchDogtype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchCattype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchCattype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchBirdtype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchBirdtype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchReptiletype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchReptiletype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchAmphibiatype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchAmphibiatype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchRodenttype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchRodenttype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchWeaseltype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchWeaseltype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchPigtype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchPigtype", business_place_num_pk);
		return list;
	}
	public List<BchargeDTO> SearchRabbittype(int business_place_num_pk) {
		List<BchargeDTO> list;
		list = sqlsession.selectList("Hotel.SearchRabbittype", business_place_num_pk);
		return list;
	}
	
	
	
}
