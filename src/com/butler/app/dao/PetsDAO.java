package com.butler.app.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.butler.mybatis.SqlMapConfig;

public class PetsDAO {
SqlSession sqlsession;
	
	public PetsDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public boolean insertPets(PetsDTO pet) {
		 return (Integer)sqlsession.insert("pet.insertPet",pet) == 1;
	}
	
	
	
}
