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
		
		
			<!-- bener -->
			<div id="carouselExampleIndicators" class="carousel slide banner-img mt-3" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			  </ol>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="/static/picture/puppy1.jpg" class="d-block banner-img " alt="puppy1">
			    </div>
			    <div class="carousel-item">
			      <img src="/static/picture/puppy2.jpg" class="d-block banner-img" alt="puppy2">
			    </div>
			    <div class="carousel-item">
			      <img src="/static/picture/puppy3.jpg" class="d-block banner-img " alt="puppy3">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
			<!-- /bener -->
				
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

 
</body>
</html>