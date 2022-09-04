package com.yoojung0318.puppyplay.post.monthly;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yoojung0318.puppyplay.post.monthly.bo.MonthlyBO;
import com.yoojung0318.puppyplay.user.bo.UserBO;

public class MonthlyRestController {

	@Autowired
	private UserBO userBO;
	
	@Autowired
	private MonthlyBO monthlyBO;
	
	
	//이달의 일정 입력 api
	@PostMapping("/post/monthly/create/view")
	public Map<String, String> createMonthly(
			@RequestParam("title") String title
			,@RequestParam("date") Date date
			,HttpServletRequest request){
					
			//글쓴 사람 정보를 같이 저장하기 위해서
			// 로그인된 사용자의 id(userId - User 테이블의 PK)를 세션을 통해 얻어내고, 이를 사용
			HttpSession session = request.getSession();
			int userId =(Integer)session.getAttribute("userId");
			int count = monthlyBO.addMonthly(userId,title,date);
			
			Map<String, String> result = new HashMap<>();
			if(count == 1) {
				result.put("result", "success");
			}else {
				result.put("result", "fail");
			}	
			
			return result;	
	} 
}
