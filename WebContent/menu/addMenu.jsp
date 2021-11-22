<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
<!-- 관리자 외 접근 제한-->
<%
	if (userID != null && userID.equals("admin")) {
%>

<div class="container" >
   <form name="newMenu" class="form-horizontal"  action="addMenuCheck.jsp" method="post" enctype="multipart/form-data" onsubmit="return checkForm()">

		<div class="jumbotron">
			<div class="container">
				<h3 class="display-5" align=center>제품 등록</h3>
			</div>
		</div>
		<div class="container" align="center">
			<div class="form-group  row">
	            <label class="col-sm-2">제품분류</label>
	            <div class="col">
	               <input name="title" type="text" class="form-control" placeholder="1:coffee / 2:tea / 3:dessert" >
	            </div>
			</div>
	            <div class="form-group  row">
	            <label class="col-sm-2">제품명</label>
	            <div class="col">
	               <input name="name" type="text" class="form-control" placeholder="제품명" >
	            </div>
	         </div>
	         <div class="form-group  row">
	            <label class="col-sm-2">제품가격</label>
	            <div class="col">
	               <input name="price" type="text" class="form-control" placeholder="가격" >
	            </div>
	         </div>
	         <div class="form-group  row">
	            <label class="col-sm-2">제품설명</label>
	            <div class="col">
	            	<textarea name="description" rows="5" cols="25" class="form-control" placeholder="제품설명"></textarea>
	            </div>
	         </div>
	
	         <div class="form-group  row">
	            <label class="col-sm-2">제품사진</label>
	            <div class="col">
	               <input name="filename" type="file" class="form-control">
	            </div>
	         </div>
				<div class="form-group  row">
	            <div class="col-sm-offset-2 col-sm-10 ">
	               <input type="submit" class="btn btn-primary " value="등록 " > 
	               <input type="reset" class="btn btn-primary " value="취소 " onclick="reset()" >
	            </div>
	         </div>
		</div>

</form>
</div>

<!-- 관리자 외 접근 제한-->
<%
	}else{
%>
		<div class="jumbotron" align="center"><h1 class="display">잘못된 접근입니다<br><br>관리자로 로그인 해주세요</h1></button>
<%
	}
%>
<%@ include file = "/footer.jsp" %>
</body>
</html>