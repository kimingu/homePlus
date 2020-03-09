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
	margin-top: 260px;
}

#insertFile {
	margin-top: 20px;
}
.x{
	display:none;
}
</style>



</head>
<body>

<script>
		<c:if test="${ !empty msg }">
			alert('${msg}');
			<c:remove var="msg"/>
		</c:if>
	</script>


	<div>
		<jsp:include page="../common/menubar.jsp" />
	</div>
	
		<div id="total">
			<!-- SIDE-BAR -->
			<div id="side-bar"></div>


			<!-- Main -->

			<div id="main">
			<form action="bulinsert.do" method="post" enctype="multipart/form-data" onsubmit="return Validate();">
				<div class="ingu">
					<div id="line">
					<input class="x" id="loginUserCode" name="mCode" value="${loginUser.mCode}">
						<div id="headTitle">
							<h4>
								<a id="title">건의 신고 </a><span id="title1">건의 신고를 할 수 있는 페이지입니다.</span>
							</h4>
						</div>

						<div id="board-title">
							<input type="text" class="input-title" id="subject"
								placeholder="제목을 입력하세요." name="bbTitle" style="width: 97%;">
						</div>


						<div id="board-content">
							<textarea id="summernote" name="bbContent">
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

							

												});

									});

							var postForm = function() {

								var contents = $('textarea[name="contents"]')
										.html($('#summernote').code());

							}
						</script>
					</div>
					<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
					<div id="line2">
						<div id="info-line2">
							<span>게시판 선택</span>
							
							
							<div>
								<select style="width: 90%" id="category" name="bbCategory" onchange="optionChange();">
									<option value="——">——</option>
									<option value="1">시설</option>
									<option value="2">인력</option>
									<option value="3">편의시설이용</option>
								</select>
							</div>
						</div>
						<hr>
						<div id="info-line2">
							<span>카테고리 선택</span>
							<div>
								<select id="Dcategory1" name="bbDcategory1" style="width: 90%" onchange="optionChange2();">
									<option value="">——</option>
								</select>
								<select id="Dcategory2" name="bbDcategory2" onchange="optionChange3();"
									style="width: 90%">
									<option value="">——</option>
								</select>
								<select id="Dcategory3" name="bbDcategory3" onchange="optionChange4();"
									style="width: 90%">
									<option value="">——</option>
								</select>
								<select id="Dcategory4" name="bbDcategory4"
									style="width: 90%">
									<option value="">——</option>
								</select>
								
								<div id="insertFile">
									<span>파일첨부</span> <input id="file" type="file" name="file" onclick="check();">
								</div>

								
								<div id="insert-btn" align="center">
								<hr>
									<button id="submit" type="submit">등록하기</button>
								</div>
							</div>

						</div>
						
					</div>
				</div>
				</form>
			</div>
		</div>
	
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
	
	<script>
		function check(){
			console.log($("#file").val());
			
		}
	</script>
	<script>
									function optionChange() {
										var F = [ "——", "아파트", "편의시설", "교통시설"];
										var FVal = [ "——", "1", "2","3"];
										;
									// 영현
									
										var M = [ "——", "미화", "경비","기타" ];
										var MVal = [ "——", "미화", "경비","기타" ];
										
									// 민후	
										var Con = ["——","독서실","헬스장","게스트룸"];
										var ConVal = ["——","독서실","헬스장","게스트룸"]

										var selectOption = $('#category').val();

										var changeOption;
										var optionVal;
										var changeOption2;
										var optionVal2;
										var FO =["——"]
										var FOVal = ["——"];
										if(selectOption == "——"){
											changeOption2 = FO;
											optionVal2 = FOVal;
											// 승호
										}else if (selectOption == "1") {
											changeOption = F;
											optionVal = FVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											//영현
										} else if (selectOption == "2") {
											changeOption = M;
											optionVal = MVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											//민후
										} else if (selectOption == "3"){
											changeOption = Con;
											optionVal = ConVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
										}else {
											changeOption = [ "——"];
											optionVal = [ "——" ];
										}

										$('#Dcategory1').empty();

										for (var i = 0; i < changeOption.length; i++) {
											var option = $("<option" + " value='" + optionVal[i] + "'>"
													+ changeOption[i]
													+ "</option>");
											$('#Dcategory1').append(option);
										}
										$('#Dcategory2').empty();

										for (var i = 0; i < changeOption2.length; i++) {
											var option = $("<option" + " value='" + optionVal2[i] + "'>"
													+ changeOption2[i]
													+ "</option>");
											$('#Dcategory2').append(option);
										}
										
										
										$('#Dcategory3').empty();
										
										for (var i = 0; i < changeOption2.length; i++) {
											var option = $("<option" + " value='" + optionVal2[i] + "'>"
													+ changeOption2[i]
													+ "</option>");
											$('#Dcategory3').append(option);
										}
										
										$('#Dcategory4').empty();
										
										for (var i = 0; i < changeOption2.length; i++) {
											var option = $("<option" + " value='" + optionVal2[i] + "'>"
													+ changeOption2[i]
													+ "</option>");
											$('#Dcategory4').append(option);
										}
										
									}
									
									function optionChange2(){
										var Fap = [ "동", "101", "102", "103", "104", "105", "106", "107","108"];
										var FapVal = [ "——", "101", "102", "103", "104", "105", "106", "107","108"];
										
										var Fcon = [ "——", "헬스장", "독서실", "게스트룸" ];
										var FconVal = [  "——", "1", "2", "3" ];
										
										var Ffa = ["——","주차장","도로","교통시설물"];
										var FfaVal = ["——","4","5","6"]
										
										var Map = [ "동", "101", "102", "103", "104", "105", "106", "107","108"];
										var MapVal = [ "——", "101", "102", "103", "104", "105", "106", "107","108"];
										
										var Metc =["——","편의시설직원","외부업체"];
										var MetcVal =["——","etc1","etc2"]
										
										var Cre = ["——","건의","신고"];
										var CreVal = ["——","건의","신고"];

										var selectOption = $('#Dcategory1').val();
										var selectOption2 = $('#category').val()

										var changeOption;
										var optionVal;
										
										var changeOption2;
										var optionVal2;
										var changeOption3;
										var optionVal3;
										
										var FO =["——"]
										var FOVal = ["——"];
										
										if (selectOption == "1" && selectOption2 == "1") {
											changeOption = Fap;
											optionVal = FapVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
											
										} else if (selectOption == "2"&& selectOption2 == "1") {
											changeOption = Fcon;
											optionVal = FconVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
										} else if (selectOption == "3"&& selectOption2 == "1"){
											changeOption = Ffa;
											optionVal = FfaVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
										}else if (selectOption == "독서실" && selectOption2 == "3") {
											changeOption = Cre;
											optionVal = CreVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
											
										} else if (selectOption == "헬스장"&& selectOption2 == "3") {
											changeOption = Cre;
											optionVal = CreVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
										} else if (selectOption == "게스트룸"&& selectOption2 == "3"){
											changeOption = Cre;
											optionVal = CreVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
										}else if (selectOption == "미화" && selectOption2 == "2") {
											changeOption = Map;
											optionVal = MapVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
											
										} else if (selectOption == "경비"&& selectOption2 == "2") {
											changeOption = Map;
											optionVal = MapVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
											
										} else if (selectOption == "기타"&& selectOption2 == "2"){
											changeOption = Metc;
											optionVal = MetcVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											}else{
											changeOption = [ "——"];
											optionVal = [ "——" ];
										}

										$('#Dcategory2').empty();

										for (var i = 0; i < changeOption.length; i++) {
											var option = $("<option" + " value='" + optionVal[i] + "'>"
													+ changeOption[i]
													+ "</option>");
											$('#Dcategory2').append(option);
										}
										
										
										$('#Dcategory3').empty();
										
										for (var i = 0; i < changeOption2.length; i++) {
											var option = $("<option" + " value='" + optionVal2[i] + "'>"
													+ changeOption2[i]
													+ "</option>");
											$('#Dcategory3').append(option);
										}
										$('#Dcategory4').empty();
										
										for (var i = 0; i < changeOption3.length; i++) {
											var option = $("<option" + " value='" + optionVal3[i] + "'>"
													+ changeOption3[i]
													+ "</option>");
											$('#Dcategory4').append(option);
										}
										
									}
									
									function optionChange3(){
										var Fap2 = ["호","101","102","201","202","301","302","401","402","501","502","601","602","701","702"
											,"801","802","901","902","1001","1002","1101","1102","1201","1202","1301","1302","1401","1402","1501","1502"]
										var Fap2Val = ["호","0101","0102","0201","0202","0301","0302","0401","0402","0501","0502","0601","0602","0701","0702"
											,"0801","0802","0901","0902","1001","1002","1101","1102","1201","1202","1301","1302","1401","1402","1501","1502"]
										
										// 헬스장
										var Fgym = [ "운동기구", "런닝머신(대)", "런닝머신(소)", "사이클", "레그컬머신", "파워렉", "하프랙","스쿼트랙",
											"스미스머신", "치닝디핑", "벤치", "인클라인벤치", "디클라인벤치", "로우풀머신","하이풀 머신","케이블머신", "핵스쿼트 머신","레그프레스 머신","펙덱머신","짐볼", "바벨","덤벨"];
										var FgymVal = [ "——", "1", "2", "3", "4", "5", "6", "7","8","9","10","11","12","13","14","15","16","17","18","19","20","21"];
										
										// 도로
										var Fr = ["도로번호","1번도로","2번도로","3번도로","4번도로","5번도로","6번도로","7번도로","8번도로","9번도로","10번도로","11번도로","12번도로"]
										var FrVal = ["——","1","2","3","4","5","6","7","8","9","10","11","12"]
										
										// 도로시설물
										var FrFa =["시설물","탄력봉","델리네이터","볼라드","도로표시봉"];
										var FrFaVal =["——","1","2","3","4"];
										
										// 게스트룸번호
										var Fgue = ["룸 번호","101","102","103","201","202"];
										var FgueVal = ["——","101","102","103","201","202"];
										
										 // 독서실 좌석번호
										var Frea = [];
										var FreaVal = [];
										
										 for(var i=0; i<61; i++ ){
											if( i==0){
												Frea[i]="좌석 번호";											
												}else{
													Frea[i] = i +"번 좌석";
												}
										} 
										 
										 for(var i=0; i<61; i++ ){
												if( i==0){
													FreaVal[i]="——";											
													}else{
														FreaVal[i] = i ;
													}
											} 
										 
										 // 주차장
										
										 var Fpa = [ "동", "101", "102", "103", "104", "105", "106", "107","108"];
										 var FpaVal = [ "——", "101", "102", "103", "104", "105", "106", "107","108"];
										 
										
										
										var FO =["——"];
										var FOVal = [  "——"];
										
										var selectOption = $('#Dcategory2').val();
										var selectOption2 = $('#category').val();

										var changeOption;
										var optionVal;
										
										var changeOption2;
										var optionVal2;
										
									 	if((selectOption =="101"||selectOption =="102"||selectOption =="103"||selectOption =="104"||selectOption =="105"||selectOption =="106"||selectOption =="107"||selectOption =="108")&&selectOption2=="1"){
											changeOption = Fap2;
											optionVal = Fap2Val; 
											changeOption2 = FO;
											optionVal2 = FOVal;
										}else if((selectOption == "1")&&selectOption2=="1") {
											changeOption = Fgym;
											optionVal = FgymVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
										} else if ((selectOption == "2")&&selectOption2=="1") {
											changeOption = Frea;
											optionVal = FreaVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
										} else if (selectOption == "3"){
											changeOption = Fgue;
											optionVal = FgueVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
										}else if (selectOption == "4") {
											changeOption = Fpa;
											optionVal = FpaVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
										} else if (selectOption == "5") {
											changeOption = Fr;
											optionVal = FrVal;
										} else if (selectOption == "6") {
											changeOption = FrFa;
											optionVal = FrFaVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
										} else if(selectOption == "et1"){
											changeOption2 = FO;
											optionVal2 = FOVal;
										}else {
											changeOption = [ "——"];
											optionVal = [ "——" ];
											changeOption2 = FO;
											optionVal2 = FOVal;
										}

										$('#Dcategory3').empty();

										for (var i = 0; i < changeOption.length; i++) {
											var option = $("<option" + " value='" + optionVal[i] + "'>"
													+ changeOption[i]
													+ "</option>");
											$('#Dcategory3').append(option);
										}
										
										$('#Dcategory4').empty();
										
										for (var i = 0; i < changeOption2.length; i++) {
											var option = $("<option" + " value='" + optionVal2[i] + "'>"
													+ changeOption2[i]
													+ "</option>");
											$('#Dcategory4').append(option);
										}
									}
									
									function optionChange4(){
										// 게스트룸 위치
										var Fgue = ["위치","현관","주방/식당","거실","안방","침실1","침실2","발코니1","발코니2","욕실1","욕실2","실외기","하향식피난구"];
										var FgueVal = ["——","4","3","8","7","9","1","11","2","5","6","10","12"];
										
										// 주차장 자리번호
										var Fpa=[];
										var FpaVal=[];
										
										for(var i=0; i<61; i++ ){
											if( i==0){
												Fpa[i]="주차장자리번호";											
												}else{
													Fpa[i] = i +"번 ";
												}
										} 
										 
										 for(var i=0; i<61; i++ ){
												if( i==0){
													FpaVal[i]="——";											
													}else{
														FpaVal[i] = i ;
													}
											} 
										

										var selectOption = $('#Dcategory3').val();
										var selectOption2 = $('#Dcategory2').val();
										
										var changeOption;
										var optionVal;
										
										var changeOption2;
										var optionVal2;
										var FO =["——"]
										var FOVal = ["——"];
										
										if ((selectOption =="101"||selectOption =="102"||selectOption =="103" ||selectOption =="201"||selectOption =="202")&&selectOption2=="3") {
											changeOption = Fgue;
											optionVal = FgueVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
											
										} else if ((selectOption =="101"||selectOption =="102"||selectOption =="103"||selectOption =="104"||selectOption =="105"||selectOption =="106"||selectOption =="107"||selectOption =="108")&&selectOption2=="4") {
											changeOption = Fpa;
											optionVal = FpaVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
										} else if (selectOption == "——"){
											changeOption = Ffa;
											optionVal = FfaVal;
											changeOption2 = FO;
											optionVal2 = FOVal;
											
											
										}else {
											changeOption = [ "——"];
											optionVal = [ "——" ];
										}

										
										$('#Dcategory4').empty();
										
										for (var i = 0; i < changeOption.length; i++) {
											var option = $("<option" + " value='" + optionVal[i] + "'>"
													+ changeOption[i]
													+ "</option>");
											$('#Dcategory4').append(option);
										}
										
									}
									
								</script>
			<script>
			 function Validate(){
				 var content = $("#summernote").val();
				 // 시설
			if($("#category").val()=="——"||$("#Dcategory1").val()=="——"){
				alert("건의 신고내역을 전부 선택해 주세요!");
				return false;
				}
			if($("#category").val()=="1"){
				if($("#Dcategory2").val()=="——"||$("#Dcategory3").val()=="——"){
					alert("건의 신고내역을 전부 선택해 주세요!");
					console.log(content);
					return false;
				}
			}
			if($("#category").val()=="1" && $("#Dcategory1").val()=="2"&& $("#Dcategory2").val()=="3"){
				if( $("#Dcategory4").val()=="——"){
					alert("건의 신고내역을 전부 선택해 주세요!");
					return false;
				}
			}
			if($("#category").val()=="1" && $("#Dcategory1").val()=="3"&& $("#Dcategory2").val()=="4"){
				if( $("#Dcategory4").val()=="——"){
					alert("건의 신고내역을 전부 선택해 주세요!");
					return false;
				}
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

	
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
		
</body>
</html>