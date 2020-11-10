<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>약관</h3>
<form action="subscribe.jsp" method="POST">
	<input type="hidden" name="id" value="<%=id %>" />
	<input type="hidden" name="password" value="<%=password %>" />
	<input type="hidden" name="name" value="<%=name %>" />
	<!-- 실무에서도 hidden을 쓰며 페이지를 여러번 자동으로 넘겨, 페이지소스보기를 못하게 해서 보안유지, 또는 session으로 계속 넘겨도 된다. -->

	---------------------------------------------------------- <br>
	1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다. <br>
	2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다. <br>
	---------------------------------------------------------- <br>
	위의 약관에 동의하십니까?
	<input type="radio" name="agreement" value="yes" checked>예&nbsp;&nbsp;
	<input type="radio" name="agreement" value="no">아니오<br />
	<button>계속</button>
</form>
</body>
</html>