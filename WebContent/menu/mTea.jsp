<%@page import="dao.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>awesome tea</title>
</head>
<body>
<!-- header -->
<%@ include file = "/header.jsp" %>

<!-- 관리자일경우 관리버튼생성 -->
<%
	if (userID != null && userID.equals("admin")) {
%>
	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<a href="/menu/menuList.jsp">
			<button type="button" class="btn btn-danger btn-lg"  type="button">메뉴관리</button>
		</a>
	</div>
<%
	}
%>
<!-- title로 넘겨받아서 뿌려줍니다. 티는 mtitle 2 -->
<%
	request.setCharacterEncoding("utf-8");
	ArrayList<MenuObj> menus = (new MenuDAO()).getList("2");
	int admin = 0;
	if (request.getParameter("id") != null) {
		admin = Integer.parseInt(request.getParameter("id"));
	}
%>
  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">AWESOME TEA</h1>
        <br><br>
      <img src="/resource/images/menus/tea.jpg" width=100%>
      </div>
    </div>
  </section>
  <div class="album py-5 bg-light" align="center">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<%
				for (MenuObj menu : menus){
			%>
        <div class="col">
 			<div class="card" style="width: 18rem;">
			  <img src="/menus/<%=menu.getMfile() %>" class="card-img-top">
			  <div class="card-body">
  		    	 <ul class="list-group list-group-flush">
			    	<h2 class="card-title" align="center"><%=menu.getMname() %></h2>

	    	     	<li class="list-group-item"><%=menu.getMdescription() %></li>
			     	<li class="list-group-item" align="right"><%=menu.getMprice() %> 원</li>
				 </ul>
			</div>
          </div>
        </div>
        <%} %>

        
      </div>
    </div>
   </div>
<%@ include file = "/footer.jsp" %>
</body>
</html>
