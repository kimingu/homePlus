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
	#page-right-content{
		text-align:center;
	}
	#mainform{
		text-align:center;
	}
	#apartpic{
		display: inline-block;
		background-image:url("resources/facility/images/apartmain.png");
		background-repeat:no-repeat;
		background-size:contain;
		width:100%;
		height:700px;
	}
	.bod{
		display : inline-block;
		width:90%;
		height:100%;
	}
	#mainform{
		display: inline-block;
		width:100%;
		height:100%;
		text-align:center;
	}
	#forcenter{
		display: inline-block;
		width:100%;
		height:70%;
		text-align:center;
	}
	.apment{
		color:white;
		position: absolute;
		width:13%;
		height:10%;
	}
	#ap1{
		margin-left : 18%;
		margin-top : 1%;
	}
	#ap2{
		margin-left : 32.5%;
		margin-top : 3%;
	}
	#ap3{
		margin-left : 49%;
		margin-top : 7%;
	}
	#ap4{
		margin-left : 67%;
		margin-top : 10%;
	}
	#ap5{
		margin-left : 7%;
		margin-top : 8%;
	}
	#ap6{
		margin-left : 24%;
		margin-top : 13%;
	}
	#ap7{
		margin-left : 42%;
		margin-top : 18%;
	}
	#ap8{
		margin-left : 64%;
		margin-top : 23%;
	}
	#look{
	display: inline-block;
		text-align:center;
		background-color: rgba(102, 102, 102, 0.4);
		width:100px;
		height:60px;
	}
	#url{
		color: white;
	}
	#warn{
		color: #DF013A;
	}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp"/>
			   <div id="page-right-content">
                    <div class="bod">
                        <div id="mainform">
                        	<div id="forcenter">
                       			<h2 class="m-t-0">아파트별 신고 현황</h2>
                           		<div id="apartpic">
                           			<div id="ap1" class="apment">
									<div id="look">
									<h4>101동</h4>
									<c:if test="${ap.a1 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=101">${ap.a1}건</a>
									</c:if>
									<c:if test="${ap.a1 eq 0}">
										<a id="url" href="apartsemidetail.do?code=101">${ap.a1}건</a>
									</c:if>
									</div>
                           			</div>
                           			<div id="ap2" class="apment">
                           			<div id="look">
                           			<h4>102동</h4>
                           			<c:if test="${ap.a2 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=102">${ap.a2}건</a>
									</c:if>
									<c:if test="${ap.a2 eq 0}">
										<a id="url" href="apartsemidetail.do?code=102">${ap.a2}건</a>
									</c:if>
                           			</div>
                           			</div>
                           			<div id="ap3" class="apment">
                           			<div id="look">
                           			<h4>103동</h4>
                           			<c:if test="${ap.a3 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=103">${ap.a3}건</a>
									</c:if>
									<c:if test="${ap.a3 eq 0}">
										<a id="url" href="apartsemidetail.do?code=103">${ap.a3}건</a>
									</c:if>
                           			</div>
                           			</div>
                           			<div id="ap4" class="apment">
                           			<div id="look">
                           			<h4>104동</h4>
                           			<c:if test="${ap.a4 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=104">${ap.a4}건</a>
									</c:if>
									<c:if test="${ap.a4 eq 0}">
										<a id="url" href="apartsemidetail.do?code=104">${ap.a4}건</a>
									</c:if>
                           			</div>
                           			</div>
                           			<div id="ap5" class="apment">
                           			<div id="look">
                           			<h4>105동</h4>
                           			<c:if test="${ap.a5 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=105">${ap.a5}건</a>
									</c:if>
									<c:if test="${ap.a5 eq 0}">
										<a id="url" href="apartsemidetail.do?code=105">${ap.a5}건</a>
									</c:if>
                           			</div>
                           			</div>
                           			<div id="ap6" class="apment">
                           			<div id="look">
                           			<h4>106동</h4>
                           			<c:if test="${ap.a6 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=106">${ap.a6}건</a>
									</c:if>
									<c:if test="${ap.a6 eq 0}">
										<a id="url" href="apartsemidetail.do?code=106">${ap.a6}건</a>
									</c:if>
                           			</div>
                           			</div>
                           			<div id="ap7" class="apment">
                           			<div id="look">
                           			<h4>107동</h4>
                           			<c:if test="${ap.a7 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=107">${ap.a7}건</a>
									</c:if>
									<c:if test="${ap.a7 eq 0}">
										<a id="url" href="apartsemidetail.do?code=107">${ap.a7}건</a>
									</c:if>
                           			</div>
                           			</div>
                           			<div id="ap8" class="apment">
                           			<div id="look">
                           			<h4>108동</h4>
                           			<c:if test="${ap.a8 gt 0}">
										<a id="warn" href="apartsemidetail.do?code=108">${ap.a8}건</a>
									</c:if>
									<c:if test="${ap.a8 eq 0}">
										<a id="url" href="apartsemidetail.do?code=108">${ap.a8}건</a>
									</c:if>
                           			</div>
                           			</div>
                           		</div>
                           </div>
                        </div>
                    </div>
                 </div>
                 <script>
                
                 </script>
</body>
</html>