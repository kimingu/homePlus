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
	margin-left: 10px;
	text-align: left;
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
	min-height: 650px;
	display: flex;
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
	float: right;
}

#line {
	border: 1px solid lightgray;
	width: 60%;
	height: 600px;
	margin-top: 10px;
}

#board-content {
	border: 1px solid white;
	margin: 10px;
	margin-top: 1px;
}

#line2 {
	border: 1px solid lightgray;
	width: 30%;
	height: 600px;
	margin-top: 10px;
	margin-left: 20px;
	float: letf;
}

#info-line2 {
	margin: 10px;
}

#subject {
	margin:10px;
	font-size: 20px;
	border: 0;
}

#insert-btn {
	height:200%;
	margin-top: 340px;
}

#insertFile {
	margin-top: 20px;
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
	<form action="boardUpdate.do" method="POST" encType="Multipart/form-data" onsubmit="return Validate();">
	<input type="hidden" name="b_code"value="${b.b_code }">
	<input type="hidden" name="rename_filename" value="${b.rename_filename}">
	<input type="hidden" name="orignal_filename" value="${b.orignal_filename }">
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
					<div id="line">
						<div id="headTitle">
							<h4>
								<a id="title">게시글 수정 </a><span id="title1">아파트 입주자
									소모임입니다.</span>
							</h4>
						</div>

						<div id="board-title">
							<input type="text" class="input-title" id="subject"
								 name="b_title" style="width: 97%;" value="${b.b_title }">
						</div>


						<div id="board-content">
						<textarea id="summernote" name="b_content">
							${b.b_content }
						</textarea>
						</div>

						<script>
							$(document).ready(
									function() {

										$('#summernote').summernote(
												{

													height : 420, // 에디터의 높이 

													minHeight : 420,

													maxHeight : 420,

													focus : true,

													lang : 'ko-KR',

													onImageUpload : function(
															files, editor,
															welEditable) {
														sendFile(files[0],
																editor,
																welEditable);
													}

												});

									});

							var postForm = function() {

								var contents = $('textarea[name="contents"]')
										.html($('#summernote').code());

							}
						</script>
					</div>
					<div id="line2">
						<div id="info-line2">
							<span>게시판 선택</span>
							<div>
								<select style="width: 90%" id="insertboard" name="b_name"
									onchange="optionChange()">
									<option value="——">——</option>
									<option value="커뮤니티">커뮤니티</option>
									<option value="공지사항,이벤트">공지사항,이벤트</option>
									<option value="아파트장터">아파트 장터</option>
								</select>
							</div>
						</div>
						<hr>
						<div id="info-line2">
							<span>카테고리 선택</span>
							<div>
								<select id="insertCategory" name="b_category"
									style="width: 90%">
									<option>——</option>
									<option>——</option>
									<option>——</option>
									<option>——</option>
									<option>——</option>
									<option>——</option>
								</select>

								<div id="insertFile">
									<span>파일첨부</span> <input type="file" name="reloadFile">
									<c:if test="${!empty b.rename_filename }">
									<br>현재 업로드한 파일: 
									<a href="${contextPath }/resources/buploadFiles${b.rename_filename}" download>
										${b.rename_filename }
									</a>
									</c:if>
								</div>

								<script>
									function optionChange() {
										var cmBoard = [ "——", "잡담", "질문", "정보",
												"후기" ];
										var cmBoardVal = [ "——", "잡담", "질문",
												"정보","후기" ];

										var noBoard = [ "——", "공지사항", "이벤트" ];
										var noBoardVal = [ "——", "공지사항", "이벤트" ];
										
										var maBoard = ["——","팝니다","삽니다"];
										var maBoardVal = ["——","팝니다","삽니다"]

										var selectOption = $('#insertboard')
												.val();

										var changeOption;
										var optionVal;

										if (selectOption == "커뮤니티") {
											changeOption = cmBoard;
											optionVal = cmBoardVal;
										} else if (selectOption == "공지사항,이벤트") {
											changeOption = noBoard;
											optionVal = noBoardVal;
										} else if (selectOption == "아파트장터"){
											changeOption = maBoard;
											optionVal = maBoardVal;
											
										}else {
											changeOption = [ "——", "——", "——",
													"——", "——", "——" ];
											optionVal = [ "——", "——", "——",
													"——", "——", "——" ];
										}

										$('#insertCategory').empty();

										for (var i = 0; i < changeOption.length; i++) {
											var option = $("<option" + " value='" + optionVal[i] + "'>"
													+ changeOption[i]
													+ "</option>");
											$('#insertCategory').append(option);
										}
									}
								</script>
							</div>

						</div>
						<div id="insert-btn" align="center">
							<hr>
							<button id="submit" type="submit">수정하기</button>
							<button type="button" onclick="javascript:history.back();">취소하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
    function Validate(){
             var content = $("#summernote").val();
            
         if($("#insertboard").val()=="——"|| $("#insertCategory").val()=="——"){
            alert("게시글 작성을 전부 선택해 주세요!");
            return false;
            }

         
         if($("#subject").val().trim()==''){
            alert("글 제목을 적어주세요!");
         return false;
         }
         if (content.trim() == ''){
            alert("내용을 입력해주세요");
            return false;
         }
          }
      
         </script>
	</form>
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