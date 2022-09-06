package com.yoojung0318.puppyplay.post.monthly.dao;

import java.util.Date;


import org.apache.ibatis.annotations.Param;

import org.springframework.stereotype.Repository;



@Repository
public interface MonthlyDAO {

	
	public int insertMonthly(
			@Param("userId") int userId
			,@Param("title") String title
			,@Param("start") Date start
			,@Param("end") Date end);
	
	public int selectMonthly(
			@Param("userId") int userId
			,@Param("title") String title
			,@Param("start") Date start
			,@Param("end") Date end );
	
}
		