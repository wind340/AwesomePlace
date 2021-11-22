<%@page import="dao.EventDAO"%>
<%@page import="dao.EventObj"%>
<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="alert alert-light" role="alert">
		<h1>
			<strong>Test</strong>
		</h1>
	</div>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thread>
				<tr style="background-color: #eeeee; text-align: center;">
					<td>이벤트 목록</td>
				</tr>
				<tbody>
					<%
						request.setCharacterEncoding("utf-8");
					ArrayList<EventObj> events = new EventDAO().getList();
					%>
					<tr>
						<th>
							<div class="row row-cols-1 row-cols-md-3 g-4">
						<%
							for (EventObj event : events) {
						%>
								<div class="col">
									<div class="card h-100">
										<img src="/images/<%=event.getEfilename()%>"
											class="card-img-top" alt="<%=event.getEtitle()%>" width="100" height="300">
										<div class="card-body">
											<h5 class="card-title"><%=event.getEtitle()%></h5>
											<p class="card-text"><%=event.getEsubtitle()%></p>
											<a href="/event/eventDetail.jsp?eid=<%=event.getEid()%>"
												class="btn btn-outline-success">이벤트 바로가기</a>
										</div>
									</div>
								</div>
						<%
							}
						%>
							</div>
						</th>
					</tr>
				</tbody>
				</thread>
			</table>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<a href="/event/eventAdd.jsp">
					<button class="btn btn-secondary me-md-2" type="button">글쓰기</button>
				</a>
			</div>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>