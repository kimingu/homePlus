<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>홈플러스 | HOMEPLUS</title>
	<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
    <link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
     <link rel="stylesheet" href="resources/datepicker/css/simplepicker.css">
     <link rel="stylesheet" href="resources/memberInsert/css/memberInsert.css">

<style>
	#total{
	background-size: 50%;
    background-repeat: no-repeat;
    background-position: center center;
	}
	#calender{
	background-image: url("resources/datepicker/images/calender.png");
	background-size: 100%;
    background-repeat: no-repeat;
    background-position: center center;
    border:none;
}
#head1{
display:inline-block;
}
#head2{
	display:inline-block;
}
#fileChoice{
	text-align : center;
}

#email-check{
	color:#2b6cae;
}

#email-div{
	width:100%;
}
#email-margin{
	display:flex;
	margin:auto;
	width:48%;

}
#address-flex{
	display:flex;
}
#address-post{
      overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      width:54%;
      height:30px;
      margin-left:19%;
}
.post-search{
	margin-top:1%;
	height:34px;
}
#department-div{
	width::100%;
}

#department-margin{
	display:flex;
	margin:auto;
	width:50%;
}
#comCode{
	width:83%;
	margin-right:3%;
}
#comCode-search{
	margin-top:1.2%;
	width:15%;
	height:38px;
}
#department-div{
	width:100%;
	margin-bottom:1%;
}
#department-margin{
	display:flex;
	margin:auto;
	width:50%;
	
}
#apCode{
	
	display:block;
      overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      width:50%;
      height:30px;
}
#department-select{
	display:block;
      overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      width:50%;
      height:35px;
}
#birth{
width:94%;
}

</style>
</head>
<body>
<div id="empty" style="height:50px">
   </div>
	<div id="total">
   <div id="insert-box">
   <div id="headTitle">
		<h3 id="head1">회원가입</h3><h5 id="head2">(*필수항목)</h5>
</div>
	<div id="insert-content">
   <form name="write_form_member" id="write_form_member"
      action="adinsert.do" method="POST" enctype="multipart/form-data"onsubmit="return joinValidate();">
		<input type="text" class="mInsert-input" maxlength="30" id="aId" name="aId" required placeholder="*아이디" > 
     		 <p class="idIdentityP" id="idvalid1">영소문자,숫자만 작성해주세요</p><p class="idIdentityP" id="idvalid2">5자이상 작성해주세요</p>
     		 	<span class="guide ok">이 아이디는 사용 가능합니다.</span>
				<span class="guide error">이 아이디는 사용 할 수 없습니다.</span>
				<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value=" "/>
	<input type="password" class="mInsert-input" maxlength="30" name="aPwd" id="userPwd" placeholder="*비밀번호" onKeyup="pwdvalid()" required> 
            <div id="pwdHidden">
            	<div id="pwdHiddenP">
            		<p id="pwdValid4">6자 이상 </p>	
            		<p id="pwdValid1">영문소문자 </p>
            		<p id="pwdValid2">숫자포함 </p>
            		<p id="pwdValid3">특수문자포함</p>
            	</div>
			</div>
            <input type="password" class="mInsert-input" maxlength="30" name="aPwd2" id="pwdidentity" placeholder="비밀번호확인" onKeyup="pwdidentitycheck()" required>
            <p id="pwdidentityP1">일치합니다</p><p id="pwdidentityP2">불일치합니다</p>
			
            <input type="text" maxlength="50" id="aName" name="aName" class="mInsert-input"  placeholder="*이름" required>
            
			<div id="calender-div">
				<div id="calender-margin">
            		<input type="date" id="birth" class="mInsert-input"  name="abirth" value="" >
  				</div>
  			</div>
  		
            <input type="tel" maxlength="20" name="aPhone" class="mInsert-input"  placeholder="핸드폰(-없이 입력)">
	
			<input type="email" name="aEmail" class="mInsert-input" placeholder="이메일">
					<div id="address-flex">
						<div id="address-margin">
							<input type="text" name="post" class="postcodify_postcode5" id="address-post" value="" size="6" placeholder="우편번호"/>
							<button type="button" class="post-search" id="postcodify_search_button">검색</button>
						</div>
					</div>
						<input type="text" name="address1" class="postcodify_address mInsert-input" value="" placeholder="도로명주소"/>
						<input type="text" name="address2" class="postcodify_extra_info mInsert-input" value="" placeholder="상세주소"/>
					<div id="department-div">
						<div id="department-margin">	
							<input type="text" id="comCode" name="comCode" class="mInsert-input" value="" placeholder="부서코드"/><button id="comCode-search" onclick="departmentsearch()">검색</button>		
						</div>
					</div>
					<div id="department-div">
						<div id="department-margin">
							<input id="apCode" name="apCode" placeholder="*아파트 코드" required>
							<select name="aDepartment" id="department-select">
    							<option value="">----부서----</option>
    							<option value="시설">시설</option>
    							<option value="보안">보안</option>
    							<option value="인력">인력</option>
    							<option value="미화">미화</option>
    							<option value="편의시설">편의시설</option>
    							<option value="기타">기타</option>
							</select>
						</div>
					</div>
					<br>
			<div id="insert-div">
				<div id="insert-margin">
               		<button id="joinBtn" type="submit" id="insert">회원가입</button> 
               		<input type="reset" value="돌아가기" id="return" onclick="returnLogin();">
           		</div>
           	</div>
   </form>
   <br>
   </div>
   </div>
   </div>
   
   <!-- 2. jQuery와 Postcodify를 로딩한다 -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- 3. "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> 
		$(function() { 
			$("#postcodify_search_button").postcodifyPopUp(); 
		}); 
		
		$(function(){
			$("#aId").on("keyup",function(){
				console.log("작동중");
				var aId = $(this).val().trim();
				console.log(aId);
				
				if( /[~!@#$%^&*()_+|<>?:{}" "' ';]/.test($('#aId').val())){
	        		$('#idvalid1').attr('style','display:block').css('color','red');
	        		 if($('#aId').val().length<=0){
	       				$('#idvalid1').attr('style','display:none');
	       				$('#idvalid2').attr('style','display:none');
	               	}
	      			 if(aId.length > 5){
	      				$(".guide").hide();	// 나타났던 span 태그 숨기기
	      				/* $("#idDuplicateCheck").val(0);		// 중복 여부 확인 값 리셋 */
	      			}
	        		return false;
				}
				
	        	if(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test($('#aId').val())){
	        		$('#idvalid1').attr('style','display:block').css('color','red');
	        		if(userId.length > 5){
	      				$(".guide").hide();	// 나타났던 span 태그 숨기기
	      				/* $("#idDuplicateCheck").val(0);		// 중복 여부 확인 값 리셋 */
	      			}
	        		return false;
	        	}
	        	
	        	if( /[a-z0-9]/.test($('#aId').val())){
	        		$('#idvalid1').attr('style','display:none');
	     		}else{
	     			$('#idvalid1').attr('style','display:block').css('color','red');
	              	}

	        	 if($('#aId').val().length<5){ 
	      		 	$('#idvalid2').attr('style','display:block').css('color','red');
	      		 	
	         	}else{
	         		$('#idvalid2').attr('style','display:none');
	         	} 
	        	 if($('#aId').val().length<=0){
	 				$('#idvalid1').attr('style','display:none');
	 				$('#idvalid2').attr('style','display:none');
	         	}
	        	        	 
	        	 if(aId.length < 5){
					$(".guide").hide();	// 나타났던 span 태그 숨기기
					$("#idDuplicateCheck").val(0);		// 중복 여부 확인 값 리셋
					return;
				}
	        	 
				$.ajax({
					url:"adupid.do",
					data:{id:aId},
					success:function(data){
						// if(data == "true"){	// 아이디를 사용할 수 있을 때
						if(data.isUsable == true){
							$(".error").hide();
							$(".ok").show();
							$("#idDuplicateCheck").val(1);
							
						}else{	// 아이디를 사용할 수 없을 때
							$(".error").show();
							$(".ok").hide();
							$("#idDuplicateCheck").val(0);
						}
					},
					error:function(){
						console.log("ajax 통신 실패");
					}
				});
			});
		});
	             
	        function pwdvalid(){
	        	console.log("작동중");
	        	
	        	if($('#userPwd').val().length<6){
	        		$('#pwdValid4').attr('style','display:inline-block').css('color','red');
	        		if($('#userPwd').val().length<=0){
	    				$('#pwdValid1').attr('style','display:none');
	    				$('#pwdValid2').attr('style','display:none');
	    				$('#pwdValid3').attr('style','display:none');
	    				$('#pwdValid4').attr('style','display:none');
	    				return false;
	            	}
	        	}else{
	        		$('#pwdValid4').attr('style','display:inline-block').css('color','green');
	        	}
	        	
	        	 if(/[a-z]/.test($('#userPwd').val())){
	        		 $('#pwdValid1').attr('style','display:inline-block').css('color','green');
	        	}else{
	        		$('#pwdValid1').attr('style','display:inline-block').css('color','red');
	        		}
	        	
	        	if(/[0-9]/.test($('#userPwd').val())){
	        		$('#pwdValid2').attr('style','display:inline-block').css('color','green');
	        	}else{
	        		$('#pwdValid2').attr('style','display:inline-block').css('color','red');
	            		}
	        	
	        	 if(/[~!@#$%^&*()_+|<>?:{};=-]/.test($('#userPwd').val())){
	        		 $('#pwdValid3').attr('style','display:inline-block').css('color','green');
	        	}else{
	        		$('#pwdValid3').attr('style','display:inline-block').css('color','red');
	        		return false;
	        	}
	        	
	        	
	        }
	        
	        function pwdidentitycheck(){
	        	console.log("pwdidentity 작동중");
	        	if($('#pwdidentity').val().length<=0){
	        		$('#pwdidentityP1').attr('style','display:none');
	        		$('#pwdidentityP2').attr('style','display:none');
	        	}
	        	else if($('#userPwd').val() == $('#pwdidentity').val()){
	        		$('#pwdidentityP1').attr('style','display:block').css('color','green');
	        		$('#pwdidentityP2').attr('style','display:none');
	        	}else{
	        		$('#pwdidentityP2').attr('style','display:block').css('color','red');
	        		$('#pwdidentityP1').attr('style','display:none');
	        	}
	        }
	        
	       function joinValidate(){
	        	if(/[A-Z]+/.test($('#userPwd').val())){
	        		alert("비밀번호 영대문자는 제외해주세요");
	        		$('#userPwd').focus();
	        		return false;
	        	}
	        	if(/[a-z]+/.test($('#userPwd').val())){

	        	}else{
	        		alert("비밀번호 영소문자를 포함해주세요");
	        		$('#userPwd').focus();
	        		return false;
	        	}
	        	if(/[0-9]+/.test($('#userPwd').val())){
	        		
	        	}else{
	        		alert("비밀번호 숫자를 포함해 주세요");
	        		$('#userPwd').focus();
	        		return false; 
	        	}
	        	if(/[~!@#$%^&*()_+|<>?:{}]+/.test($('#userPwd').val())){
	        	}else{
	        		alert("비밀번호 특수 문자 포함해 주세요");
	        		$('#userPwd').focus();
	        		return false;
	        	}
	        	if($('#userPwd').val().length<8){
	        		alert("비밀번호는 8글자 이상입니다!!");
	        		$('#userPwd').focus();
	        		return false;
	        	}
	        	if($('#userPwd').val() != $('#pwdidentity').val()){
	        		alert("비밀번호가 일치하지 않습니다!!");
	        		$('#pwdidentity').focus();
	        		return false;
	        	}
	        	 if(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test($('#address1').val())){
	        		 alert("동 주소에  숫자만 입력해주세요");
	         		$('#address1').focus();
	         		return false;
	        	}
				if(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test($('#address2').val())){
					alert("호 주소에 숫자만 입력해주세요");
	        		$('#address2').focus();
	        		return false;
	        	}
				
			
				if($('#mName').val().length<2){
	        		alert("이름은 2글자 이상입니다.");
	        		$('#mName').focus();
	        		return false;
	        	}
	        }
	       
	       function returnLogin(){
	    		 location.href="login.do"
	    	 }
	       
	       function departmentsearch(){
	    	   window.open('ccadlist.do','비밀번호찾기','width=500, height=600, left=500, top=150');
	       }
	</script>
	
	    
	
	
	
	
	
	
</body>
</html>