<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<header class="d-flex align-items-center justify-content-between mt-3">		
				<div class="d-flex">
					<h1>Puppy Play</h1>
					<img src="/static/picture/footprint.png" class="footprint mt-2 ml-2">
				</div>
				<c:choose>
					<c:when test="${empty userId}">
						<div class="mr-3"><a href="/user/signin/view">로그인</a></div>
					</c:when>
					<c:otherwise>
						<div class="mr-3">${userLoginId}님 <a href="/user/signout/view">로그아웃</a></div>
					</c:otherwise>
				</c:choose>
		</header>