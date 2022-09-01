package com.yoojung0318.puppyplay.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class PostController {

		//메인화면
		@GetMapping("/post/main/view")
		public String mainView() {
			
			return "post/main";
		}
		
		//이달의 일정 화면
		@GetMapping("/post/monthly/view")
		public String monthlyView() {
			
			return "post/monthly";
		}
		//오늘의 일정 화면
		@GetMapping("/post/today/view")
		public String  todayView() {
			
			return "post/today";
		}
		
		
}
