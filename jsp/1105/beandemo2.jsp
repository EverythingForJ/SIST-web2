<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.example.libs.LoginBean" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bean Getting Page</h1>
	<ul>
		<li>아이디 : <jsp:getProperty property="userid" name="login"/></li>
		<li>패스워드 : <jsp:getProperty property="userpwd" name="login"/> </li>
	</ul>
</body>
</html>