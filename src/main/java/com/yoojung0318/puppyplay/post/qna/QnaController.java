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
		List<Qna> qnaList = qnaBO.getQnaList();
		model.addAttribute("qnaList", qnaList);
		
		return "post/qna/qnaList";
	};
	

	
	//qna 작성글 확인
	@GetMapping("/post/qna/detail/view")
	public String qnadetail(@RequestParam("id") int id, Model model) {
		
		Qna qna = qnaBO.getQna(id);
		model.addAttribute("qna",qna);
		return "post/qna/qnaDetail";
	};
}
