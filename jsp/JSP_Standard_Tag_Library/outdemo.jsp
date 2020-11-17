<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1>Request Package Header Information</h1>
<%
	String userAgent = request.getHeader("user-agent");
	out.println(userAgent);
	
	pageContext.setAttribute("USERAGENT", userAgent);
%>
<br/>
<%=userAgent %>
<br/>
${pageScope['USERAGENT']}
<br/>
<c:out value="${pageScope['USERAGENT']}" />
<br/>
<c:out value="<font color = 'red' size='7'>빨간 글씨</font>는 다음과 같이 출력합니다" /><br /><br />
<c:out value="<font color = 'blue' size='7'>파란 글씨</font>는 다음과 같이 출력합니다" escapeXml = "false" />

<%
	String str = "<span style='color:blue;background-color:yellow;font-size:3em'>" + 
					"Hello, World</span>";
	pageContext.setAttribute("MYTAG", str);
%>
<br/>
${pageScope.MYTAG}
<br/>
<c:out value="${pageScope.MYTAG}" escapeXml = "true" />
<br/>
<c:out value="${null}" default="Hello, Default"/>
<br/>
<c:out value="${param.username}" default="Hello, Default"/>
<br/>
