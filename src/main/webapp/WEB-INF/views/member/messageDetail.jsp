<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, com.kh.homeplus.member.model.vo.MemberMessage"%>
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
		
		#main {
			margin-left: 0.2%;
			margin-top: 85px;
			width: 87%;
			background-color: #FFFFFF;
			border: 1px solid #efefef;
		}
		
		.left {
			background-image: url("resources/readingRoom/images/left/off-left.png");
			border-left: 6px double #2b6cae;
			border-top: 6px inset #2b6cae;
			border-bottom: 6px outset #2b6cae;
			border-top-left-radius: 0.3em;
			border-bottom-left-radius: 0.3em;
		}
		
		.right {
			background-image:
				url("resources/readingRoom/images/right/off-right.png");
			border-right: 6px double #2b6cae;
			border-top: 6px inset #2b6cae;
			border-bottom: 6px outset #2b6cae;
			border-top-right-radius: 0.3em;
			border-bottom-right-radius: 0.3em;
		}
		
		.top {
			background-image: url("resources/readingRoom/images/top/off-top.png");
			border-top: 6px double #2b6cae;
			border-right: 6px outset #2b6cae;
			border-left: 6px inset #2b6cae;
			border-top-left-radius: 0.3em;
			border-top-right-radius: 0.3em;
		}
		
		.bottom {
			background-image:
				url("resources/readingRoom/images/bottom/off-bottom.png");
			border-bottom: 6px double #2b6cae;
			border-right: 6px outset #2b6cae;
			border-left: 6px inset #2b6cae;
			border-bottom-left-radius: 0.3em;
			border-bottom-right-radius: 0.3em;
		}
		
		#door {
			background-image:
				url("resources/readingRoom/images/right/door-right.png");
		}
		
		#arrow {
			background-image:
				url("resources/readingRoom/images/left/left-arrow.png");
		}
		
		#ex1 {
			background-image:
				url("resources/readingRoom/images/bottom/off-bottom.png");
		}
		
		#ex2 {
			background-image:
				url("resources/readingRoom/images/bottom/on-bottom.png");
		}
		
		#test123 {
			
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
			margin-left: 10px;
			padding-top: 10px;
			border-bottom: 1px solid #E2E2E2;
			text-align: left;
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
			min-height: 1020px;
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
		
		.list_category {
			text-align: left;
		}
		
		.list_category .category_item {
			display: inline-block;
			margin: 15px 0;
			padding: 0 20px;
			border-right: 1px solid rgba(0, 0, 0, 0.1);
		}
		
		/* button {
			background-color:blue;
		} */
		#insert {
			float: right;
		}
		
		table th {
			text-align: center !important;
		}
		
		#mmContent {
			min-height: 300px;
			border: 1px solid #E2E2E2;
			padding: 5px;
			border-radius: 5px;
		}
	</style>
	


</head>
<body>


	
	<c:if test="${check eq 1 }">			
		<c:if test="${searchValue ne null }">
			<c:url var="returnList" value="searchReceiveMsg.do">
				<c:param name="curPage" value="${curPage }" />
				<c:param name="searchValue" value="${searchValue }" />
				<c:param name="searchCondition" value="${searchCondition }" />
			</c:url>			
		</c:if>
		<c:if test="${serachValue eq null }">
			<c:url var="returnList" value="receiveMsg.do">
				<c:param name="curPage" value="${curPage }" />
			</c:url>
		</c:if>
	</c:if>
	
	<c:if test="${check eq 2 }">		
		<c:if test="${searchValue ne null }">
			<c:url var="returnList" value="searchWriteMsg.do">
				<c:param name="curPage" value="${curPage }" />
				<c:param name="searchValue" value="${searchValue }" />
				<c:param name="searchCondition" value="${searchCondition }" />
			</c:url>			
		</c:if>
		<c:if test="${searchValue eq null }">
			<c:url var="returnList" value="writeMsg.do">
				<c:param name="curPage" value="${curPage }" />
			</c:url>
		</c:if>			
	</c:if>		
						
	<c:if test="${check eq 0 }">
		<c:set var="returnList" value="myPage.do" />						
	</c:if>	


	<div>
		<jsp:include page="../common/menubar.jsp" />
	</div>

	<div id="total">
		<!-- SIDE-BAR -->
		<div id="side-bar">
			<ul>
				<div id="sidebarTitle">
					<h3>
						<a id="title">내 활동</a>
					</h3>
				</div>

				<br>
				<li><a href="receiveMsg.do"><span class="category-title">내 쪽지 >></span></a></li>
				<br>
				<li><a href="myMemo.do"><span class="category-title">내 메모 >></span></a></li>
				<br>
				<li><a href="myBoard.do"><span class="category-title">내 게시글>></span></a></li>
				<br>
				<li><a href="myReply.do"><span class="category-title">내 댓글 >></span></a></li>
				<br>
				<li><a href="myQues.do"><span class="category-title">내 건의 >></span></a></li>
				<br>
				<li><a href="myReserve.do"><span class="category-title">내 시설 이용 >></span></a></li>

			</ul>
		</div>

		<!-- Main -->
		<div id="main">
			<div class="ingu">

				<div id="headTitle">
					<h4>
						<a href="${returnList }" id="title">${msgDetail.mmTitle }</a>
					</h4>

				</div>

				<br>
				<div class="boardArea" style="text-align:left">
					<div class="card-box">
						<div>
							
							<div class="etcBtn">
								<div class="form-group">
									
									<div class="col-md-13">
										<c:if test="${check eq 1 }">
											<h4><b>보낸 사람 : </b>${msgDetail.mmWriter }</h4>
										</c:if>
										<c:if test="${check eq 2 }">
											<h4><b>받는 사람 : </b>${msgDetail.mmReceiver }</h4>
										</c:if>
									</div>
									<br>
									<div class="col-md-13">
										<h4><b>작성일 : </b>${msgDetail.mmDate }</h4>
									</div>
									
								</div>
							
								<div class="form-group">
									<div class="col-md-13">										
										<p id="mmContent">${msgDetail.mmContent }</div>
									</div>
								</div>
							</div>
							<br><br>
								
							<div id="sendBtn" style="text-align:center;">
								<a href="${returnList }" class="btn-alt small active margin-null fontWeight-400" style="background:white; color:#2b6cae">돌아가기</a>
								<a onclick="deleteMsg()" class="btn-alt small active margin-null fontWeight-400">삭제</a>
							</div>
						</div>
						<br><br>
					</div>
				</div>
				
				
			</div>


		</div>


	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
	
	<script>
		function deleteMsg(){	
			location.href="deleteMsg.do?mmCode=${msgDetail.mmCode}&check=${check}";
			
		}
	</script>
</body>
</html>