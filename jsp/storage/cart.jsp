<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.html" />
<%
	request.setCharacterEncoding("utf-8");
	String item = request.getParameter("item");
	String step = request.getParameter("step");
	Vector<String> cart = null;
	if(item != null){
		cart = (Vector<String>)session.getAttribute("mycart");
		if(cart==null){ // 처음이라면, cart를 담은 적이 없다면
			cart = new Vector<String>(1,1);
			cart.addElement(item);
			session.setAttribute("mycart", cart);
		}else{ // 이미 전에 세션이 있었다면
			if(step.equals("add")) cart.addElement(item);
			else cart.removeElement(item);
		}
%>
	<h2>현재 카트에 <%=cart.size() %>개의 상품이 담겨있습니다.</h2>
	<hr />
	<ol>
	<% for(int i=0; i<cart.size(); i++){ %>
		<li><%=cart.get(i) %></li>	
	<%} %>
	</ol><br />
	<% if(cart.size() > 0){ %>
		<jsp:include page="remove.jsp"></jsp:include>
	<% } %>
<%} %>
</body>
</html>