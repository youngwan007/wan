<link rel="stylesheet" type="text/css" href="./resources/css/header.css" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Vollkorn" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<div id="top">
				<ul id="inner1">
					<li><a href="#">+ BOOKMARK</a></li>
					<li><a href="#">CS CENTER</a></li>
				</ul>
				
				
				<ul id="inner2">
				<c:if test="${empty member}">
					<li><a href="loginForm">LOGIN</a></li>
					<li><a href="joinForm">JOIN</a></li>
					<li><a href="loginForm">MY PAGE</a></li>
					<li><a href="loginForm">ORDER</a></li>
				</c:if>
				<c:if test="${!empty member}">
					<li><a href="logout">LOGOUT</a></li>
					<li><a href="modifyForm">MODIFY</a></li>
					<li><a href="#">MY PAGE</a></li>
					<li><a href="#">ORDER</a></li>
				</c:if>
				</ul>
				
				
	
		</div>
		<div id="mid">
				<div id="logo">
					<a href="home"><img src="./resources/pic/logo/jw_logo.jpg"></a>
				</div>
		</div>
		<div id="bot">
				<div id="category">
					<ul id="category_name">
						<li><a href="#">Best 50</a></li>
						<li><a href="#">OUTER</a></li>
						<li><a href="#">TOP</a></li>
						<li><a href="#">BOTTOM</a></li>
						<li><a href="#">DRESS</a></li>
						<li><a href="#">SHOES</a></li>
						<li><a href="#">OUTLET</a></li>
						<li><a href="#">JEWELRY</a></li>
						<li><a href="#">ACC&BEAUTY</a></li>
					</ul>
				</div>
			
		</div>
			