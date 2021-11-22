<%@page import="dao.EventDAO"%>
<%@page import="dao.EventObj"%>
<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
<div class="alert alert-secondary" role="alert">
			<h1>이벤트</h1>
</div>
<%
	request.setCharacterEncoding("utf-8");
	String a = request.getParameter("eid");
	EventObj event = (new EventDAO()).getDetail(a);
%>
	<div class="container">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		<div class="row">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #eeeeee; text-align: center;"><%= event.getEtitle()%></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%;">부제</td>
					<td colspan="2"><%= event.getEsubtitle()%></td>
				</tr>
				<tr>
					<td>작성일자</td>
					<td colspan="2"><%= event.getEdate()%></td>
				</tr>
			<%
				if(event.getEfilename() != null){
			%>
				<tr>
					<td colspan="2" style="height: 200px; text-align: center;">
						<img src="/images/<%=event.getEfilename()%>" style="width:65%" />
					</td>
				</tr>
			<%
				}
			%>
				<tr>
					<td>내용</td>
					<td colspan="2" style="height: 200px; text-align: left;"><%= event.getEcontent()%></td>
					</tr>
				</tbody>
			</table>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  <a href="/event/eventList.jsp" class="btn btn-secondary">목록</a>
			</div>
		</div>
		</div>

<%@ include file = "/footer.jsp" %>

</body>
</html>