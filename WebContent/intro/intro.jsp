<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 소개</title>
</head>
<style>
.titleArea {
    position: absolute;
    width: 100%;
    top: 20%;
    text-align: center;
}
.title_big{
    color: #fff;
}
.text_sub{
    font-size: 14px;
    line-height: 1.6;
    color: #fff;
}
</style>

<body>
<%@ include file = "/header.jsp" %>
<div class="site_top">
    <div><a href="#none"><img src="/resource/images/bg/bg050.jpg" height=350px width=100%/></a></div>
</div>
<div class="titleArea" style="background-image: url("/resourceimages/bg/gb050.jpg"); height:339px; padding:0px; display:block;"><div class="top">
        <h1>
            <span class="title_big">AWESOME STORY</span>
        </h1><br>
        
        <p class="text_sub"> 여유로운 세상을 지향하는 브랜드 어썸플레이스입니다.<br>
        	<br>좋은 원두 좋은 재료만을 엄선하여 <br> 여러분의 건강에도 책임지겠습니다.
        </p>
        <br>
    </div>
</div>


<%@ include file = "/footer.jsp" %>
</body>
</html>