package com.butler.app.dao;

import java.sql.Date;
import java.sql.Timestamp;

public class MyinfoReviewDTO {
	private int review_num_pk;
	private int business_place_num_fk;
	private String review_contents;
	private String review_nickname;
	private String review_regdate;
	private String review_file_systemname;
	private String review_file_orgname;
	
	private int reply_num_pk;
	private int review_num_fk;
	private String reply_contents;
	private String reply_regdate;
	
	private int BOOK_NUM_PK;
	private int BUSINESS_PLACE_NUM_FK;
	private String business_name;
	private int USER_NUM_FK;
	private int book_status;
	private Timestamp book_regdate;
	private Date book_checkin_date;
	private Date book_checkout_date;
	private int book_charge;
	private String book_request;
	
	private int business_place_num_pk;
	private String business_zipcode;
	private String business_addr;
	private String business_addrdetail;
	private String business_addretc;
	private String business_phone;
	private String business_email;
	private int    business_category;
	private String business_hashtag;
	private String business_main_intro;
	private String business_workplace_detail;
	private String business_workplace_rule;
	private int    business_workplace_score;
	private int    user_num_fk;
	private int    business_pick_animal_type;
	private int    business_min_charge ;
	
	
	
	public int getReview_num_pk() {
		return review_num_pk;
	}
	public void setReview_num_pk(int review_num_pk) {
		this.review_num_pk = review_num_pk;
	}
	public int getBusiness_place_num_fk() {
		return business_place_num_fk;
	}
	public void setBusiness_place_num_fk(int business_place_num_fk) {
		this.business_place_num_fk = business_place_num_fk;
	}
	public String getReview_contents() {
		return review_contents;
	}
	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}
	public String getReview_nickname() {
		return review_nickname;
	}
	public void setReview_nickname(String review_nickname) {
		this.review_nickname = review_nickname;
	}
	public String getReview_regdate() {
		return review_regdate;
	}
	public void setReview_regdate(String review_regdate) {
		this.review_regdate = review_regdate;
	}
	public String getReview_file_systemname() {
		return review_file_systemname;
	}
	public void setReview_file_systemname(String review_file_systemname) {
		this.review_file_systemname = review_file_systemname;
	}
	public String getReview_file_orgname() {
		return review_file_orgname;
	}
	public void setReview_file_orgname(String review_file_orgname) {
		this.review_file_orgname = review_file_orgname;
	}
	public int getReply_num_pk() {
		return reply_num_pk;
	}
	public void setReply_num_pk(int reply_num_pk) {
		this.reply_num_pk = reply_num_pk;
	}
	public int getReview_num_fk() {
		return review_num_fk;
	}
	public void setReview_num_fk(int review_num_fk) {
		this.review_num_fk = review_num_fk;
	}
	public String getReply_contents() {
		return reply_contents;
	}
	public void setReply_contents(String reply_contents) {
		this.reply_contents = reply_contents;
	}
	public String getReply_regdate() {
		return reply_regdate;
	}
	public void setReply_regdate(String reply_regdate) {
		this.reply_regdate = reply_regdate;
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
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
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
	public Timestamp getBook_regdate() {
		return book_regdate;
	}
	public void setBook_regdate(Timestamp book_regdate) {
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
	public int getBusiness_place_num_pk() {
		return business_place_num_pk;
	}
	public void setBusiness_place_num_pk(int business_place_num_pk) {
		this.business_place_num_pk = business_place_num_pk;
	}
	public String getBusiness_zipcode() {
		return business_zipcode;
	}
	public void setBusiness_zipcode(String business_zipcode) {
		this.business_zipcode = business_zipcode;
	}
	public String getBusiness_addr() {
		return business_addr;
	}
	public void setBusiness_addr(String business_addr) {
		this.business_addr = business_addr;
	}
	public String getBusiness_addrdetail() {
		return business_addrdetail;
	}
	public void setBusiness_addrdetail(String business_addrdetail) {
		this.business_addrdetail = business_addrdetail;
	}
	public String getBusiness_addretc() {
		return business_addretc;
	}
	public void setBusiness_addretc(String business_addretc) {
		this.business_addretc = business_addretc;
	}
	public String getBusiness_phone() {
		return business_phone;
	}
	public void setBusiness_phone(String business_phone) {
		this.business_phone = business_phone;
	}
	public String getBusiness_email() {
		return business_email;
	}
	public void setBusiness_email(String business_email) {
		this.business_email = business_email;
	}
	public int getBusiness_category() {
		return business_category;
	}
	public void setBusiness_category(int business_category) {
		this.business_category = business_category;
	}
	public String getBusiness_hashtag() {
		return business_hashtag;
	}
	public void setBusiness_hashtag(String business_hashtag) {
		this.business_hashtag = business_hashtag;
	}
	public String getBusiness_main_intro() {
		return business_main_intro;
	}
	public void setBusiness_main_intro(String business_main_intro) {
		this.business_main_intro = business_main_intro;
	}
	public String getBusiness_workplace_detail() {
		return business_workplace_detail;
	}
	public void setBusiness_workplace_detail(String business_workplace_detail) {
		this.business_workplace_detail = business_workplace_detail;
	}
	public String getBusiness_workplace_rule() {
		return business_workplace_rule;
	}
	public void setBusiness_workplace_rule(String business_workplace_rule) {
		this.business_workplace_rule = business_workplace_rule;
	}
	public int getBusiness_workplace_score() {
		return business_workplace_score;
	}
	public void setBusiness_workplace_score(int business_workplace_score) {
		this.business_workplace_score = business_workplace_score;
	}
	public int getUser_num_fk() {
		return user_num_fk;
	}
	public void setUser_num_fk(int user_num_fk) { 
		this.user_num_fk = user_num_fk;
	}
	public int getBusiness_pick_animal_type() {
		return business_pick_animal_type;
	}
	public void setBusiness_pick_animal_type(int business_pick_animal_type) {
		this.business_pick_animal_type = business_pick_animal_type;
	}
	public int getBusiness_min_charge() {
		return business_min_charge;
	}
	public void setBusiness_min_charge(int business_min_charge) {
		this.business_min_charge = business_min_charge;
	}
	
}
