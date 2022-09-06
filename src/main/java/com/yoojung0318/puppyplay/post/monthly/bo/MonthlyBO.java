package com.yoojung0318.puppyplay.post.monthly.bo;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.yoojung0318.puppyplay.post.monthly.dao.MonthlyDAO;

@Service()
public class MonthlyBO {

	@Autowired
	private MonthlyDAO monthlyDAO;
	
	public int addMonthly(int userId, String title, Date start,Date end) {
		
		return monthlyDAO.insertMonthly(userId, title, start, end);
	}
	
	public int selectMonthly(int userId, String title, Date start,Date end) {
			
			return monthlyDAO.selectMonthly(userId, title, start, end);
		}
	
	
	
}
