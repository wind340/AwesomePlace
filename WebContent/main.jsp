<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AwesomePlace</title>
<!-- CSS 5.1.3 최신 버전입니다 -->

</head>
<body>
<!-- header -->
<%@ include file = "/header.jsp" %>

<!--  Carousel slide image// 기본 5초 간격 slide입니다 -->
<div id="awsomeCarousel" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/resource/images/mainloof/1.jpg" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/resource/images/mainloof/2.jpg" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/resource/images/mainloof/3.jpg" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/resource/images/mainloof/4.jpg" class="d-block w-100">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#awsomeCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#awsomeCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<br><br>

<!-- 간략 설명 -->
<div class="container">
	<h1> AWESOME PLACE</h1>	
	<br>
	<p> 깊고 진한 커피향기에 반하는 우리동네 핫플레이스 </p>
</div>
<%@ include file = "/footer.jsp" %>
</body>
</html>