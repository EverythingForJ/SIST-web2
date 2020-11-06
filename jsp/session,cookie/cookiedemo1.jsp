<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder, java.net.URLDecoder" %>    
<%
	Cookie cookie = null;
	Cookie [] array = request.getCookies();
	for(int i=0; i<array.length; i++){
		Cookie c = array[i];
		if(c.getName().equals("username")){
			cookie = c;
		}
	}
%>
<body>
	<ul>
		<li>Cookie Name :<%=cookie.getName() %> </li>
		<li>Cookie Value :<%=URLDecoder.decode(cookie.getValue(), "utf-8") %> </li>
		<li>Cookie Expire Date : <%=cookie.getMaxAge() %></li>
	</ul>
</body>
