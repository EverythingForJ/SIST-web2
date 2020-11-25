<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="select" class="com.example.libs.service.SelectService"/>
<c:if test="${not empty userid }">
	<c:set var="member" value="${select.selectMember(userid)}"/>
</c:if>
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
	$(document).ready(function(){
		$('#btnLogout').on('click',function(){
			if(confirm("정말 로그아웃하시겠습니까 ? ")){
				location.replace("logout.jsp");
			}else{
				history.go(0);
			}
		});
	});
	$(document).ready(function(){
		$('#btnDelete').on('click',function(){
			if(confirm("정말 탈퇴하시겠습니까 ? ")){
				
				location.replace("delete.jsp");
			}else{
				history.go(0);
			}
		});
		$('#btnMyservice').on('click',function(){
			location.replace("myservice.jsp");
		});
	});
	
</script>
</head>
<body>
        <div class="container">
            <div class="row">
                <div class="jumbotron">
                <c:if test="${empty userid}">
                	<h1>Welcome to www.example.com</h1>
                </c:if>
                <c:if test="${not empty userid}"><%--login했다면 --%>
                	<c:if test="${flag eq 1}">
                		<h2 class="text-success">${member.name}(${member.age}세, ${userid})님!</h2>
                	</c:if>
                	<c:if test="${flag eq 0}">
                		<h2 class="text-danger">Welcome 관리자</h2>
                	</c:if>
                </c:if>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur molestias, nostrum eius, officia distinctio mollitia corporis saepe enim quod itaque possimus dicta illum voluptatum impedit facilis molestiae dolorem libero quaerat!
                Enim odit numquam voluptatem reiciendis iste ad libero, molestiae, quisquam deserunt laudantium cumque atque explicabo incidunt quod harum ratione provident cum sed sint suscipit similique aperiam? Modi sint culpa consectetur.
                Iure quis libero ut distinctio rem, fugit, vitae ex culpa quo et id labore. Natus blanditiis sequi harum repellat exercitationem saepe dignissimos eius. Beatae rerum deleniti quam eos temporibus iure.
                Labore quidem ipsam natus magni deleniti nulla veniam corrupti, quos consequuntur unde perspiciatis molestiae, maxime non facilis quod corporis, dolorem numquam. Aperiam suscipit vitae voluptas omnis eligendi fugiat deserunt quaerat!
                Quae temporibus inventore asperiores assumenda animi perspiciatis sequi consequuntur deserunt. Dolorem repudiandae exercitationem, deleniti nemo porro temporibus quo quibusdam sint laborum facilis vero ipsa asperiores aut, esse nam earum impedit.
                </p>
                <p>
                <c:if test="${empty userid}"><%--로그인 안했을 떄 --%>
                	<button id="btnRegister" class="btn btn-success btn-lg">회원 가입</button>
                	<button id="btnLogin" class="btn btn-info btn-lg">Login</button></p>
                </c:if>
                <c:if test="${not empty userid}"><%--로그인 했을 떄 --%>
                	<button id="btnLogout" class="btn btn-warning btn-lg">Log Out</button>
					<c:if test="${member.flag eq 1}"><%--일반 유져라면 --%>
                		<button id="btnMyservice" class="btn btn-info btn-lg">My Service</button>
                		<button id="btnDelete" class="btn btn-danger btn-lg">회원 탈퇴</button>
            		</c:if>
            		<c:if test="${flag eq 0}"> <%--관리자라면 --%>
	            		<a class="btn btn-primary" href="admin.jsp" role="button">관리자 페이지로</a>
            		</c:if>
            	</c:if>
            </div>
        </div>
    </div>
</body>
</html>