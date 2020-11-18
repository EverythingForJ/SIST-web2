<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
		$('#btnRegister').on('click',function(){
			location.href="register.html";
		});
	});
	$(document).ready(function(){
		$('#btnLogin').on('click',function(){
			location.href="login.jsp";
		});
	});
</script>
</head>
<body>
        <div class="container">
            <div class="row">
                <div class="jumbotron">
                <c:if test="${empty sessionScope.userid}">
                	<h1>Welcome to www.example.com</h1>
                </c:if>
                <c:if test="${not empty sessionScope.userid}">
                	<h1>Welcome to <c:out value="${sessionScope.userid}"/>님!</h1>
                </c:if>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur molestias, nostrum eius, officia distinctio mollitia corporis saepe enim quod itaque possimus dicta illum voluptatum impedit facilis molestiae dolorem libero quaerat!
                Enim odit numquam voluptatem reiciendis iste ad libero, molestiae, quisquam deserunt laudantium cumque atque explicabo incidunt quod harum ratione provident cum sed sint suscipit similique aperiam? Modi sint culpa consectetur.
                Iure quis libero ut distinctio rem, fugit, vitae ex culpa quo et id labore. Natus blanditiis sequi harum repellat exercitationem saepe dignissimos eius. Beatae rerum deleniti quam eos temporibus iure.
                Labore quidem ipsam natus magni deleniti nulla veniam corrupti, quos consequuntur unde perspiciatis molestiae, maxime non facilis quod corporis, dolorem numquam. Aperiam suscipit vitae voluptas omnis eligendi fugiat deserunt quaerat!
                Quae temporibus inventore asperiores assumenda animi perspiciatis sequi consequuntur deserunt. Dolorem repudiandae exercitationem, deleniti nemo porro temporibus quo quibusdam sint laborum facilis vero ipsa asperiores aut, esse nam earum impedit.
                </p>
                <p><button id="btnRegister" class="btn btn-success btn-lg">회원 가입</button>
                <c:if test="${empty sessionScope.userid}">
                	<button id="btnLogin" class="btn btn-info btn-lg">Login</button></p>
            	</c:if>
                <c:if test="${not empty sessionScope.userid}">
                	<button id="btnLogin" class="btn btn-warning btn-lg">Log Out</button></p>
            	</c:if>
            </div>
        </div>
    </div>
</body>
</html>