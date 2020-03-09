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
#page-right-content {
	text-align: center;
}

#mainform {
	text-align: center;
}

#apartpic {
	text-align: center;
	display: inline-block;
	width: 100%;
	height: 700px;
}

.bod {
	display: inline-block;
	width: 90%;
	height: 100%;
}

#mainform {
	display: inline-block;
	width: 100%;
	height: 100%;
	text-align: center;
}

#forright {
	width: 100%;
	text-align: right;
}

.pk {
	vertical-align: middle;
	background-position: center;
	background-image: url("resources/facility/images/parking.png");
	background-repeat: no-repeat;
	background-size: contain;
	color: white;
	position: absolute;
	width: 4.5%;
	height: 5%;
}

#park1 {
	margin-left: 8%;
	margin-top: 1%;
}

#park2 {
	margin-left: 12%;
	margin-top: 1%;
}

#park3 {
	margin-left: 16%;
	margin-top: 1%;
}

#park4 {
	margin-left: 20%;
	margin-top: 1%;
}

#park5 {
	margin-left: 30%;
	margin-top: 1%;
}

#park6 {
	margin-left: 34%;
	margin-top: 1%;
}

#park7 {
	margin-left: 38%;
	margin-top: 1%;
}

#park8 {
	margin-left: 42%;
	margin-top: 1%;
}

#park9 {
	margin-left: 46%;
	margin-top: 1%;
}

#park10 {
	margin-left: 50%;
	margin-top: 1%;
}

#park11 {
	margin-left: 54%;
	margin-top: 1%;
}

#park12 {
	margin-left: 64%;
	margin-top: 1%;
}

#park13 {
	margin-left: 68%;
	margin-top: 1%;
}

#park14 {
	margin-left: 72%;
	margin-top: 1%;
}

#park15 {
	margin-left: 76%;
	margin-top: 1%;
}

#park16 {
	margin-left: 8%;
	margin-top: 6%;
}

#park17 {
	margin-left: 8%;
	margin-top: 11%;
}

#park18 {
	margin-left: 17%;
	margin-top: 11%;
}

#park19 {
	margin-left: 21%;
	margin-top: 11%;
}

#park20 {
	margin-left: 25%;
	margin-top: 11%;
}

#park21 {
	margin-left: 29%;
	margin-top: 11%;
}

#park22 {
	margin-left: 33%;
	margin-top: 11%;
}

#park23 {
	margin-left: 37%;
	margin-top: 11%;
}

#park24 {
	margin-left: 47%;
	margin-top: 11%;
}

#park25 {
	margin-left: 51%;
	margin-top: 11%;
}

#park26 {
	margin-left: 55%;
	margin-top: 11%;
}

#park27 {
	margin-left: 59%;
	margin-top: 11%;
}

#park28 {
	margin-left: 63%;
	margin-top: 11%;
}

#park29 {
	margin-left: 67%;
	margin-top: 11%;
}

#park30 {
	margin-left: 8%;
	margin-top: 16%;
}

#park31 {
	margin-left: 76%;
	margin-top: 21%;
}

#park32 {
	margin-left: 17%;
	margin-top: 26%;
}

#park33 {
	margin-left: 21%;
	margin-top: 26%;
}

#park34 {
	margin-left: 25%;
	margin-top: 26%;
}

#park35 {
	margin-left: 29%;
	margin-top: 26%;
}

#park36 {
	margin-left: 33%;
	margin-top: 26%;
}

#park37 {
	margin-left: 37%;
	margin-top: 26%;
}

#park38 {
	margin-left: 47%;
	margin-top: 26%;
}

#park39 {
	margin-left: 51%;
	margin-top: 26%;
}

#park40 {
	margin-left: 55%;
	margin-top: 26%;
}

#park41 {
	margin-left: 59%;
	margin-top: 26%;
}

#park42 {
	margin-left: 63%;
	margin-top: 26%;
}

#park43 {
	margin-left: 67%;
	margin-top: 26%;
}

#park44 {
	margin-left: 76%;
	margin-top: 26%;
}

#park45 {
	margin-left: 76%;
	margin-top: 31%;
}

#park46 {
	margin-left: 8%;
	margin-top: 36%;
}

#park47 {
	margin-left: 12%;
	margin-top: 36%;
}

#park48 {
	margin-left: 16%;
	margin-top: 36%;
}

#park49 {
	margin-left: 20%;
	margin-top: 36%;
}

#park50 {
	margin-left: 30%;
	margin-top: 36%;
}

#park51 {
	margin-left: 34%;
	margin-top: 36%;
}

#park52 {
	margin-left: 38%;
	margin-top: 36%;
}

#park53 {
	margin-left: 42%;
	margin-top: 36%;
}

#park54 {
	margin-left: 46%;
	margin-top: 36%;
}

#park55 {
	margin-left: 50%;
	margin-top: 36%;
}

#park56 {
	margin-left: 54%;
	margin-top: 36%;
}

#park57 {
	margin-left: 64%;
	margin-top: 36%;
}

#park58 {
	margin-left: 68%;
	margin-top: 36%;
}

#park59 {
	margin-left: 72%;
	margin-top: 36%;
}

#park60 {
	margin-left: 76%;
	margin-top: 36%;
}

#image {
	vertical-align: middle;
}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
	<div id="page-right-content">
		<div class="bod">
			<div id="forcenter">
				<h2 class="m-t-0">${code}동주차장현황</h2>
				<div id="forright">
					<select id="cate" onchange="selchange()">
						<option value="#">선택</option>
						<option value="101">101동</option>
						<option value="102">102동</option>
						<option value="103">103동</option>
						<option value="104">104동</option>
						<option value="105">105동</option>
						<option value="106">106동</option>
						<option value="107">107동</option>
						<option value="108">108동</option>
					</select>
				</div>
				<c:forEach var="p" items="${list}" varStatus="status">
					<div class="pk" id="park${status.count}" style="vertical-align: middle;">
						<c:if test="${!empty p.bb_code}">
							<img id="image" style="position:relative; top:20%; maring-top:-5px;" src="resources/facility/images/warning.png"
								, style="cursor: pointer;"
								onclick="window.open('facdetail.do?code='+${p.bb_code},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
						</c:if>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<script>
		function selchange(){
			var sel = document.getElementById("cate");
			var code = sel.options[sel.selectedIndex].value;
			if(code) location.href = "parking.do?code="+code;
		}
	</script>
</body>
</html>