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
 
 <!-- fullCalanser style-->
 <style> 
  /* body 스타일 */
  html, body {  
     overflow: hidden; 
     font-family: Arial, Helvetica Neue, Helvetica, sans-serif;  
     font-size: 14px;  
  } 
  /* 캘린더 위의 해더 스타일(날짜가 있는 부분) */ 
  .fc-header-toolbar { 
      padding-top: 1em;  
      padding-left: 1em;  
      padding-right: 1em;  
   }
 </style>
</head>

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
				slotMinTime: '09:00', // Day 캘린더에서 시작 시간 
				slotMaxTime: '18:00', // Day 캘린더에서 종료 시간
		
                        headerToolbar: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                        },
                        initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달) 
                        initialDate: '2022-09-06', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
                        dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
                        selectable: true,// 달력 일자 드래그 설정가능
                        expandRows: true,// 화면에 맞게 높이 재설정
                        droppable: true, // this allows things to be dropped onto the calendar
                        locale: 'ko',
                        
                        eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트      
                        	console.log(obj);      
                        },      
                        eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트    
                        	console.log(obj);    
                        },     
                        select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.  
                        	var title = prompt('Event Title:');   
                        	if (title) {  
                        		calendar.addEvent({    
                        			title: title,     
                        			start: arg.start,     
                        			end: arg.end            
                        		})         
                        	}   
                        	calendar.unselect()  
                        }
                   		,events: [        
                   			{    
                   				title: '야영',   
                   				start: '2022-09-01',   
                   			},   
                   			{         
                   				title: 'Long Event',     
                   				start: '2022-09-15',  
                   				end: '2022-09-16'     
                   			},         
                   		]
                    });
                 // 캘린더 랜더링  
                 calendar.render();
            });
        })();
</script>
</body>		
</html>