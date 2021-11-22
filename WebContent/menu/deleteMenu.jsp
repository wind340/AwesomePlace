<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<%
	String name = request.getParameter("name");
	MenuDAO menu = new MenuDAO();
	
	int code = menu.delete(name);
	
	if(code==1){
		response.sendRedirect("/menu/menuList.jsp");
	}else{
		out.println("오류발생");
		out.println("이름이 같은 메뉴가 삭제되었습니다.");
	}
%>
