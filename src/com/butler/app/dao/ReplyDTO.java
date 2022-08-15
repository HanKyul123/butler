package com.butler.app.dao;

public class ReplyDTO {
	private int reply_num;
	private int review_num;
	private String reply_contents;
	private String reply_regdate;
	private int business_place_num;
	
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
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
	public int getBusiness_place_num() {
		return business_place_num;
	}
	public void setBusiness_place_num(int business_place_num) {
		this.business_place_num = business_place_num;
	}
	
}
