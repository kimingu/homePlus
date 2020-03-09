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

.ev {
	background-position: center;
	background-image: url("resources/facility/images/ev.png");
	background-repeat: no-repeat;
	background-size: contain;
	color: white;
	position: absolute;
	width: 10%;
	height: 13%;
}

.apment {
	background-position: center;
	background-image: url("resources/facility/images/aptimg.png");
	background-repeat: no-repeat;
	background-size: contain;
	background-color: black;
	color: white;
	position: absolute;
	width: 13%;
	height: 5%;
}

.elevator {
	position: absolute;
	width: 5%;
	height: 8%;
}

#apd1 {
	margin-left: 39%;
	margin-top: 50%;
}

#apd2 {
	margin-left: 25%;
	margin-top: 63%;
}

#apd3 {
	margin-left: 50%;
	margin-top: 63%;
}

#apd4 {
	margin-left: 25%;
	margin-top: 58.5%;
}

#apd5 {
	margin-left: 50%;
	margin-top: 58.5%;
}

#apd6 {
	margin-left: 25%;
	margin-top: 54%;
}

#apd7 {
	margin-left: 50%;
	margin-top: 54%;
}

#apd8 {
	margin-left: 25%;
	margin-top: 49.5%;
}

#apd9 {
	margin-left: 50%;
	margin-top: 49.5%;
}

#apd10 {
	margin-left: 25%;
	margin-top: 45%;
}

#apd11 {
	margin-left: 50%;
	margin-top: 45%;
}

#apd12 {
	margin-left: 25%;
	margin-top: 40.5%;
}

#apd13 {
	margin-left: 50%;
	margin-top: 40.5%;
}

#apd14 {
	margin-left: 25%;
	margin-top: 36%;
}

#apd15 {
	margin-left: 50%;
	margin-top: 36%;
}

#apd16 {
	margin-left: 25%;
	margin-top: 31.5%;
}

#apd17 {
	margin-left: 50%;
	margin-top: 31.5%;
}

#apd18 {
	margin-left: 25%;
	margin-top: 27%;
}

#apd19 {
	margin-left: 50%;
	margin-top: 27%;
}

#apd20 {
	margin-left: 25%;
	margin-top: 22.5%;
}

#apd21 {
	margin-left: 50%;
	margin-top: 22.5%;
}

#apd22 {
	margin-left: 25%;
	margin-top: 18%;
}

#apd23 {
	margin-left: 50%;
	margin-top: 18%;
}

#apd24 {
	margin-left: 25%;
	margin-top: 13.5%;
}

#apd25 {
	margin-left: 50%;
	margin-top: 13.5%;
}

#apd26 {
	margin-left: 25%;
	margin-top: 9%;
}

#apd27 {
	margin-left: 50%;
	margin-top: 9%;
}

#apd28 {
	margin-left: 25%;
	margin-top: 4.5%;
}

#apd29 {
	margin-left: 50%;
	margin-top: 4.5%;
}

#apd30 {
	margin-left: 25%;
}

#apd31 {
	margin-left: 50%;
}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
	<div id="page-right-content">
		<div class="bod">
			<div id="forcenter">
				<h2 class="m-t-0">${code}동아파트현황</h2>
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
				<c:forEach var="b" items="${list}" varStatus="status">
					<c:choose>
						<c:when test="${status.first}">
							<div class="ev" id="apd${status.count}">
								<c:if test="${!empty b.bb_dcategory}">
									<img src="resources/facility/images/warning.png"
										, style="cursor: pointer;"
										onclick='selhome(${b.apm_dcode})'/> 
								</c:if>
							</div>
						</c:when>
						<c:otherwise>
							<div class="apment" id="apd${status.count}">
								${b.apm_dcode}호<br>
								<c:if test="${!empty b.bb_dcategory}">
									<img src="resources/facility/images/warning.png"
										, style="cursor: pointer;"
										onclick="javascript:location.href='apdetail.do?code=${b.bb_dcategory}'"/>
								</c:if>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
	</div>
	<script>
		function selhome(code){
			if(code) location.href = "apartdetail.do?code="+code;
		}
		function selchange(){
			var sel = document.getElementById("cate");
			var code = sel.options[sel.selectedIndex].value;
			if(code) location.href = "apartsemidetail.do?code="+code;
		}
	</script>
</body>
</html>