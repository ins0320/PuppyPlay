<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
 	<div class="wrap">
 		<c:import url="/WEB-INF/jsp/include/header.jsp"/>
 		<section>
 		<!-- notice-logo -->
 			<div class="monthly-logo col-12 d-flex justify-content-center align-items-between ">
 				<div class="monthly-logo-text col-4">
 					<h1 class="text-center mt-2">Notice</h1>
 				</div>
 			</div>
 		<!--  /notice-logo -->	
 			<hr class="mt-3">
 			<div class="d-flex">
 				<label><h2>제목: </h2></label>
 					<!-- 관리자일 경우만 form 작성 가능 -->
 					<c:choose>
	 					<c:when test="${userLoginId eq 'admin'}">
	 						<h2><input type="text" class="form-control col-11 ml-3" id="titleInput" value="${notice.title}"></h2>		
	 					</c:when>
	 					
	 					<c:otherwise>
	 						<h2 class="ml-3">${notice.title}</h2>
	 					</c:otherwise>
 					</c:choose>
 			</div>
 			<hr class="hr-solid">
 			<!-- 관리자일 경우만 form 작성 가능 -->
 			<c:choose>
 				<c:when test="${userLoginId eq 'admin'}">
 					<textarea rows="5" class="form-control mt-2 col-11" id="contentInput">${notice.content}</textarea>
 				</c:when>
 				<c:otherwise>
 					<pre>${notice.content}</pre>
 				</c:otherwise>
 			</c:choose>	
 			
 			<div class="d-flex justify-content-end">
 				<c:if test="${userLoginId eq 'admin' }">
 					<button type="button" class="btn btn-info" id="saveBtn" data-post-id="${notice.id}">저장하기</button>
	 			</c:if>
	 			<a href="/post/notice/list/view" class="btn btn-info">목록으로</a>
 			</div>
 		</section>
 		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
 </div>
 	<script>
	 	$(document).ready(function(){
	 		
	 		$("#saveBtn").on("click", function(){
	 			let postId = $(this).data("post-id");
		 		let title = $("#titleInput").val();
		 		let content = $("#contentInput").val();
		 		
		 		
		 		if(title == "") {
					alert("제목을 입력하세요");
					return;
				} 
				
				if(content == "") {
					alert("내용을 입력하세요");
					return ;
				}
				
				$.ajax({
					type:"post",
					url:"/post/notice/update",
					data:{"postId":postId, "title":title, "content":content},
					success:function(data) {
						if(data.result == "success") {
							location.reload();
						} else {
							alert("수정실패");
						}
					},
					error:function() {
						alert("수정에러");
					}
				});
	 			
	 		});
	 		
	 		
	 	});
 	
 	
 	</script>
</body>
</html>		