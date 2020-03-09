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
	 height: 100%; 
	min-height:1100px;
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
	 height: 100%; 
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
	height: 100%;
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

.titleArea {
	margin-left: 10px;
}

#category {
	color: #2b6cae;
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
	text-align: left;
	width: 6%;
}

.board-content {
	border: 1px solid lightgray;
	margin: 10px;
	height: 100%;
	min-height: 500px;
}

#replyContent {
	border: 1px solid lightgray;
	min-height: 150px;
	width: 80%;
}

#comment_content {
	width: 80%;
}

#addReply {
	float: left;
}

#commValue {
	text-align: left;
	width: 20%;
}

#addReply {
	border: 1px solid lightgray;
	width: 80%;
	margin-top: 10px;
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
				<li><a href="boardList.do">커뮤니티 게시판</a></li>
				<br>
				<li><a href="noticeList.do">이벤트,공지사항</a>
						</li>
				<br>
				<li><a href="marketList.do"> 아파트 장터</a>
						</li>
				<br>
				<li><a href="bchattingLogin.do">실시간 채팅</a>
					</li>

			</ul>
		</div>


		<!-- Main -->

		<div id="main">
			<div class="ingu">
				<div id="line">
					<div id="headTitle">
						<h4>
							<span id="info">커뮤니티</span><span id="title1">아파트 입주자
								소모임입니다.</span>
						</h4>
					</div>
					<br>
					<div class="titleArea" align="left">
						<h3>
							<span id="category">${board.b_category }</span> <span>${board.b_title }</span>
						</h3>
					</div>

					<div class="tableArea">
						<table>
							<tr>
								<td id="kokoko">작성자</td>
								<td id="commValue">${board.m_id }</td>
								<td id="kokoko">조회수</td>
								<td id="commValue">${board.b_count }</td>
							</tr>
						</table>
					</div>

					<div class="tableArea">
						<table>
							<tr>
								<td id="kokoko">작성일</td>
								<td id="commValue">${board.b_create_date }</td>
								<input type="hidden" value="${board.b_code }">
								<td id="kokoko">첨부파일</td>

								<td id="commValue"><c:if
										test="${ !empty board.orignal_filename }">

										<a
											href="${contextPath}/resources/buploadFiles/${board.rename_filename }"
											download> ${board.orignal_filename} </a>
									</c:if></td>
							</tr>

						</table>
					</div>

					<div class="board-content">
						<p>${board.b_content }</p>
					</div>

					<c:url var="boardDelete" value="boardDelete.do">
						<c:param name="b_code" value="${board.b_code }" />
						<c:param name="b_name" value="${board.b_name }" />
					</c:url>

					<c:url var="boardUpdateView" value="boardUpdateView.do">
						<c:param name="b_code" value="${board.b_code }" />
						<c:param name="page" value="${currentPage}" />
					</c:url>

					<c:url var="goDeInsert" value="deInsertView.do">
						<c:param name="b_code" value="${ board.b_code }" />
					</c:url>
					
					<c:if test="${board.b_name eq '커뮤니티' }">
                  		<c:set var="toList" value="boardList.do" />
               		</c:if>
               		<c:if test="${board.b_name eq '공지사항,이벤트' }">
                  		<c:set var="toList" value="noticeList.do" />
              		</c:if>               
               		<c:if test="${board.b_name eq '아파트장터' }">
                  		<c:set var="toList" value="marketList.do" />
               		</c:if>

					<button type="button"
						onclick="window.open('${ goDeInsert }', '신고사유','width=700,height=900, left=500, top=150')">신고하기</button>
					<button type="button" onclick="location.href='${toList }'">이전으로</button>
					<c:if test="${loginUser.mId eq board.m_id }">
						<button onclick="location.href='${boardDelete }'">삭제하기</button>
						<button onclick="location.href='${boardUpdateView }'">수정하기</button>
					</c:if>
				</div>
				<br>
				
				<div id="addReply">
					<table>
						<tr>
							<td colspan="3"><textarea rows="3" cols="90" id="r_content"
									style="resize: none;"></textarea></td>
							<td>
								<button id="rSubmit">등록하기</button>
							</td>
						</tr>
					</table>
				</div>
				<br>
				<br>
				
				<!-- 댓글 목록 보기, ajax 이후 구현 -->
				<div id="addReply">
					<table id="replyTable">
						<thead>
							<tr>
								<td colspan="4"><b id="rCount"></b></td>
							</tr>
						</thead>
						<tbody>
							<!-- ajax로 이 부분 체우기 -->
						</tbody>
					</table>
					
				</div>
				
				<script>
		$(function(){
			// 초기 페이지 로딩 시 댓글 불러오기
			getReplyList();
			
			// 타 회원이 작성한 댓글도 지속적으로 불러오기 위한 요청
			setInterval(function(){
				getReplyList();
			}, 10000);
			
			// 댓글 등록 ajax
			$("#rSubmit").on("click", function(){
				var r_content = $("#r_content").val();
				var b_code = ${ board.b_code };
				// loginUser는 세션에서 뽑을 수 있으므로 따르 변수로 저장해서 보내지 않아도 된다.
				
				$.ajax({
					url:"addReply.do",
					data:{r_content:r_content, b_code:b_code},
					type:"post",
					success:function(data){
						if(data == "success"){
							// 댓글 등록 성공 시 다시 댓글 리스트 불러오기
							getReplyList();
							// 댓글 창 비워주기
							$("#r_content").val("");
						}
					},
					error:function(){
						console.log("ajax 통신 실패");
					}
				});
			});
		});
		
		// 댓글 리스트 불러오는 ajax 함수
		function getReplyList(){
			var b_code = ${ board.b_code };
			$.ajax({
				url:"rList.do",
				async:false,
				data:{b_code:b_code},
				dataType:"json",
				success:function(data){
					$tableBody = $("#replyTable tbody");
					$tableBody.html("");
					$("#rCount").text("댓글(" + data.length + ")");
					
					if(data.length > 0){
						for(var i in data){
							
							$tr = $("<tr>");
							$m_id = $("<td width='100'>").text(data[i].m_id);
							$r_content = $("<td>").text(data[i].r_content);
							$r_create_date = $("<td width='80'>").text(data[i].r_create_date);
							
							$tr.append($m_id);
							$tr.append($r_content);
							$tr.append($r_create_date);
							 if(data[i].m_id == "${loginUser.mId}"){
									$delete = $("<td width='100'>").html("<button class='btn2' onclick='deletebtn("+ data[i].r_code+");'>삭제</button>");
									$tr.append($delete);
								} 
							
							$tableBody.append($tr);
						}
					}else{
						$tr = $("<tr>");
						$r_content = $("<td colspan='3'>").text("등록된 댓글이 없습니다.");
						$tr.append($r_content);
						$tableBody.append($tr);
					}
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});			
		}
		
		// 댓글 삭제
		 function deletebtn(value) {
			$.ajax ({
				url:"rDelete.do",
				data:{r_code:value},
			
				success:function(data){
					if(data == "success") {
						alert("댓글이 삭제 됐습니다.")
						getReplyList();
					}
				},
				error:function(){
				console.log("ajax 통신 실패");
				}
			});
		} 
	</script>
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