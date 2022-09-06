 package com.yoojung0318.puppyplay.post.notice;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yoojung0318.puppyplay.post.notice.bo.NoticeBO;

@Repository
 public class NoticeRestController {

	@Autowired
	NoticeBO noticeBO;
	
	//공지사항 입력
	@PostMapping("post/notice/create")
	public Map<String, String> createNotice(
			@RequestParam("title") String title
			,@RequestParam("content") String content
			,HttpServletRequest request ){
	
		HttpSession session =request.getSession();
		int userId = (Integer) session.getAttribute("userId");
		
		int count = noticeBO.addNotice(userId, title, content);
		
		Map<String, String> result =  new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	};
	
}
