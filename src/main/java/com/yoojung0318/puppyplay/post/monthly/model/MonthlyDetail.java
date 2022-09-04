package com.yoojung0318.puppyplay.post.monthly.model;

import com.yoojung0318.puppyplay.user.model.User;

public class MonthlyDetail {

	//User 정보
	private User user;
	//Monthly 정보
	private Monthly monthly;
	
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Monthly getMonthly() {
		return monthly;
	}
	public void setMonthly(Monthly monthly) {
		this.monthly = monthly;
	}
}
