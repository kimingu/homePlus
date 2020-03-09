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


<link rel="stylesheet" href="resources/myPage/css/style.css">
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
	
	div.col-md-2.margin-10 {
		border: 1px solid #E2E2E2;
		border-radius: 2px;
		height: 185px;
	}
	
	 div.col-md-11.margin-10 {
		border: 1px solid #E2E2E2;
		border-radius: 2px;
		height: 50px;
		text-align: center;
		font-weight: 600;
		padding: 15px;
		
	}
	
	div.textAlign-center {
		border: 1px solid #E2E2E2;
		border-radius: 2px;
		font-size: 25px;
		padding: 10px;
		font-weight: 600;
		width: 66%;
		margin-left: 18%
	}
	
	
	div.col-md-4.margin-10 {
		border: 1px solid #E2E2E2;
		border-radius: 2px;
	}
	
	.btn.btn-sm {
		border: 1px solid #E2E2E2;
		border-radius: 2px;
		margin: 5px 0;
		display: none;
	}
	
	p.card-text {
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: pre-line;
		text-align: left;
	}
	
	#memoContent{
		min-height: 200px;
		width: 80%;
	}
	
	
	.btn-alt.small.active.margin-null {
		height: 90px;
		font-size: 15px;
		font-weight: 600;
	}
	
	
	#memoInsertForm {
		margin-left: 21%;
		display: none;
	}
	
	textarea[id*="memoUpdate"] {
		min-height: 80px;
		width: 100%;
		display: none;
	}
	
	form[id*="update"] {
		display: none;
	}
	
	.height-145 {
		height: 145px;
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
						<a href="javascript:location.reload()" id="title">메모</a>
					</h4>

				</div>

				<br>

				<div class="boardArea">


					<!-- 메모 -->
					<div class="container">
						<div class="row">
							<div class="textAlign-center">
								메모 작성						
							</div>
							
							

							<form class="col-md-8" id="memoInsertForm" action="insertMyMemo.do">
							<!-- 
							<div class="col-md-8" id="memoInsertForm">
							 -->
								<textarea name="memoContent" id="memoContent" onkeyup="areaResize(this)"></textarea>
								
								
								<a onclick="submitMemo()" class="btn-alt small active margin-null">작<br>성</a>
							</form>
							<!-- 
							</div>
							 -->
						</div>
						<div class="row paddingLeft-10p marginBottom-100">
							
							<c:if test="${msg eq '등록된 메모가 없습니다' }">
								<div class="col-md-11 margin-10">
									${msg }
								</div>
							</c:if>
							<c:if test="${empty msg }">
								<c:forEach var="i" items="${memoList }">
									<div class="col-md-2 margin-10" id="memoForm${i.mmeCode }">
										<div class="card mb-4 shadow-sm">
											<div class="card-body">												
												<p class="card-text marginTB-5 height-145">${i.mmeContent }</p>	
												
												<textarea name="memoUpdate" id="memoUpdate${i.mmeCode }" onkeyup="areaResize(this)">${i.mmeContent }</textarea>
												<form action="updateMemo.do" method="post">
													<input type="hidden" name="mmeContent"/>
													<input type="hidden" name="mmeCode" value="${i.mmeCode }"/>
												</form>
												<div>
													<button id="delete${i.mmeCode }" type="button" class="btn btn-sm btn-outline-secondary floatLeft">삭제</button>
													<button id="update${i.mmeCode }" type="button" class="btn btn-sm btn-outline-secondary floatLeft">수정</button>
													
													<script>
														var memoForm = document.getElementById("memoForm${i.mmeCode}");
														var deleteBtn = document.getElementById("delete${i.mmeCode}");
														var updateBtn = document.getElementById("update${i.mmeCode}");		
														var textForm = document.getElementById("memoUpdate${i.mmeCode}")													
														
														
														memoForm.addEventListener("click", changeMemoForm, false);
														deleteBtn.addEventListener("click", deleteMemo, false);
														updateBtn.addEventListener("click", updateMemo, false);
														
														textForm.addEventListener("click", function(e) {
															e.stopPropagation();
														}, false);
														
														
														
														function changeMemoForm(e) {
															e.stopPropagation();
															var flag = $(this).hasClass("col-md-2");
															
															$("textarea[id*='memoUpdate']").css("display", "none");
															$("p.card-text").css("display", "block");
															$("div.col-md-4.margin-10").removeClass("col-md-4").addClass("col-md-2");
															$(".card-text").addClass("height-145").removeClass("minHeight-80");
															$(".btn.btn-sm").css("display", "none");
															
															
															if (flag === true) {

																$(this).removeClass("col-md-2").addClass("col-md-4");
																$(this).find(".card-text").removeClass("height-145").addClass("minHeight-80");
																$(this).find(".btn.btn-sm").css("display", "inline");							
															} else {
																if($(this).find("textarea").css("display") == "block") {
																	$(this).find("textarea").css("display", "none");
																	$(this).find("p").css("display", "block");
																}
																
																
																$(this).removeClass("col-md-4").addClass("col-md-2");
																$(this).find(".card-text").addClass("height-145").removeClass("minHeight-80");
																$(this).find(".btn.btn-sm").css("display", "none");	

															}
														}
														
														function deleteMemo(e) {
															e.stopPropagation();
															if($(this).attr("id").indexOf("delete") !== -1) {
																location.href="deleteMemo.do?mmeCode=${i.mmeCode}";																
															}else {
																
																$(this).text("삭제").attr("id", "delete${i.mmeCode}");
																$(this).parent().siblings("p").css("display", "block");
																$(this).parent().siblings("textarea").css("display", "none");
																
															}
															
														}
														
														function updateMemo(e) {
															e.stopPropagation();
															
															var pHeight = $(this).parent().siblings("p").css("height");
															var value = $(this).parent().siblings("textarea").val();		
															
															$(this).parent().siblings("form").find("input[name='mmeContent']").val(value);
															
															console.log($(this).parent().siblings("form").find("input[name='mmeContent']").val());
															
															if($(this).attr("flag")) {
																$(this).parent().siblings("form").submit();
																
																$(this).attr("flag", false);
															}else {
																$(this).prev().text("취소").attr("id", "cancel${i.mmeCode}");
																$(this).parent().siblings("p").css("display", "none");
																$(this).parent().siblings("textarea").css("display", "block").css("height", pHeight).focus().val("").val(value);
																
																$(this).attr("flag", true);
															}
															
														}
														
													</script>
													
													
													<div class="d-flex justify-content-between align-items-right floatRight">
														<small class="text-muted">${i.mmeDate }</small>
													</div>
												</div>
		
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
							
						</div>
					</div>
					<!-- 메모끝 -->

				</div>
			</div>


		</div>




	</div>




	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>


	<script>
	
	 	$(function() {		
			
			$("div.textAlign-center").on("click", function(){
				$(this).css("display", "none");
				$("#memoInsertForm").css("display", "block");
				
			})
			
			

		});
	 	
	 	
		function areaResize(obj) {
		  obj.style.height = "1px";
		  obj.style.height = (12+obj.scrollHeight)+"px";
		}
		
		
		function submitMemo() {
			var content = $("#memoContent").val();
			console.log(content);
			
			if(content != "") {
				/* 
				$.ajax({
					url: "insertMyMemo.do",
					data: {memoContent:content},
					success: function(data){
						var dataArray = data.list;
						console.log(data);
						console.log(dataArray);
						for(var i in dataArray) {
							console.log(dataArray[i]);
						}
						
					},
					error: function(e) {
						alert("error code : " + e.status + "message : " + e.responseText)
					}
				}); 
				*/
				
				$("#memoInsertForm").submit();
				
			}
			
			$("div.textAlign-center").css("display", "block");
			$("#memoInsertForm").css("display", "none");
			
			
		}
		
	</script>
</body>
</html>