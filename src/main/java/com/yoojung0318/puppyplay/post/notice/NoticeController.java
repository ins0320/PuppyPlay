package com.yoojung0318.puppyplay.post.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yoojung0318.puppyplay.post.notice.bo.NoticeBO;
import com.yoojung0318.puppyplay.post.notice.model.Notice;

@Controller
public class NoticeController {

	@Autowired
	private NoticeBO noticeBO;
	
		//공지사항 입력 화면
		@GetMapping("/post/notice/create/view")
		public String noticeCreate(){
			
			return "post/notice/noticeCreate";
		};
		
		
		//공지사항 리스트
		@GetMapping("post/notice/list/view")
		public String noticeList(
				HttpServletRequest request, 
				Model model) {
			
			HttpSession session = request.getSession();
						
			List<Notice> noticeList = noticeBO.getNoticeList();
			model.addAttribute("noticeList",noticeList);
			
			return "post/notice/noticeList";
		}
		//공지사항 세부 페이지
		// post의 id를 전달박도, 해당하는 메모를 조회하여, model에 추가한다.	
		@GetMapping("/post/notice/detail/view")
		public String postDetail(@RequestParam("id")int id, Model model) {
			
			Notice notice = noticeBO.getNotice(id);
			model.addAttribute("notice" , notice);
			return "post/notice/noticeDetail";
		}
		
}