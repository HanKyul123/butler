package com.butler.app.dao;

public class ReviewDTO {
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
	
	
	
	
}