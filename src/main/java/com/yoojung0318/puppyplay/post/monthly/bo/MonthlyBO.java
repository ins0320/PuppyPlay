package com.yoojung0318.puppyplay.post.monthly.bo;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public List<Map<String, String>> getMonthlyDetailList() {
		
		List<Map<String, String>> monthlyDetailList = new ArrayList<>();
		
		List<Monthly> monthlyList =  monthlyDAO.selectMonthlyList();
		

		
		//조회한 monthlyList를 하나씩 꺼내서 monthly로 저장 ->  map 형태로 하나씩 저장
		for(Monthly monthly : monthlyList) {
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			
			String title = monthly.getTitle();
			Date start = monthly.getStart();
			Date end = monthly.getEnd();
			
			String newStart = format.format(start);
			String newEnd = format.format(end);
			
			Map<String, String> map = new HashMap<>();
			 map.put("title", title);
			 map.put("start",  newStart);
			 map.put("end",newEnd);
			 
			 monthlyDetailList.add(map);
		}
		return monthlyDetailList;
		//return  monthlyDAO.selectMonthlyList();
	}
	public int deleteMonthly() {
		int count = monthlyDAO.deleteMonthly();
		return count;
	}
	
	
}
