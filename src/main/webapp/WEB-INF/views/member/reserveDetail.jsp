f<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
	rel="stylesheet">

<style>
#total {
	width: 100%;
	background-color: #F6F6F6;
	display: flex;
}

		#side-bar {
			margin-left: 0.2%;
			margin-top: 85px;
			width: 13%;
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

#sidebarTitle {
	margin-top: 20px;
	text-align: center;
	padding-top: 10px;
	border-bottom: solid 1px #E2E2E2;
	margin-left: 10%;
	margin-right: 10%;
	width: 80%;
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
	width: 97%;
	margin-left: 10px;
	text-align: left;
	padding-top: 10px;
	border-bottom: 1px solid #E2E2E2;
	text-align: left;
	margin-left: 10px;
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
	min-height: 650px; 
	
	height:100%;
	
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

#line {
	border: 1px solid lightgray;
	width: 80%;
	height:100%;
	min-height: 700px;
	margin-top: 10px;
}

#board-content {
	border: 1px solid white;
	margin: 10px;
	margin-top: 1px;
}

#subject {
	margin-top: 10px;
	font-size: 20px;
	border: 0;
}

#insert-btn {
	margin-top: 100%;
}

#insertFile {
	margin-top: 20px;
}

.tableArea {
	border: 1px solid lightgray;
	margin: 10px;
	height: 50px;
}

.titleArea{
	margin-left: 10px;
}

#category {
	color:#2b6cae;
}

#info {
	background: #444444;
	padding: 1px 5px;
	color: white;
	margin: 0px 3px 0px 0px;
	border-top-right-radius: 5px;
	border-top-left-radius: 5px;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
}

#kokoko {
text-align:left;
width:6%;
}

.board-content {
	border: 1px solid lightgray;
	margin: 10px;
	height:100%;
	min-height:500px; 
}

#replyContent{
border: 1px solid lightgray;
min-height:150px; 
width:80%;
}

#comment_content {
	width: 80%;
}

#addReply {
float:left;

}

#commValue {
	text-align:left;
	width:20%;
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
				<li><a href="#"></a> <span class="category-title">커뮤니티
							게시판 >></span></li>
				<br>
				<li><a href="#"> </a><span class="category-title">이벤트,공지사항
							>></span></li>
				<br>
				<li><a href="#"></a> <span class="category-title">아파트 장터
							>></span></li>
				<br>
				<li><a href="#"></a> <span class="category-title">투표,설문조사
							>></span></li>
				<br>
				<li><a href="#"> </a><span class="category-title">실시간 채팅
							>></span></li>

			</ul>
		</div>


		<!-- Main -->

		<div id="main">
			<div class="ingu">
				<div id="line">
					<div class="titleArea" align="left">
						<h3>
						<span>시설 이용</span>
						</h3>
					</div>

					<c:choose>
						<c:when test="${mr.cvName eq 'rr' }">
							<c:set var="cvName" value="도서실" />
						</c:when>
						<c:when test="${mr.cvName eq 'hr' }"> 
							<c:set var="cvName" value="헬스장" />
						</c:when>
					</c:choose>

					<div class="tableArea">
						<table>
							<tr>
								<td id="kokoko">시설명</td>
								<td id="commValue">${cvName }</td>
							</tr>
						</table>
					</div>
					
					<div class="tableArea">
					<table>
							<tr>
								<td id="kokoko">예약일</td>
								<td id="commValue">${mr.startDate }</td>
								<td id="kokoko">종료일</td>
								<td id="commValue">${mr.endDate }</td>
							</tr>
							
						</table>
					</div>
					
					 <div class="board-content">
					 <p>${board.b_content }</p>
					</div> 
					
					<c:url var="boardDelete" value="boardDelete.do">
						<c:param name="b_code" value="${board.b_code }"/>
						<c:param name="b_name" value="${board.b_name }"/>
					</c:url>
					
					<c:url var="boardUpdateView" value="boardUpdateView.do">
						<c:param name="b_code" value="${board.b_code }"/>
						<c:param name="page" value="${currentPage}"/>
					</c:url>
					
					<c:url var="goDeInsert" value="deInsertView.do">                        
						<c:param name="b_code" value="${ board.b_code }"/>    
					</c:url>
					
                    <button type="button" onclick="window.open('${ goDeInsert }', '신고사유','width=700,height=900, left=500, top=150')">신고하기</button>
					<button type="button" onclick="javascript:history.back();">이전으로</button>
					 <c:if test="${loginUser.mId eq board.m_id }"> 
						<button onclick="location.href='${boardDelete }'">삭제하기</button>
						<button onclick="location.href='${boardUpdateView }'">수정하기</button>
					 </c:if> 
				</div>
				<br>
				
			
				
				<div id="replyContent">
					<div id="comment_content" style="float:left;">

			<textarea id="replyContent" style="resize: none;"></textarea>
		</div>
		<div style="width:19%; height:100%; float:left; padding:30px 0 0 30px;">
		<button id="addReply">댓글등록</button>
		</div>
				</div>
				<br>
			</div>
		</div>
	</div>


	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>

	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
</body>
</html>