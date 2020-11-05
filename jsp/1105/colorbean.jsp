<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<jsp:useBean id="col" class="com.example.libs.ColorBean" scope="request"/>

<%-- 
<jsp:setProperty property="username" name="col" param="username"/>
<jsp:setProperty name="col" property="color" param="color"/>
 --%> 
<jsp:setProperty name="col" property="*"/>
<jsp:forward page="colorbean1.jsp"></jsp:forward> 
