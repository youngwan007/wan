<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">



<script type="text/javascript" charset="utf-8">
$(document).ready(function(){ 
    var slider1=$('.slides');
    slider1.bxSlider({            
         maxSliders:3,    //슬라이드개수
         auto:true,          //자동실행
         mveSliders:1,    //슬라이드 이동 개수       
         slideWidth:1920, //슬라이드 가로폭 
         pager:false,       //하단 도트버튼숨기기
         controls:true     //좌우버튼보이기
    });
});

</script>

<title>Home</title>
</head>
<body>

	<div id="wrap">
		<div id="header">
		<c:import url="header.jsp"></c:import>
			<%-- <%@ include file="header.jsp"%> --%>
		</div>

		<div id="container">
			<div id="content">
				<div id="main_slider">
					<div id="bx_slider">
						<ul class="slides">
							<li><img src="./resources/pic/slide/1.jpg" /></li>
							<li><img src="./resources/pic/slide/2.jpg" /></li>
							<li><img src="./resources/pic/slide/3.jpg" /></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom"></div>



	</div>

</body>
</html>
