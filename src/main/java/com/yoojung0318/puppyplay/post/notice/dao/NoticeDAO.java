package com.yoojung0318.puppyplay.post.notice.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface NoticeDAO {

	
	public int insertNotice(
			@Param("userId") int userId
			,@Param("title") String title
			,@Param("context") String context);
}
