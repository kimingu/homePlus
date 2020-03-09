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
	background-color: white;
}

#test2 {
	border: 1px solid;
	height: 1200px;
}

#sidebar-wrapper {
	position: fixed;
	width: 250px;
	height: 1200px;
	border:1px solid black;
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

.ttable {
	width: 1200px;
	height: 550px;
	overflow-x: auto;
	margin-left:13%;
}

.table {
	border-collapse: collapse;
	border-top: 3px solid #168;
	text-align: center;
	height: 500px;
}

.table th {
	color: #168;
	background: #f0f6f9;
	text-align: center;
}

.table th, .table td {
	padding: 10px;
	border: 1px solid #ddd;
}

.table th:first-child, .table td:first-child {
	border-left: 0;
}

.table th:last-child, .table td:last-child {
	border-right: 0;
}

.table tr td:first-child {
	text-align: center;
}

.table caption {
	caption-side: bottom;
	display: none;
}

form {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-ms-flex-direction: row;
	flex-direction: row;
	/* position: absolute; */
	top: 50px;
	width: 70%;
	padding-top: 150px;
}

fieldset {
	position: relative;
}

.fa-search {
	position: relative;
	top: 0px;
	font-size: 20px !important;
}

.url {
	margin: 20px 50px;
	-webkit-box-flex: 5;
	-ms-flex-positive: 5;
	flex-grow: 5;
}

.enter {
	margin: 20px 20px;
	-webkit-box-flex: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}





.search {
	margin-left: 550px;
}

.page_wrap {
	text-align: center;
	font-size: 0;
}

.page_nation {
	display: inline-block;
}

.page_nation .none {
	display: none;
}

.page_nation a {
	display: block;
	margin: 0 3px;
	float: left;
	border: 1px solid #e6e6e6;
	width: 28px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	background-color: #fff;
	font-size: 13px;
	color: #999999;
	text-decoration: none;
}

.page_nation .arrow {
	border: 1px solid #ccc;
}

.page_nation .pprev {
	background: #f8f8f8 url('resources/page/images/page_pprev.png')
		no-repeat center center;
	margin-left: 0;
}

.page_nation .prev {
	background: #f8f8f8 url('resources/page/images/page_prev.png') no-repeat
		center center;
	margin-right: 7px;
}

.page_nation .next {
	background: #f8f8f8 url('resources/page/images/page_next.png') no-repeat
		center center;
	margin-left: 7px;
}

.page_nation .nnext {
	background: #f8f8f8 url('resources/page/images/page_nnext.png')
		no-repeat center center;
	margin-right: 0;
}

.page_nation a.active {
	background-color: #42454c;
	color: #fff;
	border: 1px solid #42454c;
}

.button {
	margin-left: 80%;
}
</style>
<body>
	<div>
		<jsp:include page="../common/hpmanager.jsp" />
	</div>

	<div id="test1" class="full-width">
		<div class="row" style="margin-left:240px;border-left: solid 5px #F2F2F2;">

			<div id="page-wrapper">
				<!-- 사이드바 -->
				<!-- 본문은 여기에만! -->
				<div style="margin-bottom:5%;">
					<br>
					<h2>재무 정보</h2>
					<br>
					<div class="ttable">
						
						<select id="searchCondition" name="searchCondition">
								<option value="all"
									<c:if test="">selected</c:if>>
									-연도-</option>
								<option value="wrtier"
									<c:if test="">selected</c:if>>
									2018</option>
								<option value="title"
									<c:if test="">selected</c:if>>
									2019</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									2020</option>
						</select> 
						
						<select id="searchCondition" name="searchCondition">
								<option value="all"
									<c:if test="">selected</c:if>>
									-월-</option>
								<option value="wrtier"
									<c:if test="">selected</c:if>>
									1월</option>
								<option value="title"
									<c:if test="">selected</c:if>>
									2월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									3월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									4월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									5월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									6월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									7월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									8월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									9월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									10월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									11월</option>
								<option value="content"
									<c:if test="">selected</c:if>>
									12월</option>
							</select> 
						
						<table class="table">
							<tr>
								<th>순번</th>
								<th>입력날짜</th>
								<th>내역</th>
								<th>금액</th>
							</tr>
							<tr onclick="document.location.href='cdetail.do'">
								<td>1</td>
								<td>2020-01-01</td>
								<td>주차장 센서등</td>
								<td>50,000</td>
							</tr>
							<tr onclick="document.location.href='cdetail.do'">
								<td>1</td>
								<td>2020-01-01</td>
								<td>주차장 센서등</td>
								<td>50,000</td>
							</tr>
							<tr onclick="document.location.href='cdetail.do'">
								<td>1</td>
								<td>2020-01-01</td>
								<td>주차장 센서등</td>
								<td>50,000</td>
							</tr>
							
						</table>
						
						<div>
								(?)월 합계 : 1,000,000,000
							</div>
					</div>
					<script>
						$(".table tr").mouseover(function() {
							$(this).css({
								"background" : "lightgray",
								"cursor" : "pointer"
							});
						}).mouseleave(function() {
							$(this).css({
								"background" : "white"
							});
						});
					</script>
					<br>
					<button class="button" onclick="location.href='cinsertView.do'">등록하기</button><br>
					<div class="page">
						<div class="page_wrap">
							<div class="page_nation">
								<a class="arrow pprev" href="#"></a> <a class="arrow prev"
									href="#"></a> <a href="#" class="active">1</a> <a href="#">2</a>
								<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a
									href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a>
								<a href="#">10</a> <a class="arrow next" href="#"></a> <a
									class="arrow nnext" href="#"></a>
							</div>
						</div>
					</div>
					<br>

				</div>



			</div>

		</div>
	</div>

</body>
</html>