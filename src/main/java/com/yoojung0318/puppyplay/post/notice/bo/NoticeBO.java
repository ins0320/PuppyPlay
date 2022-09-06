package com.yoojung0318.puppyplay.post.notice.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojung0318.puppyplay.post.notice.dao.NoticeDAO;
import com.yoojung0318.puppyplay.post.notice.model.Notice;

@Service
public class NoticeBO {

	@Autowired
	private NoticeDAO noticeDAO;
	
	//공지 작성
	public int addNotice(int userId, String title, String content) {
		
		return noticeDAO.insertNotice(userId,title, content);
	}
	// 공지 목록 조회
	public List<Notice> getNoticeList(){
		return noticeDAO.selectNoticeList();
	}
	//공지글 디테일 조회
	// id 일치하는 공지글 조회  
	// id 값 하나만 전달되니까 type: Notice
	public Notice getNotice(int id) {
		return noticeDAO.selectNotice(id);
	}
}
