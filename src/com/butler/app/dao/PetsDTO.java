package com.butler.app.dao;

public class PetsDTO {

	int PETS_NUM_PK;
	int USER_NUM_FK;
	int pets_type;
	String pets_name;
	String pets_weight;
	int BOOK_NUM_FK;

	public PetsDTO() {
	}

	public PetsDTO(int PETS_NUM_PK, int USER_NUM_FK, int pets_type, String pets_weight, int BOOK_NUM_FK) {
		this.PETS_NUM_PK = PETS_NUM_PK;
		this.USER_NUM_FK = USER_NUM_FK;
		this.pets_type = pets_type;
		this.pets_weight = pets_weight;
		this.BOOK_NUM_FK = BOOK_NUM_FK;
	}
	
	public PetsDTO(int USER_NUM_FK, int pets_type, String pets_weight,int BOOK_NUM_FK) {
		this.USER_NUM_FK = USER_NUM_FK;
		this.pets_type = pets_type;
		this.pets_weight = pets_weight;
		this.BOOK_NUM_FK = BOOK_NUM_FK;
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
	
	public String getPets_name() {
		return pets_name;
	}

	public void setPets_name(String pets_name) {
		this.pets_name = pets_name;
	}

	public String getPets_weight() {
		return pets_weight;
	}

	public void setPets_weight(String pets_weight) {
		this.pets_weight = pets_weight;
	}

	public int getBOOK_NUM_FK() {
		return BOOK_NUM_FK;
	}

	public void setBOOK_NUM_FK(int bOOK_NUM_FK) {
		BOOK_NUM_FK = bOOK_NUM_FK;
	}
	
	@Override
	public String toString() {
		String message = "";

		message = 	"PETS_NUM_PK : " + PETS_NUM_PK+
					"\nUSER_NUM_FK : " + USER_NUM_FK+
					"\npets_type : " + pets_type+
					"\npets_weight : " + pets_weight+
					"\nBOOK_NUM_FK : " + BOOK_NUM_FK;
		
		return message;
	}

}
