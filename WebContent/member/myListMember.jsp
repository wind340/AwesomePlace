<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>

<!-- 	일반 회원 관리 페이지 입니다  -->

<%@ include file = "/header.jsp" %>
<%
	ArrayList<MemberObj> members = (new MemberDAO()).getMyList(userID);
%>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col"> </th>
      <th scope="col">아이디</th>
      <th scope="col">이름</th>
      <th scope="col">이메일</th>
      <th scope="col">전화번호</th>
    </tr>
  </thead>
  <tbody>
  	<%
			for (MemberObj member:members){
	%>
    <tr>
      <th scope="row"><a href = "myDeleteMember.jsp?id=<%=member.getCid() %>" class = "btn btn-secondary" role = "button">삭제 &raquo;</a></th>
      <td><%=member.getCid() %></td>
      <td><%=member.getCname() %></td>
      <td><%=member.getCemail() %></td>
      <td><%=member.getCphone() %></td>
	
	<%} %>
    </tr>
  </tbody>
</table>
<%@ include file = "/footer.jsp" %>
</body>
</html>