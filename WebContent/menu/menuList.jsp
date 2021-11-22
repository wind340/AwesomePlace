<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
<!-- 관리자외 접근제한-->
<%
	if (userID != null && userID.equals("admin")) {
%>
	
	
		<div class="jumbotron">
			<div class="container">
				<h3 class="display-5" align=center>메뉴 관리</h3>
			</div>
		</div>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thread>
					<tr>
						<th style="background-color: #eeeee; text-align: center;">1.Coffee/ 2.Tea /3.Dessert</th>
						<th style="background-color: #eeeee; text-align: center;">이름</th>
						<th style="background-color: #eeeee; text-align: center;">가격</th>
						<th style="background-color: #eeeee; text-align: center;">내용</th>
						<th style="background-color: #eeeee; text-align: center;">삭제</th>
					</tr>
					<tbody>
				<%
					request.setCharacterEncoding("utf-8");
					ArrayList<MenuObj> menus = (new MenuDAO()).getList();
					for (MenuObj menu : menus) {
					int i = 1;
				%>
				<tr>
					<td><%=menu.getMtitle()%></td>
					<td><%=menu.getMname()%></td>
					<td><%=menu.getMprice()%></td>
					<td><%=menu.getMdescription()%></td>
					<td><a type="button" href="deleteMenu.jsp?name=<%=menu.getMname()%>" class="btn btn-secondary" role="button">삭제</a></td>
				</tr>
				<%
					}
				%>
			</tbody>
				</thread>
			</table>
		</div>	
	</div>
		<div class="newMenu" align="center">
			<a href="/menu/addMenu.jsp">
				<button class="btn btn-secondary me-md-2" type="button">메뉴추가</button>
			</a>
		</div>	

<!-- 관리자외 접근제한 -->
<%
	}else{
%>
		<div class="jumbotron" align="center"><h1 class="display">잘못된 접근입니다<br><br>관리자로 로그인 해주세요</h1></button>
<%
	}
%>
	<%@ include file="/footer.jsp"%>
</body>
</html>