package com.butler.app.dao;

public class ReviewDTO {
	private int review_num_pk;
	private int business_place_num_fk;
	private String review_contents;
	private String review_nickname;
	private String review_regdate;
	

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
}