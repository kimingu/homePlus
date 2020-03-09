<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>
<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
</head>
<style>
#test1 {
	margin: 0 auto;
	margin-top: 80px;
	border: 1px solid;
	height: 1200px;
	background-color: white;
}

#test2 {
	border: 1px solid;
	height: 1200px;
}

#page-wrapper {
	padding-left: 250px;
}

#sidebar-wrapper {
	position: fixed;
	width: 250px;
	height: 100%;
	margin-left: -250px;
	background: #000;
	overflow-x: hidden;
	overflow-y: auto;
}

#page-content-wrapper {
	width: 100%;
	padding: 20px;
}
/* 사이드바 스타일 */
.sidebar-nav {
	width: 250px;
	margin: 0;
	padding: 0;
	list-style: none;
}

.sidebar-nav li {
	text-indent: 1.5em;
	line-height: 2.8em;
}

.sidebar-nav li a {
	display: block;
	text-decoration: none;
	color: #999;
}

.sidebar-nav li a:hover {
	color: #fff;
	background: rgba(255, 255, 255, 0.2);
}

.sidebar-nav>.sidebar-brand {
	font-size: 1.3em;
	line-height: 3em;
}

.navi li ul {
	background: #999999;
	display: none;
}

.navi li ul li a {
	margin-left: 20%;
	text-indent: 1.2em;
	line-height: 2.3em;
	color: pink;
}

.navi li:hover ul {
	transition: all 1s;
	-ms-transitipm: all 1s;
	-webkit-transitipm: all 1s;
	-moz-transitipm: all 1s;
	transition: all 1s;
	display: block;
}

.sidebar-nav li ul a {
	display: block;
	text-decoration: none;
	color: white;
}

.navi li a {
	transition: all 1s;
	-ms-transitipm: all 1s;
	-webkit-transitipm: all 1s;
	-moz-transitipm: all 1s;
}
</style>
<body>
	<div>
		<jsp:include page="../common/hpmanager.jsp" />
	</div>

	<div id="test1" class="full-width">
		<div class="row">

			<div id="page-wrapper">
				<!-- 사이드바 -->
				<div id="sidebar-wrapper">
					<ul class="sidebar-nav navi">
						<li class="sidebar-brand"><a href="#">인력관리</a></li>
						<li><a href="#">계약 업체 정보</a>
							<ul>
								<li><a href="#">근무자 신고</a></li>
								<li><a href="#">시설 신고</a></li>
							</ul></li>
						<li><a href="#">근무자 정보</a>
							<ul>
								<li><a href="#">근무자 신고</a></li>
								<li><a href="#">시설 신고</a></li>
							</ul></li>
						<li><a href="#">신고 처리 현황</a>
							<ul>
								<li><a href="#">근무자 신고</a></li>
								<li><a href="#">시설 신고</a></li>
							</ul></li>
						<li><a href="#">채무</a></li>
					</ul>
				</div>

				<!-- 본문은 여기에만! -->
				<div class="col-md-8">
					
				</div>



			</div>

		</div>



		<div>
			<jsp:include page="../common/footer.jsp" />
		</div>
</body>
</html>