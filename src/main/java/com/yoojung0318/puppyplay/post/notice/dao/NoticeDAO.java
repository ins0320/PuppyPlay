package com.yoojung0318.puppyplay.post.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yoojung0318.puppyplay.post.notice.model.Notice;

@Repository
public interface NoticeDAO {

	
	public int insertNotice(
			@Param("userId") int userId
			,@Param("title") String title
			,@Param("content") String content);
	
	public List<Notice> selectNoticeList();
	
	
	public Notice selectNotice(@Param("id") int id);
}
