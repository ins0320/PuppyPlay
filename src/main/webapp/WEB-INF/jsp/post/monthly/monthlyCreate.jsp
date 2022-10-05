<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>이달의일정 관리자 입력창</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"> </script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
<link rel="stylesheet" href="/static/css/style.css" type="text/css">

<!-- fullcalendar CDN --> 
 <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' /> 
 <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script> 
  <!-- fullcalendar 언어 CDN --> 
 <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
 


<body>

		<div class="wrap">
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<div class="header mb-2">
				 이번달 일정 입니다.
				 
			</div>
			<!-- calendar --> 
			<div class="padding:30px">
				<!-- calendar 태그 -->  
				<div id='calendar-container'>  
					<div id='calendar' class="calendar"></div> 
				</div>
				<!-- /calendar 태그 -->
			</div>
			<!-- /calendar -->
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		</div>

		<script>
	 
		(function(){  
			$(function(){     
				// calendar element 취득   
				var calendarEl = $('#calendar')[0];   
				// full-calendar 생성하기  
				var calendar = new FullCalendar.Calendar(calendarEl, {     
					height: '500px', // calendar 높이 설정    
					expandRows: true, // 화면에 맞게 높이 재설정
					selectable: true,
					droppable: true,
			
					customButtons: {
					    deleteButton: {
					      text: '삭제하기',
					      click: function(arg) {
					        calendar.removeAllEvents();
					        alert("일정이 모두삭제되었습니다.");
				            $.ajax({
								 type:"post",
								 url: "/post/monthly/delete",		            	 
						         success:function(data){
						         	location.reload();			      
						          },
						         error:function(){
						         	alert("일정 삭제 에러");
						         }                	
				          	}); 
					      }
					    }
					},
	               	headerToolbar: {
	                    left: 'prev,next today',
	                    center: 'title',
	                    right: 'listWeek, deleteButton'
	                },
	                locale: 'ko',
	                
	          	
	                select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.  
	                	var title = prompt('Event Title:');    

		                if (title) {  
		                		calendar.addEvent({    
		                			title: title,     
		                			start: arg.start,     
		                			end: arg.end            
		                		})         
		                	}  
		                $.ajax({
		                	 type:"post",
		                	 url: "/post/monthly/create",
		                	 data:{"title":title,"start":arg.start,"end":arg.end},
		                	 success:function(data){
		                		 if(data.result == "success"){		                			 
		                			 location.reload();

		                		 }else{
		                			 alert("일정 작성 실패");
		                		 }
		                	 },
		                	 error:function(){
		                		 alert("일정 작성 에러");
		                	 }                	
		                });
	                	
	                }
	           		,events: function(arg, successCallback, failureCallback) {
	           			$.ajax({
	           				type: "get",
	        				url: "/post/monthly/list",
	        				success: function(data) {
	        					successCallback(data);
		                	 },
		                	 error:function(){
		                		 alert("일정 로드 에러");
		                	 }                		        				
	        			});
	        		},
	        		
	            });
	       	// 캘린더 랜더링  
	        calendar.render();
	     });
	  })();
	</script>
	</body>		
</html>