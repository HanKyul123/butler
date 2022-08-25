package com.butler.app.dao;

import java.sql.Date;

public class BookDTO {
	int BOOK_NUM_PK;
	int BUSINESS_PLACE_NUM_FK;
	int USER_NUM_FK;
	int book_status;
	Date book_regdate;
	Date book_checkin_date;
	Date book_checkout_date;
	int book_charge;
	String book_request;

	public BookDTO() {
	}

	public BookDTO(int BOOK_NUM_PK, int BUSINESS_PLACE_NUM_FK, int USER_NUM_FK, int book_status, Date book_regdate,
			Date book_checkin_date, Date book_checkout_date, int book_charge, String book_request) {
		this.BOOK_NUM_PK = BOOK_NUM_PK;
		this.BUSINESS_PLACE_NUM_FK = BUSINESS_PLACE_NUM_FK;
		this.USER_NUM_FK = USER_NUM_FK;
		this.book_status = book_status;
		this.book_regdate = book_regdate;
		this.book_checkin_date = book_checkin_date;
		this.book_checkout_date = book_checkout_date;
		this.book_charge = book_charge;
		this.book_request = book_request;
	}
	
	public BookDTO(int BUSINESS_PLACE_NUM_FK, int USER_NUM_FK, Date book_regdate,
		Date book_checkin_date, Date book_checkout_date, int book_charge) {
		this.BUSINESS_PLACE_NUM_FK = BUSINESS_PLACE_NUM_FK;
		this.USER_NUM_FK = USER_NUM_FK;
		this.book_regdate = book_regdate;
		this.book_checkin_date = book_checkin_date;
		this.book_checkout_date = book_checkout_date;
		this.book_charge = book_charge;
	}
	
	

	public int getBOOK_NUM_PK() {
		return BOOK_NUM_PK;
	}

	public void setBOOK_NUM_PK(int bOOK_NUM_PK) {
		BOOK_NUM_PK = bOOK_NUM_PK;
	}

	public int getBUSINESS_PLACE_NUM_FK() {
		return BUSINESS_PLACE_NUM_FK;
	}

	public void setBUSINESS_PLACE_NUM_FK(int bUSINESS_PLACE_NUM_FK) {
		BUSINESS_PLACE_NUM_FK = bUSINESS_PLACE_NUM_FK;
	}

	public int getUSER_NUM_FK() {
		return USER_NUM_FK;
	}

	public void setUSER_NUM_FK(int uSER_NUM_FK) {
		USER_NUM_FK = uSER_NUM_FK;
	}

	public int getBook_status() {
		return book_status;
	}

	public void setBook_status(int book_status) {
		this.book_status = book_status;
	}

	public Date getBook_regdate() {
		return book_regdate;
	}

	public void setBook_regdate(Date book_regdate) {
		this.book_regdate = book_regdate;
	}

	public Date getBook_checkin_date() {
		return book_checkin_date;
	}

	public void setBook_checkin_date(Date book_checkin_date) {
		this.book_checkin_date = book_checkin_date;
	}

	public Date getBook_checkout_date() {
		return book_checkout_date;
	}

	public void setBook_checkout_date(Date book_checkout_date) {
		this.book_checkout_date = book_checkout_date;
	}

	public int getBook_charge() {
		return book_charge;
	}

	public void setBook_charge(int book_charge) {
		this.book_charge = book_charge;
	}

	public String getBook_request() {
		return book_request;
	}

	public void setBook_request(String book_request) {
		this.book_request = book_request;
	}

	@Override
	public String toString() {
		String message = "";
		message = "BOOK_NUM_PK = " + BOOK_NUM_PK + "BUSINESS_PLACE_NUM_FK = " + BUSINESS_PLACE_NUM_FK + "USER_NUM_FK = "
				+ USER_NUM_FK + "book_status = " + book_status + "book_regdate = " + book_regdate
				+ "book_checkin_date = " + book_checkin_date + "book_checkout_date = " + book_checkout_date
				+ "book_charge = " + book_charge + "book_request = " + book_request;
		return message;
	}

}
