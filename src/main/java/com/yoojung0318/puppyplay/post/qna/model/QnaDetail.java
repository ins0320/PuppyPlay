package com.yoojung0318.puppyplay.post.qna.model;

import com.yoojung0318.puppyplay.user.model.User;

public class QnaDetail {

	//User 정보 가져오기
	//qna 작성한 작성자 username 가져오기 위해
	private User user;
	private Qna qna;
	
	
	public Qna getQna() {
		return qna;
	}

	public void setQna(Qna qna) {
		this.qna = qna;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
