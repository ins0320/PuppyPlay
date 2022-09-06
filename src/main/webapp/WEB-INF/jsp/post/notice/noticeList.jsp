<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
 		
 		<!-- monthly-logo -->
 			<div class="monthly-logo col-12 d-flex justify-content-center align-items-between ">
 				<div class="monthly-logo-text col-4">
 					<h1 class="text-center mt-2">Notice</h1>
 				</div>
 				<div>
 					<img src="/static/picture/puppy4.jpg" class= "puppy4 ml-5"/>
 				</div>
 			</div>
 		<!-- /monthly-logo -->
 		
 		<table class="table">
 			<thead>
 				<tr>
		 			<th>번호</th>
		 			<th>제목</th>
		 			<th>글쓴이</th>
		 			<th>날짜</th>
 				</tr>
 			<tbody> 		
 			<c:forEach var="notice" items="${noticeList}">
 				<tr>
 					<td>${notice.id }</td>
 					<td><a href="/post/notice/detail/view?id=${notice.id}">${notice.title }</a></td>
 					<td>관리자</td>
 					<td><fmt:formatDate value="${notice.createdAt}" pattern="yyyy-MM-dd"/></td>
 				</tr>
	 		</c:forEach>		
 			</tbody>	
 		</table>
		<!-- 관리자만 보이는 작성하기 버튼(create로 이동) -->
		<c:if test="${userId eq 1 }">
			<div class="d-flex justify-content-end">
	 				<a href="/post/notice/create/view" class="btn btn-info">작성하기</a>
	 		</div>
	 	</c:if>	
 		</section>
 		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
 	</div>
 
 	
</body>
</html>