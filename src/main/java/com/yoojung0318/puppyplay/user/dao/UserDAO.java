package com.yoojung0318.puppyplay.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yoojung0318.puppyplay.user.model.User;

@Repository
public interface UserDAO {

	public int insertUser(
			@Param("loginId") String loginId
			,@Param("password") String password
			, @Param("name") String name
			, @Param("email") String email);
	
	// 전달된 loginId가 몇 개인지 리턴
	public int selectCountLoginId(@Param("loginId") String loginId);
	
	//loginId, password 조회
	public User selectUser(
			@Param("loginId")String loginId
			,@Param("password")String password);
	
	//id로 정보 조회
	public User selectUserById(@Param("id") int id);
	
}
