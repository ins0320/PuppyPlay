package com.yoojung0318.puppyplay.post.monthly;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yoojung0318.puppyplay.post.monthly.bo.MonthlyBO;
import com.yoojung0318.puppyplay.post.monthly.model.Monthly;

@Controller
public class MonthlyController {
	
	@Autowired
	private MonthlyBO monthlyBO;
	
	//이달의 일정 작성 화면
	@GetMapping("/post/monthly/create/view")
	public String monthlyInput(){
		
		return "post/monthly/monthlyCreate";
	};
	
	//이달의 일정 화면
		@GetMapping("/post/monthly/view")
		public String monthlyList(){
			
			List<Monthly> monthlyList = monthlyBO.getMonthlyList();
			return "post/monthly/monthlyList";
		};
	
}