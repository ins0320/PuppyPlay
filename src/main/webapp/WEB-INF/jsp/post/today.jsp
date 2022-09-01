<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 일정</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
  	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<div class="today-title mt-4">
			<h3><b>오늘의 일정</b></h3>
			Puppy play의 하루는 이렇게 흘러갑니다.
		</div>
		<section class="mt-5">
			<div class="bg-white d-flex justify-content-center">
			
				<!-- today schedule 표 -->
				<div>
					<div class="d-flex mt-3">
						<div class="today-schuedule-time border d-flex">
							<i class="bi bi-clock ml-3"></i>
							<div class="text p-2 ml-3">
								08:00 ~ 09:00
							</div>
						</div>
						<div class="today-schuedule-text bg-white border">
							<div class="text ml-3">
								등원
							</div>
						</div>
					</div>	
					<div class="d-flex mt-3">
						<div class="today-schuedule-time border d-flex">
							<i class="bi bi-clock ml-3"></i>
							<div class="text p-2 ml-3">
								09:00 ~ 10:00
							</div>
						</div>
						<div class="today-schuedule-text bg-white border">
							<div class="text ml-3">
								적응시간
							</div>
						</div>
					</div>	
					<div class="d-flex mt-3">
						<div class="today-schuedule-time border d-flex">
							<i class="bi bi-clock ml-3"></i>
							<div class="text p-2 ml-3">
								10:00 ~ 12:00
							</div>
						</div>
						<div class="today-schuedule-text bg-white border">
							<div class="text ml-3">
								개별확인 및 자유시간
							</div>
						</div>
					</div>	
					<div class="d-flex mt-3">
						<div class="today-schuedule-time border d-flex">
							<i class="bi bi-clock ml-3"></i>
							<div class="text p-2 ml-3">
								12:00 ~ 13:00
							</div>
						</div>
						<div class="today-schuedule-text bg-white border">
							<div class="text ml-3">
								점심 및 낮잠시간
							</div>
						</div>
					</div>	
					<div class="d-flex mt-3">
						<div class="today-schuedule-time border d-flex">
							<i class="bi bi-clock ml-3"></i>
							<div class="text p-2 ml-3">
								13:00 ~ 17:00
							</div>
						</div>
						<div class="today-schuedule-text bg-white border">
							<div class="text ml-3">
								플레이타임(월별 변동 有)
							</div>
						
						</div>
					</div>	
					<div class="d-flex mt-3">
						<div class="today-schuedule-time  d-flex">
							<i class="bi bi-clock ml-3"></i>
							<div class="text p-2 ml-3">
								17:00 ~ 18:00
							</div>
						</div>
						<div class="today-schuedule-text bg-white border">
							<div class="text ml-3">
								하원
							</div>
						</div>
					</div>	
					
				</div>	
				<!-- /today schedule 표 -->
				<div class="playtime mt-3 p-3 ml-3 ">
					<h2 class="text-center mt-3"><b>playtime 이란?</b></h2>
					<div class="p-3 mt-5 ml-3">
					
						○ 산책
						<br>
						○ 미용
						<br>
						○ 훈련
						<br>
						○ 야외활동
						<br><br>
						등을 진행하는 시간입니다.
					
					</div>
				</div>
				
			</div>	
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	</div>
</body>
</html>