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
 
        var calendar = null;
        var initialLocaleCode = 'ko';
        var localeSelectorEl = document.getElementById('locale-selector');
 
            $(document).ready(function (){
 
                    var calendarEl = document.getElementById('calendar');
                    calendar = new FullCalendar.Calendar(calendarEl, {
                    	height: '500px', 
                    	initialDate: '2022-02-07',
                        initialView: 'timeGridWeek',
                        headerToolbar: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                        },
                        navLinks: true,
                        editable: true,
                        selectable: true,// 화면에 맞게 높이 재설정
                        expandRows: true,
                        droppable: true, // this allows things to be dropped onto the calendar
 
                        // eventAdd: function () { // 이벤트가 추가되면 발생하는 이벤트
                        //     // console.log()
                        // },
 
                        /**
                         * 드래그로 이벤트 수정하기
                         */
                        eventDrop: function (info){
                            console.log(info);
                            if(confirm("'"+ info.event.title +"' 매니저의 일정을 수정하시겠습니까 ?")){
                            }
                            var events = new Array(); // Json 데이터를 받기 위한 배열 선언
                            var obj = new Object();
 
                            obj.title = info.event._def.title;
                            obj.start = info.event._instance.range.start;
                            obj.end = info.event._instance.range.end;
                            events.push(obj);
 
                            console.log(events);
                            $(function deleteData() {
                                $.ajax({
                                    url: "/full-calendar/calendar-admin-update",
                                    method: "PATCH",
                                    dataType: "json",
                                    data: JSON.stringify(events),
                                    contentType: 'application/json',
                                })
                            })
                        },
 
                        /**
                         * 드래그로 이벤트 추가하기
                         */
                         elect: function (arg) { // 캘린더에서 이벤트를 생성할 수 있다.
                        	 
                             var title = prompt('일정을 입력해주세요.');
                             if (title) {
                                 calendar.addEvent({
                                     title: title,
                                     start: arg.start,
                                     end: arg.end,
                                     allDay: arg.allDay,
                                 })
                             }
  
                             var events = new Array(); // Json 데이터를 받기 위한 배열 선언
                                 var obj = new Object();     // Json 을 담기 위해 Object 선언
  
                                 obj.title = title; // 이벤트 명칭  ConsoleLog 로 확인 가능.
                                 obj.start = arg.start; // 시작
                                 obj.end = arg.end; // 끝
                                 events.push(obj);
  
                             var jsondata = JSON.stringify(events);
                             console.log(jsondata);
  
                             $(function saveData(jsondata) {
                                 $.ajax({
                                     url: "/full-calendar/calendar-admin-update",
                                     method: "POST",
                                     dataType: "json",
                                     data: JSON.stringify(events),
                                     contentType: 'application/json',
                                 })
                                     .done(function (result) {
                                         // alert(result);
                                     })
                                     .fail(function (request, status, error) {
                                          // alert("에러 발생" + error);
                                     });
                                 calendar.unselect()
                             });
                         },
 
                        /**
                         * 이벤트 선택해서 삭제하기
                         */
                        eventClick: function (info){
                            if(confirm("'"+ info.event.title +"' 매니저의 일정을 삭제하시겠습니까 ?")){
                                // 확인 클릭 시
                                info.event.remove();
                            }
 
                            console.log(info.event);
                            var events = new Array(); // Json 데이터를 받기 위한 배열 선언
                            var obj = new Object();
                                obj.title = info.event._def.title;
                                obj.start = info.event._instance.range.start;
                                events.push(obj);
 
                            console.log(events);
                            $(function deleteData(){
                                $.ajax({
                                    url: "/full-calendar/calendar-admin-update",
                                    method: "DELETE",
                                    dataType: "json",
                                    data: JSON.stringify(events),
                                    contentType: 'application/json',
                                })
                            })
                        },
                        // eventRemove: function (obj) { // 이벤트가 삭제되면 발생하는 이벤트
                        //
                        // },
                        
                    });
                    calendar.render();
        });
 
 
</script>
</body>		
</html>