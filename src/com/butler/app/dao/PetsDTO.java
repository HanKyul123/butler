package com.butler.app.dao;

public class PetsDTO {

	int PETS_NUM_PK;
	int USER_NUM_FK;
	int pets_type;
	int pets_weight;
	int BOOK_NUM_FK;

	public PetsDTO() {
	}

	public PetsDTO(int PETS_NUM_PK, int USER_NUM_FK, int pets_type, int pets_weight, int BOOK_NUM_FK) {
		PETS_NUM_PK = this.PETS_NUM_PK;
		USER_NUM_FK = this.USER_NUM_FK;
		pets_type = this.pets_type;
		pets_weight = this.pets_weight;
		BOOK_NUM_FK = this.BOOK_NUM_FK;
	}
	
	public PetsDTO(int USER_NUM_FK, int pets_type, int pets_weight) {
		USER_NUM_FK = this.USER_NUM_FK;
		pets_type = this.pets_type;
		pets_weight = this.pets_weight;
	}
	

	public int getPETS_NUM_PK() {
		return PETS_NUM_PK;
	}

	public void setPETS_NUM_PK(int pETS_NUM_PK) {
		PETS_NUM_PK = pETS_NUM_PK;
	}

	public int getUSER_NUM_FK() {
		return USER_NUM_FK;
	}

	public void setUSER_NUM_FK(int uSER_NUM_FK) {
		USER_NUM_FK = uSER_NUM_FK;
	}

	public int getPets_type() {
		return pets_type;
	}

	public void setPets_type(int pets_type) {
		this.pets_type = pets_type;
	}

	public int getPets_weight() {
		return pets_weight;
	}

	public void setPets_weight(int pets_weight) {
		this.pets_weight = pets_weight;
	}

	public int getBOOK_NUM_FK() {
		return BOOK_NUM_FK;
	}

	public void setBOOK_NUM_FK(int bOOK_NUM_FK) {
		BOOK_NUM_FK = bOOK_NUM_FK;
	}

}
