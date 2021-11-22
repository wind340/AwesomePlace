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
	<div class="alert alert-secondary" role="alert">
		<h1>게시판</h1>
	</div>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thread>
					<tr>
						<th style="background-color: #eeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeee; text-align: center;">작성일</th>
					</tr>
					<tbody>
				<%
					request.setCharacterEncoding("utf-8");
				
					ArrayList<BoardObj> boards = (new BoardDAO()).getList();
					int i = 1;
					for (BoardObj board : boards) {
				%>
				<tr>
					<th scope="row" class="test"><a href="detailBoard.jsp?id=<%=board.getId()%>"><%=i++%></a></th>
					<td class="test"><a href="detailBoard.jsp?id=<%=board.getId()%>"><%=board.getTitle()%></a></td>
					<td class="test"><a href="detailBoard.jsp?id=<%=board.getId()%>"><%=board.getMember()%></a></td>
					<td class="test"><a href="detailBoard.jsp?id=<%=board.getId()%>"><%=board.getDate()%></a></td>
				</tr>
				<%
					}
				%>
			</tbody>
				</thread>
			</table>
			
			<%
				if (userID != null) {
			%>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			 	<a href="/board/addBoard.jsp">
			 		<button class="btn btn-secondary me-md-2" type="button">글쓰기</button>
		 		</a>
			</div>
			<%
				} else {
			%>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			 	<a href="/member/Login.jsp">
			 		<button class="btn btn-secondary me-md-2" type="button">로그인 후 이용해주세요</button>
		 		</a>
			</div>
			<%
				}
			%>
		</div>	
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>