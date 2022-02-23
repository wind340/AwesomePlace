<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>    

<link rel="stylesheet" href="/resource/css/font.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
.navbar-brand {
   font-family: 'Jeju Myeongjo', serif;
   font-size: 35px;
    margin-left: 40px;
    margin-right: 40px;
   text-align: center;
}
.nav-link {
    font-size: 20px;
    margin: 0px 15px;
    padding: 28px 0px;
}
.bd-placeholder-img {
  font-size: 1.125rem;
  text-anchor: middle;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
a , a:hover {
	color: #000000;
	text-decoration: none;
}
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/main.jsp">AWESOME PLACE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	어썸플레이스 소개
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="/intro/intro.jsp">카페소개</a></li>
            <li><a class="dropdown-item" href="/intro/branch.jsp">매장찾기</a></li>
          </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	메뉴이야기
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="/menu/mCoffee.jsp">COFFEE</a></li>
            <li><a class="dropdown-item" href="/menu/mTea.jsp">TEA</a></li>
            <li><a class="dropdown-item" href="/menu/mDessert.jsp">DESSERT</a></li>
          </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	게시판
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="/event/eventList.jsp">공지사항 및 이벤트</a></li>
            <li><a class="dropdown-item" href="/board/listBoard.jsp">자유 게시판</a></li>
          </ul>
        </li>
		 </ul>
<!-- 		 로그인 버튼 맨 우측으로 보내기 -->
			<ul class="nav justify-content-end"> 
			  <li class="nav-item dropdown">
		<%
		// 현재 로그인 된 아이디 세션
			String userID = null;
			if (session.getAttribute("id") != null) {
				userID = (String) session.getAttribute("id");
			}
			
			if (userID == null) {
		%>
		          <a class="nav-link dropdown" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            	회원관리
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		            <li><a class="dropdown-item" href="/member/Login.jsp">로그인</a></li>
		            <li><a class="dropdown-item" href="/member/Join.jsp">회원가입</a></li>
		          </ul>
		<%
			// 관리자 아이디일 때
			} else if (userID != null && userID.equals("admin")) {
		%>
				  <a class="nav-link dropdown" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            	<%=userID %>님, 환영합니다!
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		            <li><a class="dropdown-item" href="/member/Logout.jsp">로그아웃</a></li>
		            <li><a class="dropdown-item" href="/member/ListMember.jsp">회원관리</a></li>
		          </ul>
		<%
			// 일반 아이디
			} else {
		%>
		          <a class="nav-link dropdown" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            	<%=userID %>님, 환영합니다!
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		            <li><a class="dropdown-item" href="/member/Logout.jsp">로그아웃</a></li>
		            <li><a class="dropdown-item" href="/member/myListMember.jsp">회원탈퇴</a></li>
		          </ul>
		<%
			}
		%>
		        </li>
	        </ul>
     
    </div>
  </div>
</nav>
