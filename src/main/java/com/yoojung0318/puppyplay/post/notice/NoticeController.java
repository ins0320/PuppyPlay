package com.yoojung0318.puppyplay.post.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {

	//공지사항 입력 화면
		@GetMapping("/post/notice/create/view")
		public String noticeCreate(){
			
			return "post/noticeCreate";
		};
		
		
	//공지사항 리스트
		@GetMapping("post/notice/list/view")
		public String noticeList() {
			return "post/noticeList";
		}
}
