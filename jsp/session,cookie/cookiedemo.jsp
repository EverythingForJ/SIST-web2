<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ page import="java.net.URLEncoder, java.net.URLDecoder" %>

<%
	Cookie cookie = new Cookie("username","한지민");
	cookie.setMaxAge(60);
	response.addCookie(cookie);
%>

<body>
	<ul>
		<li>Cookie Name :<%=cookie.getName() %> </li>
		<li>Cookie Value :<%=cookie.getValue() %> </li>
		<li>Cookie Expire Date : <%=cookie.getMaxAge() %></li>
		<li><a href="cookiedemo1.jsp">Cookie 읽기</a></li>
	</ul>
</body>