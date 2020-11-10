<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String result = request.getParameter("agreement");
	
	session.setAttribute("id", id);
	session.setAttribute("name", name);
	response.sendRedirect("result.jsp?result="+result);
%>