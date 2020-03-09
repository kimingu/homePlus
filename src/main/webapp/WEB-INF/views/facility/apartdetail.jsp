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
<style>
.page-contentbar {
	height: 100%;
}

#forright {
	text-align: right;
}
#wraping{
	margin:auto;
	text-align:center;
}
#guest {
	display: inline-block;
	background-image: url("resources/facility/images/guestroom.png");
	background-repeat: no-repeat;
	background-size: contain;
	width: 50%;
	height: 500px;
}
.gr{
		position: absolute;
	}
#gr1{
	margin-left : 17.25%;
	margin-top : 3%;
}
#gr2{
	margin-left : 10%;
	margin-top : 9%;
}
#gr3{
	margin-left : 18.5%;
	margin-top : 11%;
}
#gr4{
	margin-left : 28.5%;
	margin-top : 12%;
}
#gr5{
	margin-left : 9%;
	margin-top : 16%;
}
#gr6{
	margin-left : 33%;
	margin-top : 16.5%;
}
#gr7{
	margin-left : 11%;
	margin-top : 24%;
}
#gr8{
	margin-left : 21.5%;
	margin-top : 24.5%;
}
#gr9{
	margin-left : 31.5%;
	margin-top : 25%;
}
#gr10{
	margin-left : 7.5%;
	margin-top : 31%;
}
#gr11{
	margin-left : 13%;
	margin-top : 30.5%;
}
#gr12{
	margin-left : 13%;
	margin-top : 33.5%;
}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h3 class="m-t-0">아파트 상세 관리 페이지</h3>
						<hr>
						<div id="wraping">
						<h2>${fadd}동 ${sadd}호</h2>
						<div id="guest">
								<div class="gr" id="gr1">
									<c:if test='${apt.r1 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r1},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr2">
									<c:if test='${apt.r2 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r2},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr3">
									<c:if test='${apt.r3 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r3},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr4">
									<c:if test='${apt.r4 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r4},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr5">
									<c:if test='${apt.r5 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r5},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr6">
									<c:if test='${apt.r6 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r6},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr7">
									<c:if test='${apt.r7 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r7},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr8">
									<c:if test='${apt.r8 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r8},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr9">
									<c:if test='${apt.r9 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r9},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr10">
									<c:if test='${apt.r10 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r10},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr11">
									<c:if test='${apt.r11 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r11},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
								<div class="gr" id="gr12">
									<c:if test='${apt.r12 != "g"}'>
										<img src="resources/facility/images/warning.png", style="cursor:pointer;"
										onclick="window.open('facdetail.do?code='+${apt.r12},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');"/>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function selchange(){
			var code = document.getElementById("cate").value;
			if(code) location.href = "guestrman.do?code="+code;
		}
	</script>
</body>
</html>