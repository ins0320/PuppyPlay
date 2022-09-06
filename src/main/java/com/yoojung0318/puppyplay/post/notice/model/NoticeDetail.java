package com.yoojung0318.puppyplay.post.notice.model;


import com.yoojung0318.puppyplay.user.model.User;

public class NoticeDetail {

		//User 정보
		private User user;
		//Notice 정보
		private Notice notice;
		
		
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public Notice getNotice() {
			return notice;
		}
		public void setNotice(Notice notice) {
			this.notice = notice;
		}
		
		
}
