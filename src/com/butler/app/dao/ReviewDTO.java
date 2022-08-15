package com.butler.app.dao;

public class ReviewDTO {
	private int review_num;
	private int business_place_num;
	private String review_contents;
	private String review_nickname;
	private String review_regdate;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public int getBusiness_place_num() {
		return business_place_num;
	}
	public void setBusiness_place_num(int business_place_num) {
		this.business_place_num = business_place_num;
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