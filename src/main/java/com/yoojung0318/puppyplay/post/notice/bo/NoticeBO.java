package com.yoojung0318.puppyplay.post.notice.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojung0318.puppyplay.post.notice.dao.NoticeDAO;

@Service
public class NoticeBO {

	@Autowired
	private NoticeDAO noticeDAO;
	
	public int addNotice(int userId, String title, String content) {
		
		return noticeDAO.insertNotice(userId,title, content);
	}
}
