package com.yoojung0318.puppyplay.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO {

	public int insertUser(
			@Param("loginId") String loginId
			,@Param("password") String password
			, @Param("name") String name
			, @Param("email") String email);
	
	// 전달된 loginId가 몇 개인지 리턴
	public int selectCountLoginId(@Param("loginId") String loginId);
	
}
