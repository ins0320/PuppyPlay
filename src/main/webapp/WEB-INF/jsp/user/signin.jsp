<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	 <div class="wrap">
	 	<c:import url="/WEB-INF/jsp/include/header.jsp" />
	 	<section class="d-flex justify-content-center">
	 		<div>
	 			<img src="/static/picture/puppy1.jpg" class="loginPuppy mt-3" />
			</div>
		 	<div class="login-box d-flex justify-content-center align-items-center bg-white border rounded mt-3">
				<form id="loginForm">	 	 
		 	 		<input type="text" id="loginIdInput" class="form-control" placeholder="아이디">
		 	 		<input type="password" id="passwordInput" class="form-control mt-4" placeholder="비밀번호">
		 	 		<button type="submit" id="loginBtn" class="btn btn-secondary btn-block mt-4">로그인</button>
		 	 		<hr>
		 	 		<div class="mt-5 p-3 d-flex justify-content-center align-items-start bg-white  border rounded">
						<a href="/user/signup/view" class="italic">가입하기</a>
					</div>
		 		</form>
		 	</div>
	 	</section>
	 	<c:import url="/WEB-INF/jsp/include/footer.jsp" />	
	 </div>
	 
	 <script>
		 $(document).ready(function(){
			
			 $("#loginForm").on("submit",function(e){
				 
				// submit 이벤트가 가지고 있는 기능(새로고침)을 비활성화 
				e.preventDefault();
				 
				 let loginId = $("#loginIdInput").val();
				 let password = $("#passwordInput").val();
				 
				 if(loginId == ""){
					 alert("아이디를 입력하세요");
					 return;
				 }
				 if(password == ""){
					 alert("비밀번호를 입력하세요");
					 return;
				 }
			 	
			 
				 $.ajax({
					 type:"post",
					 url:"/user/signin",
					 data:{"loginId":loginId, "password":password},
					 success:function(data){
						
						 if(data.result == "success"){
							 location.href = "/post/main/view";
						 }else{
							 alert("로그인 실패")
						 }
					 },	 
					 error:function(){
						alert("로그인 에러")				 
					}		 		 
				 });
			 
			 });
		
		});
		 
		 
	 </script>
	 
 
</body>
</html>