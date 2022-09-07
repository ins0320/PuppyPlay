package com.yoojung0318.puppyplay.post.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QnaController {

	@GetMapping("/post/qna/create/view")
	public String qnaCreate() {
		
		return "post/qna/qnaCreate";
	};
	
	@GetMapping("/post/qna/list/view")
	public String qnaList() {
		
		return "post/qna/qnaList";
	};
	
	@GetMapping("/post/qna/detail/view")
	public String qnadetail() {
		
		return "post/qna/qnaCreate";
	};
}
