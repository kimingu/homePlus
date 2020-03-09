<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
		#bod2{
			height:500px;
		}
   </style>
   
</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
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
						<form id="updateMeberForm" method="POST" action="facupdateadmin.do" class="testStylen white-background padding-20 paddingLeftRgiht-35 marginBottom-20">
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">ID : </h5> &nbsp;&nbsp;
								<input name="aId" style="margin-bottom:16px;" value="${loginUser.aId}" >											
							</div>
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">주소 : </h5> &nbsp;&nbsp;
								<input name="aAddress" style="margin-bottom:16px;" value="${loginUser.aAddress}" >												
							</div>
							<div>	
								<h5 class="fontWeight-600 display-inlnine-block">전화번호 : </h5> &nbsp;&nbsp;	
								<c:if test="${empty loginUser.aPhone }">
									<input name="aPhone" style="margin-bottom:16px;" placeholder="-없이 입력" value="" >																		
								</c:if>
								<c:if test="${!empty loginUser.aPhone }">
									<input name="aPhone" style="margin-bottom:16px;" placeholder="-없이 입력" value="${loginUser.aPhone }" >																		
								</c:if>
							</div>
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">이메일 : </h5> &nbsp;&nbsp;
								<c:if test="${empty loginUser.aEmail }">
									<input name="aEmail" style="margin-bottom:16px;" placeholder="이메일을 입력하세요" value="" >																		
								</c:if>
								<c:if test="${!empty loginUser.aEmail }">
									<input name="aEmail" style="margin-bottom:16px;" placeholder="이메일을 입력하세요" value="${loginUser.aEmail }" >																		
								</c:if>					
							</div>	
							<div class="margin-10 textAlign-center">
								<input type="submit" value="수정하기">		
							</div>
						</form>
					</div>				
				</div>
			</div>
		</div>
	</div>
</div>
      
  
	

</body>
</html>