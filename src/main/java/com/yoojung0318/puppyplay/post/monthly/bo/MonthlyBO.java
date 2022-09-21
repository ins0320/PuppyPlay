package com.yoojung0318.puppyplay.post.monthly.bo;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojung0318.puppyplay.post.monthly.dao.MonthlyDAO;
import com.yoojung0318.puppyplay.post.monthly.model.Monthly;

@Service()
public class MonthlyBO {

	@Autowired
	private MonthlyDAO monthlyDAO;
	
	public int addMonthly(String title, Date start,Date end) {
		
		return monthlyDAO.insertMonthly(title, start, end);
	}
	
	public List<Monthly> getMonthlyList() {
		return monthlyDAO.selectMonthlyList();
	}
	
	
}
