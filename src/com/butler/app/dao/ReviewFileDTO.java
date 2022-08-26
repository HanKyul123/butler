package com.butler.app.dao;

public class ReviewFileDTO {
	private int review_num_fk;
	private int business_place_num_fk;
	private String file_review_systemname;
	private String file_review_orgname;
 
	public int getReview_num_fk() {
		return review_num_fk;
	}
	public void setReview_num_fk(int review_num_fk) {
		this.review_num_fk = review_num_fk;
	}
	public int getBusiness_place_num_fk() {
		return business_place_num_fk;
	}
	public void setBusiness_place_num_fk(int business_place_num_fk) {
		this.business_place_num_fk = business_place_num_fk;
	}
	public String getFile_review_systemname() {
		return file_review_systemname;
	}
	public void setFile_review_systemname(String file_review_systemname) {
		this.file_review_systemname = file_review_systemname;
	}
	public String getFile_review_orgname() {
		return file_review_orgname;
	}
	public void setFile_review_orgname(String file_review_orgname) {
		this.file_review_orgname = file_review_orgname;
	}
	
	
	
}
