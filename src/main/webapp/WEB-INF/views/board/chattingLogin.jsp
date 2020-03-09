<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>
<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="stylesheet" href="resources/select/css/selectStyle.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<link rel="stylesheet" href="resources/readingRoom/css/reading.css">

<style>
#total {
	width: 100%;
	background-color: #F6F6F6;
	display: flex;
}

#side-bar {
	margin-left: 0.2%;
	margin-top: 85px;
	width: 18%;
	border: 1px solid #efefef;
	background-color: #FFFFFF;
}

#sidebarTitle {
	margin-top: 20px;
	text-align: center;
	padding-top: 10px;
	border-bottom: solid 1px #E2E2E2;
	margin-left: 10%;
	margin-right: 10%;
	width: 80%;
}

#main {
	margin-left: 0.2%;
	margin-top: 85px;
	width: 82%;
	background-color: #FFFFFF;
	border: 1px solid #efefef;
	min-height:750px;
}

#test1 {
	margin: 0 auto;
	margin-top: 80px;
	height: 1200px;
	background-color: white;
}

#test2 {
	height: 1200px;
}

#headTitle {
	margin-top: 20px;
	text-align: left;
	padding-top: 10px;
	border-bottom: 1px solid #E2E2E2;
}

#list {
	margin-left: 40px;
}

#boardList {
	margin-top: 50px;
}

.ingu {
	background: white;
	padding-left: 25px;
	padding-right: 25px;
	/* width:1000px; */
	/* min-height: 1030px; */
}

.images1 {
	width: 100%;
	height: 300px;
	
}

#title1 {
	font-size: 14px;
}

#title {
	font-size: 25px;
}

.list_category {
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flexbox;
	display: -o-flex;
	display: flex;
	border-bottom: 1px solid #516B82;
	padding: 5px 0;
}

.list_category .category_item {
	/* padding: 2px 10px; */
	/*  margin: 8px 0; */
	border-right: 1px solid rgba(0, 0, 0, 0.1);
}

.category_item {
	margin: 8px 30px 8px 30px;
	padding-left: 50px;
	padding-right: 50px;
}

/* 리스트 css  */
.sub_news a {
	color: #383838;
	text-decoration: none
}

.sub_news th {
	padding: 5px 0 6px;
	border-top: solid 1px #999;
	border-bottom: solid 1px #b2b2b2;
	background-color: #f1f1f4;
	color: #333;
	font-weight: bold;
	line-height: 20px;
	vertical-align: top
}

.sub_news td {
	padding: 8px 0 9px;
	border-bottom: solid 1px #d2d2d2;
	text-align: center;
	line-height: 18px;
}

.sub_news .date, .sub_news .hit {
	padding: 0;
	font-family: Tahoma;
	font-size: 11px;
	line-height: normal
}

/* button {
   background-color:blue;
} */
#insert {
	width: 25%;
}

#contentTitle {
	text-align: center;
}

li {
	color: black;
}

#line_foot {
	display: flex;
	width: 100%;
}

#searchArea {
	width: 27%;
}

#paignArea {
	width: 50%;
}

.main2 {
	width: 49%;
	height:300px;
	border: 1px solid #E2E2E2;
	/* display:inline-block;  */
	float:left;

	
	
}

.main3 {
	width: 49%;
	height:300px;
	border: 1px solid #E2E2E2;
	/* display:inline-block; */ 
		
	float:right;
}

.main4{
	/* display:inline-block;  */
	/*  float:left; */
}

.title5{
color:black;
}

</style>



</head>
<body>


	<div>
		<jsp:include page="../common/menubar.jsp" />
	</div>

	<div id="total">
		<!-- SIDE-BAR -->
		<div id="side-bar">
			<ul>
				<div id="sidebarTitle">
					<h3>
						<a id="title">게시판</a>
					</h3>
				</div>

				<br>
				<li><a class="title5" href="boardList.do">커뮤니티 게시판</a></li>
				<br>
				<li><a class="title5" href="noticeList.do">이벤트,공지사항</a>
						</li>
				<br>
				<li><a class="title5" href="marketList.do"> 아파트 장터</a>
						</li>
				<br>
				<li><a class="title5" href="bchattingLogin.do">실시간 채팅</a>
					</li>
			</ul>
		</div>


		<!-- Main -->
		<div id="main">
			<div class="ingu">
			
				<div id="headTitle">
					<h4>
						<a id="title">실시간 채팅 로그인 </a><span id="title1">아파트 입주자
							채팅방입니다.</span>
					</h4>
				</div>
				<br>
				<div class="images1">
					<img src="resources/board/images/chatting.jpg" width="100%"
						height="100%">
				</div>
				<br>
				
				<div class="main4">
				
					<div class="main2">
					<br>
						<a id="title">주의사항</a>	
						
							<div>
							<br>	
								<h4 class="fontWeight-600 display-inlnine-block">1.욕설 사용 금지입니다.</h5> &nbsp;&nbsp;											
						</div>
						
						<div>
								<h4 class="fontWeight-600 display-inlnine-block">2.시비 금지입니다.</h5> &nbsp;&nbsp;											
						</div>
						
						<div>
								<h4 class="fontWeight-600 display-inlnine-block">3.도배 금지입니다.</h5> &nbsp;&nbsp;											
						</div>
						
						<div>
								<h4 class="fontWeight-600 display-inlnine-block">4.홍보 금지입니다.</h5> &nbsp;&nbsp;											
						</div>
						
						<div>
								<h4 class="fontWeight-600 display-inlnine-block">5.종교,정치 얘기 금지입니다.</h5> &nbsp;&nbsp;											
						</div>
					
					
					</div>
					
					<div class="main3">
						<form action="${pageContext.request.contextPath }/chatting.do" method="post">
						<br>
							<label>닉네임 입력 : <input type="text" name="userName" id="userName"></label>
							<input type="submit" value='입장'/>
						</form>
					</div>
				</div>
				<br>
				
			</div>
		</div>
	</div>

	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>