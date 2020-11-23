<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<sql:setDataSource dataSource="jdbc/mymariadb" var="conn"/>
<sql:query var="rs" dataSource="${conn}">
	SELECT ID, NAME, COUNTRYCODE, DISTRICT, POPULATION
	FROM CITY
	WHERE COUNTRYCODE=?
	<sql:param value="KOR"/>
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
	<h1>Korean Cities List</h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>일련번호</th>
				<th>도시명</th>
				<th>국가코드</th>
				<th>지역</th>
				<th>인구</th>
			</tr>
		</thead>
		<tbody>
			<%-- getRows() : rows, getRowsByIndex() : rowsByIndex --%>
			<c:forEach items="${rs.rows}" var="row">
				<tr>
					<td>${row.id}</td>
					<%-- <td><c:out value="${row.name}" /></td> --%>
					<td>
						<c:out value="${fn:toUpperCase(row.name)}" />
						(${fn:length(row.name)})
					</td>
					<td>${row.countrycode}</td>
					<td>${row.district}</td>
					<td><fmt:formatNumber type="number" value="${row.population}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>