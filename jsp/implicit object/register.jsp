<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>www.example.com의 회원가입페이지</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>회원가입</h1>
    <form class='registerform' action="<%=request.getContextPath() %>/requestdemo1.jsp" method="POST">
    <ul class='register'>
        <li>이름 : <input type="text" name="username" required></li>
        <li>성별 : <input type="radio" name="gender" value="1">남성&nbsp;&nbsp;
                   <input type="radio" name="gender" value="0" checked>여성
        </li>
        <li>나이 : <input type="number" name="userage"></li>
        <li>취미 : 
                   <input type="checkbox" name="hobby" value="낚시">낚시
                   <input type="checkbox" name="hobby" value="등산">등산
                   <input type="checkbox" name="hobby" value="게임">게임
                   <input type="checkbox" name="hobby" value="독서">독서
                   <input type="checkbox" name="hobby" value="영화감상">영화감상
                   <input type="checkbox" name="hobby" value="음악감상">음악감상
        </li>
        <li>거주지 : 
                   <select name="city">
                       <option value="">--선택--</option>
                       <option value="서울">서울</option>
                       <option value="부산">부산</option>
                       <option value="대전">대전</option>
                       <option value="대구">대구</option>
                       <option value="인천">인천</option>
                       <option value="울산">울산</option>
                       <option value="광주">광주</option>
                   </select>
        </li>
        <li><button type="submit">가입하기</button>&nbsp;&nbsp;
            <button type="reset">취소하기</button>
        </li>
    </ul>
    </form>
</body>
</html>