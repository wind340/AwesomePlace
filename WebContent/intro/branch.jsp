<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>매장 찾기</title>
<style>
.body {
	align: center;
	width: 100%;
	height: 100%;
	padding: 30px;
	margin: 0;
}
.iframe {
	width: 100%;
	height: 100%;
	border: 0;
}
.img-source{
	width: 600px;
	height: 450px; 
}
</style>
</head>

<body>
<%@ include file = "/header.jsp" %>

	<div class="text-center">
		<img src="/resource/images/bg/awesomeplace.jpg" class="img-source">
		<br><br><br>
			<p>Address : 서울특별시 강남구 역삼동 테헤란로 146<br>
			Tel : 02 ) 1234 - 5678</p>

		<div class="btn-group">
		  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
		    지도 보기
		  </button>
		  <ul class="dropdown-menu">
		    <li><button class="dropdown-item" type="button">
			    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d791.3341327506024!2d127.03491648813595!3d37.499980198731954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca367dbee2a69%3A0x94298eaa21622903!2sAvanos%20Medical%20Korea%20Ltd.!5e0!3m2!1sko!2skr!4v1636813031464!5m2!1sko!2skr"
				width="600" height="450" style="border: 0;" allowfullscreen="false"	loading="lazy"></iframe>
		    </button></li>
		  </ul>
		</div>
	</div>
		    	

<%@ include file = "/footer.jsp" %>
</body>
</html>