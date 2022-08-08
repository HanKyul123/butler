package com.butler.app.dao;

public class UserDTO {
	
	private int user_logintype;
	private int user_num_pk;
	private int user_status;
	private int user_identity;
	private String email;
	private String user_name;
	private String user_nickname;
	private String user_pw;
	private String user_addr;
	private String user_phone;
	
	public int getUser_logintype() {
		return user_logintype;
	}
	public void setUser_logintype(int user_logintype) {
		this.user_logintype = user_logintype;
	}
	public int getUser_num_pk() {
		return user_num_pk;
	}
	public void setUser_num_pk(int user_num_pk) {
		this.user_num_pk = user_num_pk;
	}
	public int getUser_status() {
		return user_status;
	}
	public void setUser_status(int user_status) {
		this.user_status = user_status;
	}
	public int getUser_identity() {
		return user_identity;
	}
	public void setUser_identity(int user_identity) {
		this.user_identity = user_identity;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	
}
