<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	width: 25%;
}

#paignArea {
	width: 50%;
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
						<a id="title" href="myQues.do">내 건의</a>
					</h4>
					
				</div>
				
				<br>

				<div class="boardArea">
					<table class="sub_news" border="1">
						<thead>
							<tr>
								<th width="100" id="contentTitle">건의번호</th>
								<th width="100" id="contentTitle">분류</th>
								<th width="500" id="contentTitle">건의제목</th>
								<th width="150" id="contentTitle">작성일</th>
								<th width="100" id="contentTitle">진행</th>
							</tr>
						</thead>

						<tbody>
							<c:if test="${empty bbList }">
								<tr>
									<td colspan="4">
										작성된 건의글이 없습니다
									</td>
								</tr>
							</c:if>						
							
							<c:if test="${!empty bbList }">
								<c:forEach var="b" items="${bbList }">
									<c:url var="myQuesDetail" value="myQuesDetail.do">
										<c:param name="bbCode" value="${b.bbCode }" />
										<c:param name="curPage" value="${pi.currentPage }" />
										<c:param name="check" value="2" />
									</c:url>
									<tr>
										<td>${b.bbCode }</td>
										<td>
											<c:if test="${b.bbCategory eq 1 }">
												시설
											</c:if>
											<c:if test="${b.bbCategory eq 2 }">
												인력
											</c:if>
											<c:if test="${b.bbCategory eq 3 }">
												편의시설 이용
											</c:if>
										</td>
										<td><a href="${myQuesDetail}">${b.bbTitle}</a></td>
										<td><fmt:formatDate value="${b.bbCreateDate }" type="date" /></td>
										<td>
											<c:if test="${b.bbStatus eq 'N'.charAt(0) }">
												처리전
											</c:if>
											<c:if test="${b.bbStatus eq 'L'.charAt(0) }">
												처리중
											</c:if>
											<c:if test="${b.bbStatus eq 'Y'.charAt(0) }">
												처리완료
											</c:if>
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>

<div id="line_foot">
	

	<div id="searchArea" style="text-align:left;">
		<form action="mySearchQues.do" name="searchForm" method="post">
			<select id="searchCondition" name="searchCondition">
				<option value="all" <c:if test="${ search.searchCondition == 'all' }">selected</c:if>>전체</option>
				<option value="writer" <c:if test="${ search.searchCondition == 'writer' }">selected</c:if>>분류</option>
				<option value="title"<c:if test="${ search.searchCondition == 'title' }">selected</c:if>>제목</option>
				<option value="content"<c:if test="${ search.searchCondition == 'content' }">selected</c:if>>내용</option>
			</select> 
			
			<input type="search" name="searchValue" value="${ search.searchValue }">
			<button type="submit">검색</button>
		</form>
	</div>


	<div id="paignArea" style="text-align:center;" >
		<tr align="center" height="20">
			<c:if test="${searchValue ne null }">
				<c:set var="loc" value="mySearchQues.do" />
			</c:if>
			<c:if test="${searchValue eq null }">
				<c:set var="loc" value="myQues.do" />				
			</c:if>
			
			<td colspan="6"><c:if test="${pi.currentPage == 1 }">
				[이전]
				</c:if> 
				<c:if test="${pi.currentPage > 1}">
					<c:url var="before" value="${loc }">
						<c:param name="curPage" value="${pi.currentPage - 1 }" />
						
						<c:if test="${searchValue ne null }">
							<c:param name="searchValue" value="${searchValue }" />
							<c:param name="searchCondition" value="${searchCondition }" />
						</c:if>
					</c:url>
				<a href="${before }">[이전]</a>
				</c:if> 
				<c:forEach var="i" begin="${pi.startPage }"
				end="${pi.endPage }">
				<c:if test="${pi.currentPage == i}">
					[${i }]
				</c:if>
					<c:if test="${pi.currentPage != i }">
						<c:url var="toPage" value="${loc }">
							<c:param name="curPage" value="${i }" />							
								
							<c:if test="${searchValue ne null }">
								<c:param name="searchValue" value="${searchValue }" />
								<c:param name="searchCondition" value="${searchCondition }" />
							</c:if>
						</c:url>
					
						<a href="${toPage }">[${i }]</a>
					</c:if>
				</c:forEach> 
				<c:choose>
				
					<c:when test="${pi.currentPage gt pi.maxPage}">
					[다음]
					</c:when>
					
					<c:when test="${pi.currentPage != pi.maxPage }">
						<c:url var="next" value="${loc }">
							<c:param name="curPage" value="${pi.currentPage + 1 }" />
							
							<c:if test="${searchValue ne null }">
								<c:param name="searchValue" value="${searchValue }" />
								<c:param name="searchCondition" value="${searchCondition }" />
							</c:if>
						</c:url>
						<a href="${next }">[다음]</a>
					</c:when>
				</c:choose>
			</td>
		</tr>
	</div>



</div>
				</div>
			</div>


		</div>
	</div>
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>