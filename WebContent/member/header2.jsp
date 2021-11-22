<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/font.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid" align="center">
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
            <li><a class="dropdown-item" href="#">공지사항</a></li>
            <li><a class="dropdown-item" href="#">이달의 메뉴</a></li>
            <li><a class="dropdown-item" href="#">이벤트</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	회원가입
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="./Logout.jsp">로그아웃</a></li>
            <li><a class="dropdown-item" href="#">회원탈퇴</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>