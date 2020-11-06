<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("ADDRESS", "");
	cookie.setMaxAge(-1); // cookie 만료기간으로 삭제하기
	response.addCookie(cookie);
	response.sendRedirect("cookieget.jsp");
%>

<div>방금 Cookie가 삭제됐습니다.</div>