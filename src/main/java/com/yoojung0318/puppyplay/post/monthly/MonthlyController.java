package com.yoojung0318.puppyplay.post.monthly;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.yoojung0318.puppyplay.post.monthly.bo.MonthlyBO;

@Controller
public class MonthlyController {

	@Autowired
	private MonthlyBO monthlyBO;
	
	//이달의 일정 입력 화면
	@GetMapping("/post/monthly/create/view")
	public String monthlyInput(){
		
		return "post/monthlyCreate";
	};
	
	
	
	//이달의 일정 리스트 화면
	@GetMapping("/post/monthly/list/view")
	public String monthlyList(Model model
			,HttpServletRequest request) {
		
		//session 통해서 userId 얻어오기		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		//데이터 조회해서 model 객체에 값 전달
	//	List<MonthlyDetail> monthlyDetailList = monthlyBO.getMonthlyList(userId);
	//	model.addAttribute("monthlyList", monthlyDetailList);
		
		return "post/monthlyList";
	}
	
	
}
