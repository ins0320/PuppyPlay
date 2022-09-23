package com.yoojung0318.puppyplay.post.monthly.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yoojung0318.puppyplay.post.monthly.model.Monthly;



@Repository
public interface MonthlyDAO {

	
	public int insertMonthly(
			@Param("title") String title
			,@Param("start") Date start
			,@Param("end") Date end);
	
	public int deleteMonthly(
			@Param("title") String title
			,@Param("start") Date start
			,@Param("end") Date end);
	
	public List<Monthly> selectMonthlyList();
}
		