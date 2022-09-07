package com.yoojung0318.puppyplay.post.qna.BO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojung0318.puppyplay.post.qna.DAO.QnaDAO;

@Service
public class QnaBO {

	@Autowired
	private	QnaDAO qnaDAO;
	//qna작성
	public int addQna(int userId, String title, String content, String answer){
		return qnaDAO.insertQna(userId, title, content, answer);
	};
	
}
