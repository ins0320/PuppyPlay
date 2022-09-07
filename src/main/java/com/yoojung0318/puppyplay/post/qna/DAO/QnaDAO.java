package com.yoojung0318.puppyplay.post.qna.DAO;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface QnaDAO {

	public int insertQna(
			@Param("userId")  int userId
			,@Param("title")  String title
			,@Param("content") String content
			,@Param("answer") String answer);
	
}
