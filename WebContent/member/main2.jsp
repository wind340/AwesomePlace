<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AwesomePlace</title>

</head>
<body>
<%@ include file = "header2.jsp" %>
<%
	String id = null;	
	Cookie[] cs = request.getCookies();
	
	for(Cookie c : cs){
		if(c.getName().equals("id")){
			id=c.getValue();
		}
		if(id==null){
			response.sendRedirect("Login.jsp");
		}
	}

%>
<div id="awsomeCarousel" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/1.jpg" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="images/2.jpg" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="images/3.jpg" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="images/4.jpg" class="d-block w-100">
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