<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="userAgent" value="${header['user-agent']}" />
설정값 : <c:out value="${userAgent}" /><br/>
<c:remove var="userAgent"/>
제거 후의 값 : <c:out value="${userAgent}" /><br/>