<%@ tag language="java" body-content="scriptless" pageEncoding="UTF-8"%>
<%@ tag import="java.util.Date" %>
<%
	Date now = new Date();
%>
Now is <%=now %>
<jsp:doBody />