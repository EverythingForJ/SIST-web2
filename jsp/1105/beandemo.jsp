<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="m" class="com.example.libs.Member"/>
<jsp:setProperty name="m" property="name" value="한지민"/>
<jsp:setProperty name="m" property="age" value="24"/> 
<!-- value="24"는 숫자로 자동형변환된다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>이름 : <jsp:getProperty property="name" name="m"/></li>
		<li>나이 : <jsp:getProperty name="m" property="age" /></li>
	</ul>
</body>
</html>