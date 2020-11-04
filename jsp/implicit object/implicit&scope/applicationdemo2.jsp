<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File, java.io.RandomAccessFile"%>

<%!
	private String intConvertToImage(int count){
		String str = "";	
		String strCount = String.valueOf(count); // "101"
		for(int i=0; i<(6-strCount.length()); i++){
			str += "<img src='images/0.png' />";
		}
		for(int i=0; i<strCount.length(); i++){
			str += "<img src='images/"+ strCount.charAt(i)+".png' />";
		}
		return str;
	}
%>

<%
    	String path = application.getRealPath("/");
    /*
    	Eclipse의 경우
    	C:\WebHome\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\1104\
    */	
    path += "WEB-INF/count.txt";
    RandomAccessFile raf = new RandomAccessFile(new File(path), "rw");
    String strCount = raf.readLine(); // "0"
    int count= Integer.parseInt(strCount); // 0
    count++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- RealPath : <%=application.getRealPath("/") %> --%>
	<%-- RealPath : <%=path %> --%>
	방문자 수 : <%=intConvertToImage(count)%>
</body>
</html>
<%
	raf.seek(0); // 이렇게해야 덮어쓴다.
	raf.writeBytes(String.valueOf(count));
	raf.close();
%>