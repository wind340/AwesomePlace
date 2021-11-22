<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
    <style>
.bd-placeholder-img {
  font-size: 1.125rem;
  text-anchor: middle;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
@media (min-width: 768px) {
  .bd-placeholder-img-lg {
    font-size: 3.5rem;
  }
}
body{
	background-image: url('https://jhealthfile.joins.com/photo//2020/09/10/1343dce189e2a.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
        
.input-form { /* 조금 넓히고 싶다 */
	max-width: 100%;
	margin-top: 80px;
	padding: 50px;
	background: #f5f5f5;
	background-color: rgba( 255, 255, 255, 0.5 );
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
.form-signin{
	width:100%;
	max-width: 400px;
    padding: 15px;
    margin: auto;
}
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
<%@ include file = "/header.jsp" %>

	<form class="form-signin" action = "LoginCheck.jsp" method = "post">
		<div class = "input-form">
		<div class = "text-center">
			<p class="h2 mb-3 font-weight-normal">welcome!</p>
			<hr>
				<h1 class="h3 mb-3 font-weight-normal">로그인</h1>
				<label for="inputEmail" class="sr-only">아이디</label>
				 <input type="text" id="inputId" name = "id" class="form-control" placeholder="아이디" required autofocus>
				<label for="inputPassword" class="sr-only">비밀번호</label> 
				<input type="password" id="inputPassword" name = "pass" class="form-control" placeholder="비밀번호" required>
	
				<button class="btn btn-lg btn-dark btn-block" type="submit">로그인</button>
				<hr>
				<a class="mt-5 mb-3 text-muted" href="Join.jsp" >회원가입</a> 
				<p class="mt-5 mb-3 text-muted">&copy; awesomeplace 2021</p>
		</div>
		</div>
	</form>
<%@ include file = "/footer.jsp" %>
</body>
</html>