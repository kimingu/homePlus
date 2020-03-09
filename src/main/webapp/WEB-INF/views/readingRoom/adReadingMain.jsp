<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>홈플러스 | HOMEPLUS</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">

<link rel="shortcut icon"
	href="resources/administrator/images/favicon.ico">

<!--Morris Chart CSS -->
<link rel="stylesheet"
	href="resources/administrator/plugins/morris/morris.css">

<!-- Bootstrap core CSS -->
<link href="resources/administrator/css/bootstrap.min.css"
	rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="resources/administrator/css/metisMenu.min.css"
	rel="stylesheet">
<!-- Icons CSS -->
<link href="resources/administrator/css/icons.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="resources/administrator/css/style.css" rel="stylesheet">
<style>
#menuColor {
	background: white;
	border-bottom: 5px solid #F5F5F5;
}

#logoImage {
	padding-left: 20px;
}

.sidebar-navigation {
	margin-top: 5px;
}

#page-wrapper {
	width: 100%;
}

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

#minhoo {
	background: white;
	padding-left: 25px;
	padding-right: 25px;
	/* width:1000px; */
	min-height: 1400px;
}

#headTitle {
	margin-top: 20px;
	text-align: left;
	padding-top: 10px;
	border-bottom: 1px solid #E2E2E2;
}

#title1 {
	font-size: 14px;
}

#title {
	font-size: 25px;
}

#mainimage-div {
	margin-top: 1%;
	width: 100%;
}

#mainimage-margin {
	margin: auto;
	width: 100%;
	border: 2px solid #efefef;
}

#main-image {
	margin: auto;
	width: 100%;
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
#arrow{
	background-image:
		url("resources/readingRoom/images/left/left-arrow.png");
	background-size: auto;
	background-repeat: no-repeat;
	background-position: center center;
	width: 10%;
	height:40px;
	margin-left:34%;
}
#door{
	background-image:
		url("resources/readingRoom/images/right/door-right.png");
	background-size: auto;
	background-repeat: no-repeat;
	background-position: center center;
	width: 7%;
	height:40px;
	margin-left:1%
}

.total-m {
	margin-top: 1%;
	display: flex;
	width: 100%;
	
	
}

#m-left {
	width: 1200px;
	border:1px solid #efefef;
	border-radius:1em;
}

#m-right {
	margin-left: 1%;
	width: 40%;
	border: 1px solid #efefef;
	border-radius:1em;
	
}

#ex {
	display: flex;
	width: 100%;
	border-bottom: 1px solid #efefef;
}
#margin-ex{
	margin-left:28%;
}


#map {
	width: 100%;
	background-color: #fff;
}

#ex1 {
	background-image:url("resources/readingRoom/images/bottom/off-bottom.png");
	background-size: auto;
	background-repeat: no-repeat;
	background-position: center center;
	width: 10%;
	
}

#ex2 {
	background-image: url("resources/readingRoom/images/bottom/on-bottom.png");
	background-size: auto;
	background-repeat: no-repeat;
	background-position: center center;
	width: 10%;
	
}

#level-1 {
	display: flex;	
	margin-top :1%;	
}

#level-2{
	margin-top:1%;
	display: flex;
	}
#level-3{
	margin-bottom:1%;
	display: flex;
}
.level-2-1{
	margin-left:1%;
	}
.level-2-2{
	margin-right:1%;
	margin-left:88%;
}
	


.childinput {
	width: 90%;
	height: 100%;
	visibility: hidden;
}

.seat1 {
	margin:1%;
	background-size: auto;
	background-repeat: no-repeat;
	background-position: center center;
	width: 7%;
	height:40px;
}
.seat2 {
	background-size: auto;
	background-repeat: no-repeat;
	background-position: center center;
	width:5%;
	height:60px;	
}

#seat-1{
	margin-left:6%;
}
#seat-16{
	margin-left:7%;
}
#seat-20{
	margin-left:4%;
}
#seat-24{
	margin-left:7%;
}
#seat-26{
	margin-left:7%;
}
#seat-30{
	margin-left:4%;
}
#seat-34{
	margin-left:7%;
}
#seat-38{
	margin-left:7%;
}
#seat-42{
	margin-left:46%;
}
#seat-44{
	margin-left:7%;
}
#seat-50{
	margin-left:6%;
}
#loginUserCode{
	display:none;
}
#search-resermember-title{
	color:#2b6cae;
	text-align:center;
}
#search-resermember-name{
	overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      width:56%;
      height:50px;
      margin-left:20%;
}
input::placeholder {
  color: #2b6cae;
  
}
.on-off{
	color:#2b6cae;
}

h3{
font-weight: bold;
}
#reMemInfo{
	border:1px solid #efefef;
	text-align:center; 
	width:80%;
	margin:auto;
	display:none;
}


</style>
</head>


<body>

	<jsp:include page="../common/conmanager.jsp" />
	
	<div id="page-right-content">
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
					<div id="minhoo">
				<div id="headTitle">
				<input id="loginUserCode" type="text" value="${loginUser.aCode}">
					<h4>
						<a id="title">독 서 실</a>
					</h4>
				</div>
				

				<div class="total-m">
					<div id="m-left">
						<div id="ex">
								<h3 class="on-off" id="margin-ex">예약가능좌석</h3>
								<div id="ex1"></div>
								<h3 class="on-off">예약불가능좌석</h3>
								<div id="ex2"></div>
						</div>
						<div id="map">
						
							<div id="level-1">
								
								<div class="seat1 top" id="seat-1">
									<input type="checkbox" class="childinput" id="1" value="Y">
								</div>
								<div class="seat1 top" id="seat-2">
									<input type="checkbox" class="childinput" id="2" value="Y">
								</div>
								<div class="seat1 top" id="seat-3">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
								<div class="seat1 top" id="seat-4">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
								<div class="seat1 top" id="seat-5">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
								<div class="seat1 top" id="seat-6">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
								<div class="seat1 top" id="seat-7">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
								<div class="seat1 top" id="seat-8">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
								<div class="seat1 top" id="seat-9">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
								<div class="seat1 top" id="seat-10">
									<input type="checkbox" class="childinput" id="" value="Y">
								</div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1" id="seat-11"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat2 right level-2-2" id="seat-12"><input type="checkbox" class="childinput" id="" value="Y"></div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1" id="seat-13"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat2 right level-2-2" id="seat-14"><input type="checkbox" class="childinput" id="" value="Y"></div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1 " id="seat-15"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 bottom" id="seat-16"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 bottom" id="seat-17"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 bottom" id="seat-18"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 bottom" id="seat-19"><input type="checkbox" class="childinput" id="" value="Y"></div>
    	
    							<div class="seat1 bottom" id="seat-20"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 bottom" id="seat-21"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 bottom" id="seat-22"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 bottom" id="seat-23"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat2 right level-2-2" id="seat-24"><input type="checkbox" class="childinput" id="" value="Y"></div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1 " id="seat-25"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 top" id="seat-26"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 top" id="seat-27"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 top" id="seat-28"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 top" id="seat-29"><input type="checkbox" class="childinput" id="" value="Y"></div>
    	
    							<div class="seat1 top" id="seat-30"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 top" id="seat-31"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 top" id="seat-32"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 top" id="seat-33"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat2 right level-2-2" id="seat-34"><input type="checkbox" class="childinput" id="" value="Y"></div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1" id="seat-35"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat2 right level-2-2" id="seat-36"><input type="checkbox" class="childinput" id="" value="Y"></div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1" id="seat-37"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 bottom" id="seat-38"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 bottom" id="seat-39"><input type="checkbox" class="childinput" id="" value="Y"></div>
        						<div class="seat1 bottom" id="seat-40"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 bottom" id="seat-41"><input type="checkbox" class="childinput" id="" value="Y"></div>
								
        						<div class="seat2 right level-2-2" id="seat-42"><input type="checkbox" class="childinput" id="" value="Y"></div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1" id="seat-43"><input type="checkbox" class="childinput" id="" value="Y"></div>
								<div class="seat1 top" id="seat-44"><input type="checkbox" class="childinput" value="Y"></div>
								<div class="seat1 top" id="seat-45"><input type="checkbox" class="childinput" value="Y"></div>
        						<div class="seat1 top" id="seat-46"><input type="checkbox" class="childinput" value="Y"></div>
								<div class="seat1 top" id="seat-47"><input type="checkbox" class="childinput" value="Y"></div>
								
        						<div id="arrow"></div>
        						<div id="door"></div>
							</div>
							<div id="level-2">
								<div class="seat2 left level-2-1" id="seat-48"><input type="checkbox" class="childinput" value="Y"></div>
        						<div class="seat2 right level-2-2" id="seat-49"><input type="checkbox" class="childinput" value="Y"></div>
							</div>
							
							<div id="level-1">
								
								<div class="seat1 bottom" id="seat-50">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-51">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-52">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-53">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-54">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-55">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-56">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-57">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-58">
									<input type="checkbox" class="childinput" value="Y">
								</div>
								<div class="seat1 bottom" id="seat-59">
									<input type="checkbox" class="childinput" value="Y">
								</div>
							</div>
						</div>	
					</div>
					<div id="m-right">
						<h3 id="search-resermember-title">예약된 회원 정보 찾기</h3>
						<br>
							<input id="search-resermember-name" onkeyup="enterkey();" placeholder="이름을 입력해주세요">
							<br><br>
							<div id="reMemInfo">
							
							</div>
							
							
					</div>
						
						
						
				</div>
					

			</div>
		</div>
	</div>
		
					
					
				</div>
			</div>
			</div>
			</div>
			<script>
		function enterkey() {
			var mName = $("#search-resermember-name").val()
		
	        if (window.event.keyCode == 13) {
	        	
				if(mName.length <=0){
					alert("이름을 입력해주세요");
					$("#reMemInfo").attr('style','display:none');
					return false;
				}
	 			
	        	$.ajax({
					url:"adReMember.do",
					data:{mName:mName},
					success:function(data){
						// if(data == "true"){	// 아이디를 사용할 수 있을 때
						if(data.list != null){
							$("#reMemInfo").attr('style','display:block');
							if(data.list.length>0){
							
								for(var i=0; i<data.list.length; i++){
									$("#reMemInfo").html("	<h4 style='color:#2b6cae;'> 좌석 번호 :" + data.list[i].reaSeat + "</h4>");
								}
							}else{
								alert("예약 좌석 명단에 없습니다.");
								$("#reMemInfo").attr('style','display:none');
							}
													
							
				
						}else{	// 아이디를 사용할 수 없을 때
						 	alert("예약 좌석 명단에 없습니다.");
						}
					},
					error:function(){
						console.log("ajax 통신 실패");
					}
				});
	        	
	            
	        }
	}


			
		</script>
	
	 <c:forEach var="r" items="${ list }">
			<script>
					var reaSeat =  "#seat-" + "${ r.reaSeat }";
					$(reaSeat).children().val("N");
					
					if($(reaSeat).children().val() == "N"){
						console.log($(reaSeat).parent().val());
						$(reaSeat).children().parent(".top").css("background-image","url('resources/readingRoom/images/top/on-top.png')");
						$(reaSeat).children().parent(".left").css("background-image","url('resources/readingRoom/images/left/on-left.png')");
						$(reaSeat).children().parent(".right").css("background-image","url('resources/readingRoom/images/right/on-right.png')");
						$(reaSeat).children().parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/on-bottom.png')");
					}
	
					
					
				
				</script>
			</c:forEach> 
	
	<script>
	$(function(){
		if($("#map").children().children().children().val()==="N"){
			
			$(".top").css("background-image","url('resources/readingRoom/images/top/off-top.png')");
	        $(".left").css("background-image","url('resources/readingRoom/images/left/off-left.png')");
	        $(".right").css("background-image","url('resources/readingRoom/images/right/off-right.png')");
	        $(".bottom").css("background-image","url('resources/readingRoom/images/bottom/off-bottom.png')");
		}
	});
	
	$("#map").children().children().mouseenter(function(){
       
	console.log($(this).children().val());
    if($(this).children().val()==="N"){
    $(this).children().parent(".top").css("background-image","url('resources/readingRoom/images/top/hover-top.png')");
    $(this).children().parent(".left").css("background-image","url('resources/readingRoom/images/left/hover-left.png')");
    $(this).children().parent(".right").css("background-image","url('resources/readingRoom/images/right/hover-right.png')");
    $(this).children().parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/hover-bottom.png')");
    }
    });

$("#map").children().children().mouseleave(function(){
    if($(this).children().val()==="N"){
    	 $(this).children().parent(".top").css("background-image","url('resources/readingRoom/images/top/on-top.png')");
         $(this).children().parent(".left").css("background-image","url('resources/readingRoom/images/left/on-left.png')");
         $(this).children().parent(".right").css("background-image","url('resources/readingRoom/images/right/on-right.png')");
         $(this).children().parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/on-bottom.png')");
    }
    });
$(function(){
	$("#map").children().children().click(function(){
		var seatNo = $(this).attr('id').split("-")[1]; 
		var mCode = $("#loginUserCode").val().trim();
		var input= $(this).children();
		
	   if($(this).children().val()==="N"){
	    if(confirm(seatNo+"번 좌석을 예약을 취소하시겠습니까?")){ 
	    	
	    	$.ajax({
				url:"cancelAdRea.do",
				data:{reaSeat:seatNo},
				success:function(data){
					// if(data == "true"){	// 아이디를 사용할 수 있을 때
					if(data.isUsable == true){
							
						alert("예약 취소 되었습니다.")
						input.parent(".top").css("background-image","url('resources/readingRoom/images/top/on-top.png')");
					    input.parent(".left").css("background-image","url('resources/readingRoom/images/left/on-left.png')");
					    input.parent(".right").css("background-image","url('resources/readingRoom/images/right/on-right.png')");
					    input.parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/on-bottom.png')");
						
					    input.val('Y');
					}else{	// 아이디를 사용할 수 없을 때
					 	alert("예약 가능한 빈 좌석입니다.")
					}
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
	   	}
	}
});
});


	</script>


</body>
</html>