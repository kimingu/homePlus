<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/myPage/css/style.css">

<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">

<title>홈플러스 | HOMEPLUS</title>
<style>
* {
	box-sizing: border-box;
}

#page-content {
	margin: 0 auto;
	margin-top: 80px;
	border: 1px solid red;
}

.testStyle {
	border: 1px solid #efefef;
	height: 50px;
}

.testStyle2 {
	border: 1px solid red;
	height: 50px;
}

.testStylen {
	border: 1px solid #E2E2E2;
}

.testStyle2n {
	border: 1px solid red;
}

.ingu {
	background: white;
	height: 500px;
	padding-left: 25px;
	padding-right: 25px;
	margin-bottom: 200px;
	border: 1px solid #efefef;
}

#headTitle {
	margin-top: 20px;
	margin-left: 10px;
	padding-top: 10px;
	border-bottom: 1px solid #E2E2E2;
}

#title {
	font-size: 25px;
}

#title1 {
	font-size: 14px;
}

.mistGray-Background {
	background-color: #fcfcfc;
}

#bod2 {
	height: 500px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>

</head>
<body>
	<jsp:include page="../common/managerjob.jsp" />
	<div id="page-right-content">
		<div class="container" id="bod2">
			<div class="row">
				<div class="ingu">
					<div id="headTitle">
						<h4>
							<a href="javascript:location.reload()" id="title">내 정보</a>
						</h4>
					</div>
					<br>
					<div class="row">
						<div class="col-md-12">
							<form id="updateMeberForm" method="POST"
								action="pupdateMember.do"
								class="testStylen white-background padding-20 paddingLeftRgiht-35 marginBottom-20">
								<div>
									<h5 class="fontWeight-600 display-inlnine-block">ID :</h5>
									&nbsp;&nbsp;
									<p class="display-inlnine-block">${loginUser.aId}</p>
								</div>
								<div>
									<h5 class="fontWeight-600 display-inlnine-block">이름 :</h5>
									&nbsp;&nbsp;
									<p class="display-inlnine-block">${loginUser.aName }</p>
								</div>
								<div>
									<h5 class="fontWeight-600 display-inlnine-block">주소 :</h5>
									&nbsp;&nbsp;
									<p class="display-inlnine-block">${loginUser.aAddress}</p>
								</div>
								<div>
									<h5 class="fontWeight-600 display-inlnine-block">전화번호 :</h5>
									&nbsp;&nbsp;
									<c:if test="${empty loginUser.aPhone }">
										<p class="display-inlnine-block">전화번호가 저장되어있지 않습니다.</p>
									</c:if>
									<c:if test="${!empty loginUser.aPhone }">
										<p class="display-inlnine-block">${loginUser.aPhone}</p>
									</c:if>
								</div>
								<div>
									<h5 class="fontWeight-600 display-inlnine-block">이메일 :</h5>
									&nbsp;&nbsp;
									<c:if test="${empty loginUser.aEmail }">
										<p class="display-inlnine-block">이메일이 저장되어있지 않습니다.</p>
									</c:if>
									<c:if test="${!empty loginUser.aEmail }">
										<p class="display-inlnine-block">${loginUser.aEmail}</p>
									</c:if>
								</div>
								<div>
									<h5 class="fontWeight-600 display-inlnine-block">입사일 :</h5>
									&nbsp;&nbsp;
									<p class="display-inlnine-block">${loginUser.aEnrollDate }</p>
								</div>
								<div>
									<h5 class="fontWeight-600 display-inlnine-block">부서 :</h5>
									&nbsp;&nbsp;
									<c:if test="${loginUser.aDepartment eq '시설' }">
										<p class="display-inlnine-block">시설관리</p>
									</c:if>
									<c:if test="${loginUser.aDepartment eq '인력' }">
										<p class="display-inlnine-block">인력관리</p>
									</c:if>
									<c:if test="${loginUser.aDepartment eq '민후형' }">
										<p class="display-inlnine-block">편의시설관리</p>
									</c:if>
									<c:if test="${loginUser.aDepartment eq '경비' }">
										<p class="display-inlnine-block">실무자</p>
									</c:if>
								</div>
							</form>
							<div class="margin-10 textAlign-center">
								<button id="myBtn">수정하기</button>
							</div>
							<div id="myModal" class="modal">
								<div class="modal-content">
									<form id="modal" method="POST" action="pupdateform.do">
										<div class="margin-10 textAlign-center">
										<input type="hidden" name="aCode" id="aCode" value="${loginUser.aCode}">
											<h5 class="fontWeight-600 display-inlnine-block">비밀번호 확인
												:</h5>
											&nbsp;&nbsp; <input type="password" name="pwd" id="pwd">
										</div>

										<div class="margin-10 textAlign-center">
											<input type="submit" value="입력">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var modal = document.getElementById('myModal');
		var btn = document.getElementById("myBtn");

		var span = document.getElementsByClassName("close")[0];
		btn.onclick = function() {
			modal.style.display = "block";
		}
		span.onclick = function() {
			modal.style.display = "none";
		}
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>



</body>
</html>