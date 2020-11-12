<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.example.libs.model.*, java.sql.*"%>

<%
	Connection conn = DBConnection.getConnection();
	out.println(conn);
	DBClose.close(conn); // 닫는 것이 아니라 반납하는 것이다
%>