package com.yoojung0318.puppyplay.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	//로그인 화면
	@GetMapping("/user/signin/view")
	public String signinView() {
		return "user/signin";
	}
	
}
