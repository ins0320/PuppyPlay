package com.yoojung0318.puppyplay.post.monthly;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MonthlyController {

	
	//이달의 일정 화면
	@GetMapping("/post/monthly/list/view")
	public String monthlyView() {
				
		return "post/monthlyList";
	}
	
	
}
