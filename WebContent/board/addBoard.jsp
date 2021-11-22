<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="alert alert-secondary" role="alert">
	  <h1>글 등록 <span class="badge bg-secondary">New</span></h1>
	</div>
	<div class="container">
		<div class="row">
			<form  name="newProduct" class="form-horizontal" action="addCheck.jsp" method="post" enctype="multipart/form-data">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thread>
						<tr>
							<th colspan="2" style="background-color: #eeeee; text-align: center;">게시물 작성</th>
						</tr>
					</thread>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="제목을 입력하세요" name="title" maxlength="50" required></td>
						</tr>
						<tr>
							<td><textarea  class="form-control" placeholder="내용을 입력하세요" name="description" maxlength="2048" style="height: 350px" required></textarea></td>
						</tr>
						<tr>
							<td><input class="form-control" name="filename" type="file" ></td>
						</tr>
					</tbody>
				</table>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				 		<input type="submit" class="btn btn-secondary me-md-2" value="등록">
				 		<a class="btn btn-secondary" href="/board/listBoard.jsp" role="button">취소</a>
				 		<input type="reset" class="btn btn-secondary" value="전체 삭제 " onclick="reset()" >
				</div>
			</form>
		</div>	
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>