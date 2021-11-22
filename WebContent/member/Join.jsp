<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#f5f5f5),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #f5f5f5 0%, #f5f5f5 100%);
	background: -moz-linear-gradient(bottom left, #f5f5f5 0%, #f5f5f5 100%);
	background: -o-linear-gradient(bottom left, #f5f5f5 0%, #f5f5f5 100%);
	background: linear-gradient(to top right, #f5f5f5 0%, #f5f5f5 100%);
}
.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>
<body>
<%@ include file = "/header.jsp" %>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<hr>
				<form class="validation-form" novalidate name="newMember" action="JoinCheck.jsp" method="post" onsubmit="return checkForm()">
					
						<div class="col-md-6 mb-3">
							<label for="id">아이디</label> <input type="text"
								class="form-control" id="id" name="id" placeholder="아이디" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="pw">비밀번호</label> <input type="password"
								class="form-control" id="pw" name="pw" placeholder="비밀번호" required>
							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="pw2">비밀번호  확인</label> <input type="password"
								class="form-control" id="pw2" name="pw2" placeholder="비밀번호" required>
							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" name="name" placeholder="이름" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
           					 <div class="col-sm-10" id="gender"><!-- 이름 옆에 넣고싶음 -->
				               <input id="gender" name="gender" type="radio" value="남" /> 남 
				               <input id="gender" name="gender" type="radio" value="여" /> 여
				            </div>
						</div>
						<div class="form-group row">
			            <label class="col-sm-2">생일</label>
			            <div class="col-md-6 mb-3 ">
			               <input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6"> 
			               <select name="birthmm">
			                  <option value="">월</option>
			                  <option value="01">1</option>
			                  <option value="02">2</option>
			                  <option value="03">3</option>
			                  <option value="04">4</option>
			                  <option value="05">5</option>
			                  <option value="06">6</option>
			                  <option value="07">7</option>
			                  <option value="08">8</option>
			                  <option value="09">9</option>
			                  <option value="10">10</option>
			                  <option value="11">11</option>
			                  <option value="12">12</option>
			               </select> <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
			            </div>
			         </div>
					
					<div class="col-md-6 mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" name="email" placeholder="you@example.com"
							required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="phone">전화번호</label> <input type="text"
							class="form-control" name="phone" required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>
					<div class="mb-3">
						<label for="address">주소</label> <input type="text"
							class="form-control" name="address" placeholder="서울특별시 강남구"
							required>
						<div class="invalid-feedback">주소를 입력해주세요.</div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-lg btn-dark btn-block" type="submit">가입
						완료</button>
				</form>
			</div>
		</div>

	</div>
	<script>  window.addEventListener('load', () => { 
		const forms = document.getElementsByClassName('validation-form'); 
		
		Array.prototype.filter.call(forms, (form) => { 
			
			form.addEventListener('submit', function (event) { 
				
				if (form.checkValidity() === false) { 
					event.preventDefault();
					
					event.stopPropagation(); 
					}
				
					form.classList.add('was-validated'); 
				}, false); 
			});
		}, false); 
	
	function checkForm(){
		if(document.newMember.pw.value != document.newMember.pw2.value){
			alert("비밀번호를 동일하게 입력하세요");
			return false;
			
		}
	}
	</script>
	<%@ include file = "/footer.jsp" %>
</body>

</html>