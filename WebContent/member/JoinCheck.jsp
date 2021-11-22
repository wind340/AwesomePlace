<%@page import="java.io.PrintWriter"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	PrintWriter writer = response.getWriter();
	String userId = null;
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	String year = request.getParameter("birthyy");
	String month = request.getParameter("birthmm");
	String day = request.getParameter("birthdd");
	String birth = year + "/" + month + "/" + day;
	
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	MemberDAO dao = new MemberDAO();
	int code = dao.join(id, pw, name, gender, birth, email, phone, address);
	
	if(code == 1){
		response.sendRedirect("Login.jsp");
	}else{
		response.sendRedirect("Join.jsp");
	}
	
	if (session.getAttribute("id") != null) {
		userId = (String) session.getAttribute("id");
	}
	if (userId != null) {
		writer.println("<script>");
		writer.println("alert('이미 로그인이 되어 있습니다.')");
		writer.println("location.href = 'main.jsp");
		writer.println("</script>");
	}
%>