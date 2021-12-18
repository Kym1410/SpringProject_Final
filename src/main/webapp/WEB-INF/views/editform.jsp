<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역 수정</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Noto Sans KR", sans-serif;
}

a {
	text-decoration: none;
	color: black;
}

li {
	list-style: none;
}

.wrap {
	width: 100%;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background: rgba(0, 0, 0, 0.1);
}

.login {
	width: 80%;
	height: 600px;
	background: white;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

h2 {
	color: tomato;
	font-size: 2em;
	margin-top: 0px;
}

.login_sns {
	padding: 20px;
	display: flex;
}

.login_sns li {
	padding: 0px 15px;
}

.login_sns a {
	width: 50px;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 10px;
	border-radius: 50px;
	background: white;
	font-size: 20px;
	box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.4), -3px -3px 5px
		rgba(0, 0, 0, 0.1);
}

.login_id {
	margin-top: 20px;
	width: 80%;
	padding: 0px 20px;
}

.login_id input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
}

.login_pw {
	margin-top: 20px;
	width: 80%;
}

.login_pw input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
}

.login_etc {
	padding: 10px;
	width: 80%;
	font-size: 14px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-weight: bold;
}

.submit {
	margin-top: 30px;
	width: 30%;
}

.submit input {
	width: 100%;
	height: 30px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: linear-gradient(to left, rgb(255, 77, 46), rgb(255, 155, 47));
	color: white;
	font-size: 1.2em;
	letter-spacing: 2px;
}

</style>
</head>
<body>

<div class="wrap">
		<div class="login">

<h2>EditForm</h2>
<form:form commandName="boardVO" method="POST" action="../editok">
	<form:hidden path = "id"/>
	
<table id ="edit">
<tr><td>Category</td><td><form:checkbox path="category" value="외과"/><label for="cat1">외과</label><br>
						 <form:checkbox path="category" value="정형외과"/><label for="cat2">정형외과</label><br>
						 <form:checkbox path="category" value="신경외과"/><label for="cat3">신경외과</label><br>
						 <form:checkbox path="category" value="내과"/><label for="cat3">내과</label><br>
						 <form:checkbox path="category" value="이비인후과"/><label for="cat3">이비인후과</label><br>
						 <form:checkbox path="category" value="안과"/><label for="cat4">안과</label><br></td></tr>
<tr><td>Writer:</td><td><form:input path="writer" /></td></tr>
<tr><td>Gender:</td><td><form:radiobutton path="gender" value="남성"/><label for="gender1">남성</label><br>
						<form:radiobutton path="gender" value="여성"/><label for="gender2">여성</label><br>
<tr><td>Birthdate:</td><td><form:input path="birthDate" /></td></tr>
<tr><td>Phone:</td><td><form:input path="phone" /></td></tr>
<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
</table>
<div class="submit">
				<br/><input type ="button" onclick="history.back()" value="Back to List">
			</div>
<div class="submit">
					<input type="submit" value="Edit">
				</div>
</form:form>
</div>
	</div>
</body>
</html>