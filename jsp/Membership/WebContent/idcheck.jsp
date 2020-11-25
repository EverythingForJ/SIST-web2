<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="select" class="com.example.libs.service.SelectService" />
<%
	String result = "false";
	String userid = request.getParameter("userid");
	boolean check = select.idCheck(userid);
	if(check){
		// result = "<span style='color:green;font-weight:900; font-size:1.5em'>사용가능한 아이디입니다.</span>";
		result = "true";
	}else{ // 사용 불가능한 아이디라면
		// result = "<span style='color:red;font-weight:900;font-size:1.5em'>이미 사용중인 아이디입니다.</span>";
		result = "false";
	}
	out.println(result);
%>
