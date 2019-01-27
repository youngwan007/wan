<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./resources/css/loginForm.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="wrap">
		<div id="header">
			<%@ include file="header.jsp"%>
		</div>

		<div id="container">
			<div id="content">
				<h1>로 그 인</h1>

				<div id="box">
					<h2>회원 로그인</h2><br>
					<form action="login" name="loin_form" method="post">
						<div id="input_info">
							<input type="text" name="memId" placeholder="아이디"><br>
							<input type="password" name="memPw" placeholder="비밀번호">
							
						</div>
							<button type="submit" name="login_btn">로 그 인</button>
					</form>
					
					<div id="box_bot">
						<button type="button" name="member_reg" onclick="location.href='joinForm'">회원 가입</button>
						<button type="button" name="id_find">아이디 찾기</button>
						<button type="button" name="pw_find">비밀번호 찾기</button>
					</div>
				</div>


			</div>
		</div>
		<div id="bottom"></div>

	</div>
</body>
</html>