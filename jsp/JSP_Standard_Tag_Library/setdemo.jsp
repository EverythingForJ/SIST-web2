<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Request Package Header Information</h1>
<%-- <%
	String userAgent = request.getHeader("user-agent");
	out.println(userAgent);
%> --%>

${header['user-agent']}
<br/>

<c:set var = "myvariable" value="${header['user-agent']}" />
<c:out value="${myvariable}" />

<jsp:useBean id="today" class="java.util.Date" />
<c:set target="${today}" var="today_year" value="${today.year+1900}"/>
<br/>
금년은 <c:out value="${today_year}"/>

<br/>
<jsp:useBean id="mybean" class="com.example.libs.ColorBean" />
<jsp:setProperty name="mybean" property="username" value="한지민"/>
<c:set property="color" target="${mybean}" value="yellow"/>

Your Name : <c:out value="${mybean.username}"/><br/>
Your Name : <jsp:getProperty name="mybean" property="username" /><br/>
Your Name : ${mybean.username}<br/>

Your Color : ${mybean.color}<br/>
Your Color : <jsp:getProperty property="color" name="mybean"/><br/>
Your Color : <c:out value="${mybean.color}"/><br/>
