package com.yoojung0318.puppyplay.post.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	//메인화면
	@GetMapping("/post/main/view")
	public String mainView() {
		
		return "post/main";
	}
}
