<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./resources/css/modifyForm.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
		<div id="header">
			<%@ include file="header.jsp"%>
		</div>
		<div id="container">
			<div id="side">
				<div id="myPage_side">
					<h2>마이 페이지</h2>
					<h3>쇼핑 정보</h3>
					<ul>
						<li>주문목록/배송조회</li>
						<li>취소/교환/반품 내역</li>
						<li>환불/입금 내역</li>
						<li>찜리스트</li>
					</ul>
					<h3>혜택 관리</h3>
					<ul>
						<li>쿠폰</li>
						<li>예치금</li>
						<li>적립금</li>
					</ul>
					<h3>고객 센터</h3>
					<ul>
						<li>1:1 문의</li>
					</ul>
					<h3>회원정보</h3>
					<ul>
						<li>회원정보 변경</li>
						<li>회원 탈퇴</li>
						<li>배송지 관리</li>
					</ul>
					<h3>나의 상품문의</h3>
					<h3>나의 상품후기</h3>
				
				
				</div>
			</div>
			<div id="container_top">
					<h2>회원 정보 변경</h2>
					
			</div>
			<div id="content">
				<div id="box">
					<form action="modify" method="post">
						<fieldset>

							<legend>회원정보 변경</legend>

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
												<input type="text" class="text" name="memId" id="memId" value="${member.getMemId() }">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">현재 비밀번호</th>
										<td>
											<div class="txt_field"">
												<input type="password" class="text" name="memPw" id="memPw">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">새 비밀번호</th>
										<td>
											<div class="txt_field"">
												<input type="password" class="text" name="newPw">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">새 비밀번호 확인</th>
										<td>
											<div class="txt_field"">
												<input type="password" class="text" name="newPwRe">
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">이름</th>
										<td>
											<div class="txt_field"">
												<input type="text" class="text" name="memName" id="memName" value="${member.getMemName() }" disabled>
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">휴대폰 번호</th>
										<td>
											<div class="txt_field"">
												<input type="text" class="text" name="memPhone" id="memPhone" value="${member.getMemPhone() }" disabled>
											</div>
										</td>
									</tr>
									<tr>
										<th class="ta-l required" aria-required="true">주소</th>
										<td>
											<div class="txt_field"">
												<input type="text" class="text" name="memAddr" id="memAddr" value="${member.getMemAddr() }" disabled>
											</div>
										</td>
									</tr>

								</table>
							</div>

						</fieldset>

						<div id="btn">
							<button type="submit">변 경</button>
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