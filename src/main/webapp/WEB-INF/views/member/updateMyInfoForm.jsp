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
   
   /*임시*/
   	
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
			height: 100%;
			padding-left: 25px;
			padding-right: 25px;
			
			margin-top: 50px;
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
		

   </style>
   
</head>
<body>
	<c:if test="${!empty msg }">
		<script>
			alert("${msg }");
		</script>
		<c:remove var="msg" />
	</c:if>

	<div>
	   <jsp:include page="../common/menubar.jsp"/>
	</div>  
	 
   
	<div class="row mistGray-Background marginTop-80 full-width">
		<div class="col-md-offset-2 col-md-8">
			<div class="ingu">
				<div id="headTitle">
					<h4>
						<a href="javascript:location.reload()" id="title">내 정보</a>
					</h4>
				</div>				
				<br>
				
				<div class="row">
					<div class="col-md-12">
						<form id="updateMeberForm" method="POST" action="updateMember.do" class="testStylen white-background padding-20 paddingLeftRgiht-35 marginBottom-20">
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">ID : </h5> &nbsp;&nbsp;
								<p class="display-inlnine-block">${loginUser.mId }</p>												
							</div>
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">이름 : </h5> &nbsp;&nbsp;
								<p class="display-inlnine-block">${loginUser.mName }</p>												
							</div>
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">주소 : </h5> &nbsp;&nbsp;
								<p class="display-inlnine-block">${loginUser.mAddress }</p>												
							</div>
							<div>	
								<h5 class="fontWeight-600 display-inlnine-block">전화번호 : </h5> &nbsp;&nbsp;	
								<c:if test="${empty loginUser.mPhone }">
									<input name="mPhone" style="margin-bottom:16px;" placeholder="-없이 입력" value="" >																		
								</c:if>
								<c:if test="${!empty loginUser.mPhone }">
									<input name="mPhone" style="margin-bottom:16px;" placeholder="-없이 입력" value="${loginUser.mPhone }" >																		
								</c:if>
							</div>
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">이메일 : </h5> &nbsp;&nbsp;
								<c:if test="${empty loginUser.mEmail }">
									<input name="mEmail" style="margin-bottom:16px;" placeholder="이메일을 입력하세요" value="" >																		
								</c:if>
								<c:if test="${!empty loginUser.mEmail }">
									<input name="mEmail" style="margin-bottom:16px;" placeholder="이메일을 입력하세요" value="${loginUser.mEmail }" >																		
								</c:if>					
							</div>
							<div>
								<h5 class="fontWeight-600 display-inlnine-block">차량번호 : </h5> &nbsp;&nbsp;
								<c:if test="${empty loginUser.mCar }">
									<input name="mCar" style="margin-bottom:16px;" placeholder="차량 번호를 입력하세요" value="" >																		
								</c:if>
								<c:if test="${!empty loginUser.mCar }">
									<input name="mCar" style="margin-bottom:16px;" placeholder="차량 번호를 입력하세요" value="${loginUser.mCar }" >																		
								</c:if>													
							</div>
							<div>
								<c:if test="${loginUser.mAccount != null }">
									<c:set var="t" value="${fn:indexOf(loginUser.mAccount, '/') }" />
									<c:set var="bank" value="${fn:substring(loginUser.mAccount, 0 , t) }" />
									<c:set var="account" value="${fn:substring(loginUser.mAccount, t + 1, fn:length(loginUser.mAccount)) }" />
								</c:if>	
								<h5 class="fontWeight-600 display-inlnine-block">계좌번호 : </h5> &nbsp;&nbsp;
								<b>
									<select name="bank">
										<option value="" <c:if test="${bank eq 'noBank' }">selected</c:if>>은행선택</option>
									    <option value="국민" <c:if test="${bank eq '국민' }">selected</c:if>>국민</option>
									    <option value="농협" <c:if test="${bank eq '농협' }">selected</c:if>>농협</option>
									    <option value="신한" <c:if test="${bank eq '신한' }">selected</c:if>>신한</option>
									</select>								
								</b>
								<c:if test="${empty loginUser.mAccount }">
									<input name="account" style="margin-bottom:16px;" placeholder="-없이 입력" value="" >																		
								</c:if>
								<c:if test="${!empty loginUser.mAccount }">
									<input name="account" style="margin-bottom:16px;" placeholder="-없이 입력" value="${account }" >																		
								</c:if>												
							</div>
						
						
							<div class="margin-10 textAlign-center">		
								<a class="btn-alt small active margin-null fontWeight-400" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">탈퇴하기</a>
								<a id="submitBtn" class="btn-alt small active margin-null fontWeight-400">변경</a>			
							</div>
						</form>
					</div>				
				
				</div>

			
			</div>
		</div>
		
	
	</div>
 
	<!-- 비밀번호 모달 start -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title fontWeight-600 fontSize-20" id="exampleModalLabel">비밀번호 확인</h5>				
				</div>
				
				<div class="modal-body">
					<form id="checkPwd" action="deleteMember.do" method="post">
						<div class="form-group">
							<label for="curPwd" class="col-form-label">현재 비밀번호:</label>
							<input type="password" class="form-control" id="curPwd" name="curPwd">
						</div>
						<div class="form-group">
							<label for="chkPwd" class="col-form-label">비밀번호 확인:</label>
							<input type="password" class="form-control" id="chkPwd" name="chkPwd">
						</div>
					</form>
				</div>
				
				<div class="modal-footer">
					<a href="#" class="btn-alt small active margin-null fontWeight-400" data-dismiss="modal">취소</a>
					<a href="#" class="btn-alt small active margin-null fontWeight-400" >탈퇴</a>		
				</div>
			</div>
		</div>
	</div>
	<!-- 비밀번호 모달 end -->
      
	  
	<div>
		<jsp:include page="../common/footer.jsp"/>   
	</div>
  
	<script>
		$("#submitBtn").on("click", function(){
			$("#updateMeberForm").submit();
		})
			
		 	
		 	
		$(".modal-footer a:nth-child(2)").on("click", function(){
		 	var curPwd = $("#curPwd").val();
		 	var chkPwd = $("#chkPwd").val();
			
		 	if(curPwd != chkPwd) {		 	
		 		alert("잘못된 정보입니다");
		 		return;
		 		
		 	};
		 	
		 	
			var deleteCheck = confirm("정말로 탈퇴하시겠습니까?");
		 	if(deleteCheck) {
				$("#checkPwd").submit();		 				 		
		 	};
		})
	 </script>

</body>
</html>