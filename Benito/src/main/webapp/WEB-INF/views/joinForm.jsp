<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="./resources/css/joinForm.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="wrap">
		<div id="header">
			<%@ include file="header.jsp"%>
		</div>
		<div id="container">
		<div id="container_top">
					<h2>회원가입</h2>
					<div id="container_top_right">
					<span class="this"> <strong>01</strong> 정보입력</span> 
					<span class="end"> <strong>02</strong> 가입완료</span>
					</div>
				</div>
			<div id="content">
				<div id="box">
					<form action="join" method="post">
						<fieldset>

							<legend>회원가입</legend>

							<div class="tit">
								<h3>기본정보</h3>
								<p>표시는 반드시 입력하셔야 하는 항목입니다.</p>
							</div>

							<div id=table1>
								<table>
									<tr>
										<th class="ta-l required" aria-required="true">아이디</th>
										<td>
											<div class="txt_field"">
												<input type="text" class="text" name="memId" id="memId">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">비밀번호</th>
										<td>
											<div class="txt_field"">
												<input type="password" class="text" name="memPw" id="memPw">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">비밀번호 확인</th>
										<td>
											<div class="txt_field"">
												<input type="password" class="text" name="memPwRe">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">이름</th>
										<td>
											<div class="txt_field"">
												<input type="text" class="text" name="memName" id="memName">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">휴대폰 번호</th>
										<td>
											<div class="txt_field"">
												<input type="text" class="text" name="memPhone"
													id="memPhone">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">주소</th>
										<td>
											<div class="txt_field"">
												<input type="text" class="text" name="memAddr" id="memAddr">
											</div>
										</td>
									</tr>

								</table>
							</div>

						</fieldset>

						<div id="btn">
							<button type="submit">가 입</button>
							<button type="button">취 소</button>
						</div>
					</form>

				</div>


			</div>
		</div>
		<div id="bottom"></div>




	</div>
</body>
</html>