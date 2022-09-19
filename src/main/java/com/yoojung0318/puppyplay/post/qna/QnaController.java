package com.yoojung0318.puppyplay.post.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yoojung0318.puppyplay.post.qna.BO.QnaBO;
import com.yoojung0318.puppyplay.post.qna.model.Qna;
import com.yoojung0318.puppyplay.post.qna.model.QnaDetail;

@Controller
public class QnaController {

	@Autowired
	private QnaBO qnaBO;
	//qna 작성
	@GetMapping("/post/qna/create/view")
	public String qnaCreate() {
		
		return "post/qna/qnaCreate";
	};
	
	//qna 댓글 작성
	@GetMapping("/post/qna/reply/create/view")
	public String qnaReplyCreate() {
		return "post/qna/qnaRepeatCreate";
	}
	
	
	//qna 리스트
	@GetMapping("/post/qna/list/view")
	public String qnaList(
			HttpServletRequest request
			,Model model
			) {
		
		HttpSession session = request.getSession();
		List<QnaDetail> qnaList = qnaBO.getQnaList();
		model.addAttribute("qnaList", qnaList);
		
		return "post/qna/qnaList";
	};
	

	
	//qna 세부 페이지
	// post의 id를 전달방고, id에 해당하는  qna를 조회하여, model에 추가한다.
	@GetMapping("/post/qna/detail/view")
	public String qnadetail(@RequestParam("id") int id, Model model) {
		
		Qna qna = qnaBO.getQna(id);
		model.addAttribute("qna",qna);
		return "post/qna/qnaDetail";
	};
}
