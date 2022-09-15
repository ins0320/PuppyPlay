package com.yoojung0318.puppyplay.post.qna.BO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojung0318.puppyplay.post.qna.DAO.QnaDAO;
import com.yoojung0318.puppyplay.post.qna.model.Qna;

@Service
public class QnaBO {

	@Autowired
	private	QnaDAO qnaDAO;
	
	//qna 작성
	public int addQna(int userId, String title, String content, String answer){
		return qnaDAO.insertQna(userId, title, content,answer);
	};
	
	//qna 답글작성(update)
		public int replyQna( int postId, String answer) {
			return qnaDAO.updateQna( postId, answer);
		}
	//qna 리스트
	public List<Qna> getQnaList(){
		return qnaDAO.selectQnaList();
	};
	
	//qna detail 리스트
	public Qna getQna(int id){
		return qnaDAO.selectQna(id);
	}
}
