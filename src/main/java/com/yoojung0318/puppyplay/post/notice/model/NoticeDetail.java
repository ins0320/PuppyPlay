package com.yoojung0318.puppyplay.post.notice.model;

import com.yoojung0318.puppyplay.user.model.User;

public class NoticeDetail {

	private Notice notice;
	private User user;
	
	
	public Notice getNotice() {
		return notice;
	}
	public void setNotice(Notice notice) {
		this.notice = notice;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
