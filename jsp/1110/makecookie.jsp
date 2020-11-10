<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!-- url인코딩,디코딩은 cookie여서 쓴것, session에서는 사용안함 -->
<%
	String cookie_name = request.getParameter("cookie_name");
	cookie_name = URLEncoder.encode(cookie_name, "utf-8");
	
	String cookie_value = request.getParameter("cookie_value");
	
	Cookie cookie = new Cookie(cookie_name, cookie_value);
	response.addCookie(cookie);
	response.sendRedirect("displaycookie.jsp");
%>
