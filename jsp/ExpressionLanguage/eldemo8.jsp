<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.example.libs.UserInfo"%>
<jsp:useBean id="user" class="com.example.libs.UserInfo" />
<jsp:setProperty property="name" name="user" value="박지현"/>
<jsp:setProperty property="gender" name="user" value="female"/>
<jsp:setProperty property="age" name="user" value="25"/>
<jsp:setProperty property="address" name="user" value="배곧"/>

<%
	pageContext.setAttribute("USERINFO", user);
	Object obj = pageContext.getAttribute("USERINFO");
	UserInfo jimin = (UserInfo)obj;
%>

<ul>
	<li>이름 : <%=jimin.getName() %></li>
	<li>나이 : <jsp:getProperty property="age" name="user" /></li>
	<li>성별 : ${user.gender}</li>
	<li>주소 : ${user['address']}</li>
</ul>