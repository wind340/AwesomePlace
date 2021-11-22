<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.File"%>
<%@ page import = "dao.MenuDAO"%>
<%@ page import = "org.apache.commons.fileupload.*"%>
<%@ page import = "org.apache.commons.fileupload.disk.*"%>
<%@ page import = "org.apache.commons.fileupload.servlet.*"%>
<%@ page import = "java.util.*" %>
<%@ page import = "org.apache.commons.fileupload.FileItem"%>
<%@ page import = "util.*"%>
<%
	String mtitle = null , mname = null, mprice = null, mdescription = null, mfilename=null;
	byte[] mfile = null;
	
	request.setCharacterEncoding("utf-8");
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	// 추출값을 객체 형태로
	List items = sfu.parseRequest(request);
	// 입력값들을 객체로 저장
	Iterator iter = items.iterator();
	
	while(iter.hasNext()){
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName();
		
		if(item.isFormField()){ //isFormField 이름과 값형태 쌍으로 구성되어있을때.
			String value = item.getString("utf-8");
			if(name.equals("title")) mtitle = value;
			if(name.equals("name")) mname = value;
			if(name.equals("price")) mprice = value;
			if(name.equals("description")) mdescription = value;
		}else{
			if(name.equals("filename")){
				mfilename = item.getName(); //사진의 이름추출하기
				mfile = item.get(); //사진뽑기
				//여기까진 입력받은 값들 분리해서 value로 저장했고, 아래는 파일 저장
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage2(root, mfilename, mfile);
				//saveImage=게시판이미지 saveImage2=메뉴판이미지 
			}
		}
	}

	MenuDAO dao = new MenuDAO();
	int code = dao.insert(mtitle, mname, mprice, mdescription, mfilename);
	if(code == 1){
		response.sendRedirect("/menu/menuList.jsp");
	}else{
		response.sendRedirect("/member/Join.jsp");
		out.print("제품등록실패");
	}
%>