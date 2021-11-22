<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 처리</title>
</head>
<body>
<%
Cookie user = new Cookie("id", "");
user.setMaxAge(0);
response.addCookie(user);//세션의 모든 속성 제거
response.sendRedirect("/main.jsp");
session.invalidate();
%>
<script>
	location.href="/main.jsp"
</script>

<!-- 로그아웃 처리 완료 -->

</body>
</html>