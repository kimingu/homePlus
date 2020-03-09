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
#apCode{
	margin-left:19%;	
	margin-top:2%;
      overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border: 1px solid ;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      height:25px;
      width:31%;	
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
      action="minsert.do" method="POST" enctype="multipart/form-data" onsubmit="return joinValidate();">
		<input type="text" class="mInsert-input" maxlength="30" id="userId" name="mId" required placeholder="*아이디" > 
     		 <p class="idIdentityP" id="idvalid1">영소문자,숫자만 작성해주세요</p><p class="idIdentityP" id="idvalid2">5자이상 작성해주세요</p>
     		 	<span class="guide ok">이 아이디는 사용 가능합니다.</span>
				<span class="guide error">이 아이디는 사용 할 수 없습니다.</span>
				<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value=" "/>
	<input type="password" class="mInsert-input" maxlength="30" name="mPwd" id="userPwd" placeholder="*비밀번호" onKeyup="pwdvalid()" required> 
            <div id="pwdHidden">
            	<div id="pwdHiddenP">
            		<p id="pwdValid4">8자 이상 </p>	
            		<p id="pwdValid1">영문소문자 </p>
            		<p id="pwdValid2">숫자포함 </p>
            		<p id="pwdValid3">특수문자포함 </p>	
            	</div>
			</div>
            <input type="password" class="mInsert-input" maxlength="30" name="mPwd2" id="pwdidentity" placeholder="비밀번호확인" onKeyup="pwdidentitycheck()" required>
            <p id="pwdidentityP1">일치합니다</p><p id="pwdidentityP2">불일치합니다</p>
			
            <input type="text" maxlength="50" id="mName" name="mName" class="mInsert-input"  placeholder="*이름" required>
            
  			<input type="date" class="mInsert-input" name="mBirth">
  			
            <input type="tel" maxlength="20" name="mPhone" class="mInsert-input"  placeholder="핸드폰(-없이 입력)">
	
			<input type="email" name="mEmail" class="mInsert-input" placeholder="이메일">
			<div id="email-div">
				<div id="email-margin">
					<input type="checkbox" id="emailstatus" name="mEmailStatus" value="Y">
					<P id="email-check">광고 밎 쿠폰 혜택을 원하시면 체크 해주세요</P>
				</div>
			</div>
			<div id="address-div">
				<div id="address-margin">
					<input id="apCode" name="apCode" placeholder="*아파트 코드" required><input id="address" name="mAddress" placeholder="*동/호수" required><input name="mArea" id="address3" value="역삼동">
				</div>
			</div>
			<input type="text" name="mAddressCode" class="mInsert-input" placeholder="*주민코드" required>
			<div class="filebox bs3-primary">
                            <input class="upload-name" name="muploadFile" value="" placeholder="*파일선택" id="fileChoice" disabled="disabled">

                            <label for="ex_filename">업로드</label> 
                          <input type="file" name="muploadFile" id="ex_filename" class="upload-hidden"> 
                        </div>
              <div id="etc">
              	<input class="etc"  id="relation" name="mRelation" placeholder="*세대주와 관계 " required><input name="mCar" class="etc" placeholder="차량번호 "><input name="mAccount" class="etc" placeholder="계좌번호" id="">
              </div>       
                 
			<br>
			<div id="insert-div">
				<div id="insert-margin">
               		<button id="joinBtn" type="submit" id="insert">회원가입</button> 
               		<input type="reset" value="돌아가기" id="return" onclick="returnLogin();">
           		</div>
           	</div>
         
   </form>
   <br><br>
   </div>
   </div>
   </div>
  <script>
    let simplepicker = new SimplePicker({
      zIndex: 10
    });

    const $button = document.querySelector('button');
    const $eventLog = document.querySelector('.event-log');
    $button.addEventListener('click', (e) => {
      simplepicker.open();
    });

    simplepicker.on('submit', (date, readableDate) => {
    	$eventLog.value = readableDate;
    });
  </script>
<script>
$(document).ready(function(){
	   var fileTarget = $('.filebox .upload-hidden');
	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            // 파일명 추출
	            var filename = $(this)[0].files[0].name;
	        }else {
	            // Old IE 파일명 추출
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        };
	        $(this).siblings('.upload-name').val(filename);
	    });

	    //preview image 
	    var imgTarget = $('.preview-image .upload-hidden');

	    imgTarget.on('change', function(){
	        var parent = $(this).parent();
	        parent.children('.upload-display').remove();
	        if(window.FileReader){
	            //image 파일만
	            if (!$(this)[0].files[0].type.match(/image\//)) return;
	            var reader = new FileReader();
	            reader.onload = function(e){
	                var src = e.target.result;
	                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
	            }
	            reader.readAsDataURL($(this)[0].files[0]);
	        }else {
	            $(this)[0].select();
	            $(this)[0].blur();
	            var imgSrc = document.selection.createRange().text;
	            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

	            var img = $(this).siblings('.upload-display').find('img');
	            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
	        }
	    });
	});
</script>
<script>   	
   $(function(){
		$("#userId").on("keyup",function(){
			console.log("작동중");
			var userId = $(this).val().trim();
			
			if( /[~!@#$%^&*()_+|<>?:{}" "' ';]/.test($('#userId').val())){
        		$('#idvalid1').attr('style','display:block').css('color','red');
        		 if($('#userId').val().length<=0){
       				$('#idvalid1').attr('style','display:none');
       				$('#idvalid2').attr('style','display:none');
               	}
      			 if(userId.length > 5){
      				$(".guide").hide();	// 나타났던 span 태그 숨기기
      				/* $("#idDuplicateCheck").val(0);		// 중복 여부 확인 값 리셋 */
      			}
        		return false;
			}
			
        	if(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test($('#userId').val())){
        		$('#idvalid1').attr('style','display:block').css('color','red');
        		if(userId.length > 5){
      				$(".guide").hide();	// 나타났던 span 태그 숨기기
      				/* $("#idDuplicateCheck").val(0);		// 중복 여부 확인 값 리셋 */
      			}
        		return false;
        	}
        	
        	if( /[a-z0-9]/.test($('#userId').val())){
        		$('#idvalid1').attr('style','display:none');
     		}else{
     			$('#idvalid1').attr('style','display:block').css('color','red');
              	}

        	 if($('#userId').val().length<5){ 
      		 	$('#idvalid2').attr('style','display:block').css('color','red');
      		 	
         	}else{
         		$('#idvalid2').attr('style','display:none');
         	} 
        	 if($('#userId').val().length<=0){
 				$('#idvalid1').attr('style','display:none');
 				$('#idvalid2').attr('style','display:none');
         	}
        	        	 
        	 if(userId.length < 5){
				$(".guide").hide();	// 나타났던 span 태그 숨기기
				$("#idDuplicateCheck").val(0);		// 중복 여부 확인 값 리셋
				return;
			}
        	 
			$.ajax({
				url:"dupid.do",
				data:{id:userId},
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
        	
        	if($('#userPwd').val().length<8){
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
			
			if(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test($('#relation').val())){
				
			}else{
				alert("세대주와 관계에 한글만 입력해주세요");
				$('#relation').focus();
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
        
   </script>

</body>
</html>