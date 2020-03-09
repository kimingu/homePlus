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

#wraping {
	margin: auto;
	text-align: center;
}
.etc{
	display: inline-block;
	background-image: url("resources/facility/images/rdseat.png");
	background-repeat: no-repeat;
	background-size: contain;
	width: 8%;
	height: 23px;
}
.read {
	display: inline-block;
	background-image: url("resources/facility/images/rdseat.png");
	background-repeat: no-repeat;
	background-size: contain;
	width: 8%;
	height: 23px;
}
#readbody{
	height:800px;
}
.read {
	position: absolute;
}

#rdm1{
	margin-left: -39%;
	margin-top: 0%;
}
#rdm2{
	margin-left: -31%;
	margin-top: 0%;
}
#rdm3{
	margin-left: -23%;
	margin-top: 0%;
}
#rdm4{
	margin-left: -15%;
	margin-top: 0%;
}
#rdm5{
	margin-left: -7%;
	margin-top: 0%;
}
#rdm6{
	margin-left: 1%;
	margin-top: 0%;
}
#rdm7{
	margin-left: 9%;
	margin-top: 0%;
}
#rdm8{
	margin-left: 17%;
	margin-top: 0%;
}
#rdm9{
	margin-left: 25%;
	margin-top: 0%;
}
#rdm10{
	margin-left: 33%;
	margin-top: 0%;
}
#rdm11{
	margin-left: -44%;
	margin-top: 5%;
}
#rdm12{
	margin-left: 37%;
	margin-top: 5%;
}
#rdm13{
	margin-left: -44%;
	margin-top: 10%;
}
#rdm14{
	margin-left: 37%;
	margin-top: 10%;
}
#rdm15{
	margin-left: -44%;
	margin-top: 15%;
}
#rdm16{
	margin-left: -32%;
	margin-top:15%;
}
#rdm17{
	margin-left: -25%;
	margin-top: 15%;
}
#rdm18{
	margin-left: -18%;
	margin-top: 15%;
}
#rdm19{
	margin-left: -11%;
	margin-top: 15%;
}
#rdm20{
	margin-left: 3%;
	margin-top: 15%;
}
#rdm21{
	margin-left: 10%;
	margin-top: 15%;
}
#rdm22{
	margin-left: 17%;
	margin-top: 15%;
}
#rdm23{
	margin-left: 24%;
	margin-top: 15%;
}
#rdm24{
	margin-left: 37%;
	margin-top: 15%;
}
#rdm25{
	margin-left: -44%;
	margin-top: 20%;
}
#rdm26{
	margin-left: -32%;
	margin-top:20%;
}
#rdm27{
	margin-left: -25%;
	margin-top: 20%;
}
#rdm28{
	margin-left: -18%;
	margin-top: 20%;
}
#rdm29{
	margin-left: -11%;
	margin-top: 20%;
}
#rdm30{
	margin-left: 3%;
	margin-top: 20%;
}
#rdm31{
	margin-left: 10%;
	margin-top: 20%;
}
#rdm32{
	margin-left: 17%;
	margin-top: 20%;
}
#rdm33{
	margin-left: 24%;
	margin-top: 20%;
}
#rdm34{
	margin-left: 37%;
	margin-top: 20%;
}
#rdm35{
	margin-left: -44%;
	margin-top: 25%;
}
#rdm36{
	margin-left: 37%;
	margin-top: 25%;
}
#rdm37{
	margin-left: -44%;
	margin-top: 30%;
}
#rdm38{
	margin-left: -32%;
	margin-top:30%;
}
#rdm39{
	margin-left: -25%;
	margin-top: 30%;
}
#rdm40{
	margin-left: -18%;
	margin-top: 30%;
}
#rdm41{
	margin-left: -11%;
	margin-top: 30%;
}
#rdm42{
	margin-left: 37%;
	margin-top: 30%;
}
#rdm43{
	margin-left: -44%;
	margin-top: 35%;
}
#rdm44{
	margin-left: -32%;
	margin-top:35%;
}
#rdm45{
	margin-left: -25%;
	margin-top: 35%;
}
#rdm46{
	margin-left: -18%;
	margin-top: 35%;
}
#rdm47{
	margin-left: -11%;
	margin-top: 35%;
}
#rdm48{
	margin-left: -44%;
	margin-top:40%;
}
#rdm49{
	margin-left: 37%;
	margin-top:40%;
}
#rdm50{
	margin-left: -39%;
	margin-top: 45%;
}
#rdm51{
	margin-left: -31%;
	margin-top: 45%;
}
#rdm52{
	margin-left: -23%;
	margin-top: 45%;
}
#rdm53{
	margin-left: -15%;
	margin-top: 45%;
}
#rdm54{
	margin-left: -7%;
	margin-top: 45%;
}
#rdm55{
	margin-left: 1%;
	margin-top: 45%;
}
#rdm56{
	margin-left: 9%;
	margin-top: 45%;
}
#rdm57{
	margin-left: 17%;
	margin-top: 45%;
}
#rdm58{
	margin-left: 25%;
	margin-top: 45%;
}
#rdm59{
	margin-left: 33%;
	margin-top: 45%;
}
#rdm60{
	margin-left:18%;
	margin-top:30%;
}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box" id="readbody">
						<h3 class="m-t-0">독서실 관리 페이지</h3>
						<hr>
						<div id="wraping">
							<c:forEach var="r" items="${list}" varStatus="status">
								<c:choose>
									<c:when test="${status.last}">
										<div class="read" id="rdm${status.count}" style="background-image: none;">
										기타시설<br>
										<c:if test="${!empty r.bb_code}">
										<img src="resources/facility/images/warning.png"
											, style="cursor: pointer;"
											onclick="window.open('facdetail.do?code='+${r.bb_code},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
										</c:if>
										</div>
									</c:when>
									<c:otherwise>
										<div class="read" id="rdm${status.count}">
										<c:if test="${!empty r.bb_code}">
										<img src="resources/facility/images/warning.png"
											, style="cursor: pointer;"
											onclick="window.open('facdetail.do?code='+${r.bb_code},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
										</c:if>
										</div>
									</c:otherwise>

								</c:choose>
							</c:forEach>
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