<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
<div class="alert alert-secondary" role="alert">
			<h1>게시판</h1>
</div>
<%
	request.setCharacterEncoding("utf-8");
	String a = request.getParameter("id");
	BoardObj board = (new BoardDAO()).getDetail(a);
%>
	<div class="container">
	<div class="row">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글 보기</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%;">글 제목</td>
					<td colspan="2"><%= board.getTitle()%></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td colspan="2"><%= board.getMember() %></td>
				</tr>
				<tr>
					<td>작성일자</td>
					<td colspan="2"><%= board.getDate()%></td>
				</tr>
				<%
					if (board.getFilename() != null) {
				%>
				<tr>
					<td colspan="2" style="height: 200px; text-align: center;">
						<img src="/images/<%=board.getFilename()%>" style="width: 65%"/>
					</td>
				</tr>
				<%
					} else {
				%>
				<%
					}
				%>
				<tr>
					<td>내용</td>
					<td colspan="2" style="height: 200px; text-align: left;"><%= board.getDescription()%></td>
					</tr>
				</tbody>
			</table>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  <a href="/board/listBoard.jsp" class="btn btn-secondary">목록</a>
			</div>
			
		</div>
	</div>

<%@ include file = "/footer.jsp" %>

</body>
</html>