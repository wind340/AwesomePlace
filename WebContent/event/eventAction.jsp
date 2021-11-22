<%@page import="dao.EventDAO"%>
<%@page import="util.FileUtil"%>
<%@page import="dao.BoardDAO"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	request.setCharacterEncoding("utf-8");
	String title = null, subTitle= null, content = null, filename = null;
	byte[] ufile = null;
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	List items = sfu.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	while(iter.hasNext()) {
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName();
		if(item.isFormField()) {
			String value = item.getString("utf-8");
			if (name.equals("etitle")) title = value;
			else if (name.equals("esubtitle")) subTitle = value;
			else if (name.equals("econtent")) content = value;
		}  else {
				if (item.getName() == "") {
					break;
			} else if(name.equals("efilename")) {
				filename = item.getName();
				ufile = item.get();
				
				//사진을 파일로 특정 위치에 저장
/* 				File file = new File("/photos/" + filename);
				item.write(file); */
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root, filename, ufile);
			}
		}
	}
	
	EventDAO dao = new EventDAO();
	
	if (dao.insert(title, subTitle, content, filename)) {
		response.sendRedirect("eventList.jsp");
	} else {
		response.sendRedirect("eventList.jsp");
	}
%>  