<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>
<head>
      
    <link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
    <link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="stylesheet" href="resources/login/css/style.css"> 
<style>
	.login-category{
		background-color: #2b6cae;
		height:30px;
		width:100px;
		margin-right:10px;
		margin-bottom:5px;
		border-radius: 3px;
		font-size: 1rem;
		font-family: "Montserrat", sans-serif;
		font-weight: 300;
		color: #fff;
		text-transform: uppercase;
  		letter-spacing: 0.1rem;
  		transition: background-color 0.2s ease-in-out;
  		}
	.login-category:hover{
  	background-color:#99ccff; 
	}
	.login-category-float{
		padding-left:79%;
	} 
	.forms_buttons-forgot2{
	font-family: "Montserrat", sans-serif;
  	letter-spacing: 0.1rem;
  	color: #2b6cae;
  	text-decoration: underline;
  	transition: color 0.2s ease-in-out;
 	padding-right:65%;
	}
	.forms_buttons-forgot2:hover {
  color: #99ccff;
}
.forms_buttons-forgot3{
	font-family: "Montserrat", sans-serif;
  	letter-spacing: 0.1rem;
  	color: #2b6cae;
  	text-decoration: underline;
  	transition: color 0.2s ease-in-out;

	}
	.forms_buttons-forgot3:hover {
  color: #99ccff;
}
.forms_buttons-forgot4{
	font-family: "Montserrat", sans-serif;
  	letter-spacing: 0.1rem;
  	color: #2b6cae;
  	text-decoration: underline;
  	transition: color 0.2s ease-in-out;
  	margin-left:-40%;

	}
	.forms_buttons-forgot4:hover {
  color: #99ccff;
}
#button-info{
	background-color: #2b6cae;
		margin-right:10px;
		margin-bottom:5px;
		border-radius: 3px;
		font-size: 1rem;
		font-family: "Montserrat", sans-serif;
		font-weight: 300;
		color: #fff;
		text-transform: uppercase;
  		letter-spacing: 0.1rem;
  		transition: background-color 0.2s ease-in-out;
  		}
#button-info:hover{
  	background-color:#99ccff; 
}
#admin-insert{
background-color: #2b6cae;
		margin-right:10px;
		margin-bottom:5px;
		border-radius: 3px;
		font-size: 1rem;
		font-family: "Montserrat", sans-serif;
		font-weight: 300;
		color: #fff;
		text-transform: uppercase;
  		letter-spacing: 0.1rem;
  		transition: background-color 0.2s ease-in-out;
}
#admin-insert:hover{
  	background-color:#99ccff; 
}
#logo{
	padding-left:5%;
}
#login-admin-btn{
	margin-left:25%;
}
#login-user-btn{
	margin-left:25%;
}
#pwdcheck1{
margin-right:15%;
}
#failLogin{
color:red;
display:none;
}

</style>

</head>
<body>

<script>
		<c:if test="${ !empty msg }">
			alert('${msg}');
			<c:remove var="msg"/>
		</c:if>
	</script>

  <section class="user">
  <div class="user_options-container">
    <div class="user_options-text">
      <div class="user_options-unregistered">
        <h2 class="user_unregistered-title">스마트한 홈라이프의 시작!</h2>
        <p class="user_unregistered-text">홈플러스와 함께하고 싶으신가요? 아래의 버튼을 눌러주세요.</p>
        <button class="user_unregistered-signup" id="button-info" onclick="intro();">회사소개</button>
      </div>

      <div class="user_options-registered">
        <h2 class="user_registered-title">새로 오신 관리자이신가요?</h2>
        <p class="user_registered-text">아래의 버튼을 눌러서 가입해주세요.</p>
        <button class="user_registered-login" id="admin-insert" onclick="adInsert();">관리자 가입</button>
      </div>
    </div>
    
    <div class="user_options-forms" id="user_options-forms">
    <img src="resources/login/images/H_Logo_3.png" id="logo">
      <div class="user_forms-login">
        <h2 class="forms_title">USER Login</h2>
     	 <div class="login-category-float"><button class="login-category" id="login-user-btn">입주민</button></div>
        <form class="forms_form" action="mlogin.do" method="POST">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="ID" name="mId" class="forms_field-input" required autofocus />
            </div>
            <div class="forms_field">
              <input type="password" placeholder="Password" name="mPwd" class="forms_field-input" required />
              <p id="failLogin">가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.</p>
            </div>
          </fieldset>
          <div class="forms_buttons">
            <button type="button" class="forms_buttons-forgot3" onclick="memberinsert()">회원가입</button>
            <button type="button" class="forms_buttons-forgot4" id="pwdcheck1"  onclick="searchPwd1();">비밀번호 찾기</button>
            <!-- <input type="submit" value="LogIn" class="forms_buttons-action"> -->
            <button type="submit" class="forms_buttons-action" >login</button>
          </div>
        </form>
      </div>
      <div class="user_forms-signup">
        <h2 class="forms_title">ADMIN Login</h2>
          <div class="login-category-float"><button class="login-category" id="login-admin-btn">관리자</button></div>
       <form class="forms_form" action="alogin.do" method="POST">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="ID" name="aId" class="forms_field-input" required autofocus />
            </div>
            <div class="forms_field">
              <input type="password" placeholder="Password" name="aPwd" class="forms_field-input" required />
            </div>
          </fieldset>
          <div class="forms_buttons">
            <button type="button" class="forms_buttons-forgot2" id="pwdcheck2" onclick="searchPwd2();">비밀번호찾기</button>
            <!-- <input type="submit" value="LogIn" class="forms_buttons-action"> -->
            <button type="submit" class="forms_buttons-action">login</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

 <script>

 const loginuserbtn = document.getElementById('login-user-btn'),
 loginadminbtn = document.getElementById('login-admin-btn'),
   userForms = document.getElementById('user_options-forms'),
   info = document.getElementById('button-info');
 


 loginuserbtn.addEventListener('click', () => {
 userForms.classList.remove('bounceRight')
 userForms.classList.add('bounceLeft');
}, false);


 loginadminbtn.addEventListener('click', () => {
 userForms.classList.remove('bounceLeft')
 userForms.classList.add('bounceRight')
}, false);
	
 function intro(){
	 location.href="intro.do"
 }
 function managerhome(){
	 location.href="managerhome.do"
 }

 function memberinsert(){
	 location.href="memberinsert.do"
}
 function adInsert(){
	 location.href="admininsert.do"
 }

 function searchPwd1(){

 window.open('findmPwd.do','비밀번호찾기','width=400, height=300, left=300, top=150');

 }
function searchPwd2(){
	 window.open('findmPwd2.do','비밀번호찾기','width=400, height=300, left=300, top=150');
 }

</script>

    
</body>
</html>