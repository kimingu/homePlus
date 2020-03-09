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
						<a href="receiveMsg.do" id="title">받은 쪽지</a>
					</h4>

				</div>

				<br>

				<div class="list_category ">
					<span class="category_item"> 
						<a href="receiveMsg.do">받은 쪽지</a>
					</span>
					<span class="category_item"> 
						<a href="writeMsg.do" class="current">보낸 쪽지</a>
					</span> 
				</div>

				<div class="boardArea">
					<table class="sub_news" border="1" align="center">
						<thead>
							<tr>
								<th align="center" width="300">제목</th>
								<th align="center" width="80">보낸 사람</th>
								<th align="center" width="90">날짜</th>
							</tr>
						</thead>
						<tbody>
							
							<c:if test="${empty msgList }">
								<tr>
									<td  colspan="3">받은 쪽지가 없습니다</td>
								</tr>
							</c:if>
							
							<c:if test="${!empty msgList }">
								<c:forEach var="i" items="${msgList }">
									<c:url var="mmsDetail" value="mmsDetail.do">
										<c:param name="mmCode" value="${i.mmCode }" />
										<c:param name="curPage" value="${pi.currentPage }" />
										<c:param name="check" value="1" />
										
										<c:if test="${searchValue ne null }">
											<c:param name="searchValue" value="${searchValue }" />
											<c:param name="searchCondition" value="${searchCondition }" />
										</c:if>										
									</c:url>
									<tr>
										<td class="title" style="padding-left: 30px;"><a href="${mmsDetail }">${i.mmTitle }</a></td>
										<td class="name">${i.mmWriter }</td>
										<td class="date">${i.mmDate }</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
						
												
						<tfoot>
							<c:if test="${searchValue eq null }">
								<c:set var="loc" value="receiveMsg.do" />
							</c:if>
							<c:if test="${searchValue ne null }">
								<c:set var="loc" value="searchReceiveMsg.do" />
							</c:if>
						
							<tr align="center" height="20">
								<td colspan="6">
									<c:if test="${pi.currentPage <= 1 }">
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
									
									<c:forEach var="i" begin="${pi.startPage }" end="${pi.endPage }">
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
										<c:when test="${pi.currentPage == pi.maxPage}">
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
						
						</tfoot>						
						
					</table>
	

				
					<div id="searchArea" align="center">
						<form action="searchReceiveMsg.do" name="searchForm" method="post">							
							
							<select id="searchCondition" name="searchCondition">
								<option value="all" 
									<c:if test="${searchCondition == 'all' }">selected</c:if>>
									전체
								</option>
								<option value="writer" 
									<c:if test="${searchCondition == 'writer' }">selected</c:if>>
									작성자
								</option>
								<option value="title"
									<c:if test="${searchCondition == 'title' }">selected</c:if>>
									제목
								</option>
								<option value="content"
									<c:if test="${searchCondition == 'content' }">selected</c:if>>
									내용
								</option>	
							</select>
							
							 <input type="search" name="searchValue" value="${searchValue }">
							<button type="submit">검색</button>


							<div id="insert">
								<a href="receiveMsgForm.do" class="btn-alt small active margin-null fontWeight-400">보내기</a>
							</div>
						</form>
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