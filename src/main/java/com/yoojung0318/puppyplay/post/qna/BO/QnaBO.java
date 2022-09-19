package com.yoojung0318.puppyplay.post.qna.BO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojung0318.puppyplay.post.qna.DAO.QnaDAO;
import com.yoojung0318.puppyplay.post.qna.model.Qna;
import com.yoojung0318.puppyplay.post.qna.model.QnaDetail;
import com.yoojung0318.puppyplay.user.bo.UserBO;
import com.yoojung0318.puppyplay.user.model.User;

@Service
public class QnaBO {

	@Autowired
	private UserBO userBO;
	@Autowired
	private	QnaDAO qnaDAO;
	
	//qna 작성
	public int addQna(int userId, String title, String content){
		return qnaDAO.insertQna(userId, title, content);
	};
	
	//qna 답글작성(update)
		public int replyQna( int postId, String answer) {
			return qnaDAO.updateQna( postId, answer);
		}
	//qna detail 리스트
	public Qna getQna(int id){
		return qnaDAO.selectQna(id);
	}
	
	//user정보 가져오기 ( user 테이블 조회 위해)
	//user와 qna 1:1 매칭시키기
	public List<QnaDetail> getQnaList(){
		
		List<QnaDetail> qnaDetailList = new ArrayList<>();
		List<Qna> qnaList = qnaDAO.selectQnaList(); // qna 리스트
		
		for(Qna qna : qnaList) {
			
			int userId = qna.getUserId();
			
			// user 테이블 조회
			// userBo를 통해서 userId 와 일치하는 사용자 정보 조회
			User user = userBO.getUserById(userId);

			// 게시글과 사용자 정보를 합치는 과정
			QnaDetail qnaDetail  = new QnaDetail();
			qnaDetail.setQna(qna);
			qnaDetail.setUser(user);
			
			//합친 정보 detailList에 넣기
			qnaDetailList.add(qnaDetail);
		}
		return qnaDetailList;
	}
	
}
