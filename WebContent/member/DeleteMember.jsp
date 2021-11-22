<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 관리자 회원관리
	String a = request.getParameter("id");
	MemberDAO member = new MemberDAO();
		member.delete(a);
	
	int code = member.delete(a);
	
	if(code == 1){
		out.print("회원탈퇴 완료");
		response.sendRedirect("ListMember.jsp");
	}else{
		response.sendRedirect("ListMember.jsp");
	}
%>