package com.yoojung0318.puppyplay.post.today;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TodayController {

	//오늘의 일정 화면
	@GetMapping("/post/today/view")
	public String  todayView() {
		
		return "post/today/today";
	}
}
