package com.yoojung0318.puppyplay.post.qna.DAO;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yoojung0318.puppyplay.post.qna.model.Qna;

@Repository
public interface QnaDAO {

	public int insertQna(
			@Param("userId")  int userId
			,@Param("title")  String title
			,@Param("content") String content
			,@Param("answer") String answer);
	
	public int updateQna(
			@Param("postId") int postId
			,@Param("title") String title
			,@Param("content") String content
			,@Param("answer") String answer);
	
	public List<Qna> selectQnaList();
	
	public Qna selectQna(int id);
	
}
