<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>PuppyPlay</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div class="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<c:import url="/WEB-INF/jsp/include/nav.jsp" />
		<section class="d-flex justify-content-center">
			<article class="banner mt-3">
	                <img src="/static/picture/puppy1.jpg" id="bannerImage">
	    	</article>
			
			<div class="main-article mt-3 align-items-center justify-content-center mt-3">
				<br>
				<pre class="article-comment1 text-center p-3 mt-5" > " 우리아이를 위한 <b class="font-size-35">최고의</b> 경험 "</pre>
				<div class="d-flex justify-content-center align-items-center">
					<pre class="article-comment2 text-center mt-5 p-3">Puppy Play</pre>
					<img src="/static/picture/footprint-white.png" class="footprint-white mt-4 ml-3">
				</div>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

	<script>
	
	 $(document).ready(function() {
	  var bannerList = ["/static/picture/puppy1.jpg", "/static/picture/puppy2.jpg", "/static/picture/puppy3.jpg"];
	            var currentImageIndex = 0;
	            setInterval(function() {
	                $("#bannerImage").attr("src", bannerList[currentImageIndex]);
	                currentImageIndex++;
	
	                if(currentImageIndex == bannerList.length) {
	                    currentImageIndex = 0;
	                }
	            }, 2000); 
	 });	 
 </script>  
 
</body>
</html>