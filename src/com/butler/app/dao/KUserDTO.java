package com.butler.app.dao;

public class KUserDTO {
		
		private int user_num;
		private String nickname;
		private String email;
		private String gender;
		private String age_range;
		private String birthday;
		
		public int getUser_num() {
			return user_num;
		}
		public void setUser_num(int user_num) {
			this.user_num = user_num;
		}
		public String getNickname() {
			return nickname;
		}
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getAge_range() {
			return age_range;
		}
		public void setAge_range(String age_range) {
			this.age_range = age_range;
		}
		public String getBirthday() {
			return birthday;
		}
		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}
		
}
