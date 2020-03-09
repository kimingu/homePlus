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
     <link rel="stylesheet" href="resources/datepicker/css/simplepicker.css">
     <link rel="stylesheet" href="resources/memberInsert/css/memberInsert.css">
    
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
      
      #headTitle {
         text-align: left;
      }   
      
      #pwdHiddenP {
         width: 51%;
      }
   
      #pwdOk {
         display: none;
         margin: auto;
         margin-left: 43%;
      }
      
      #pwdNo {
         display: none;
         margin: auto;
         margin-left: 43%;
      }
      
      #pwdidentityP1 {
         margin-left: 43%;
      }
      
      #pwdidentityP2 {
         margin-left: 43%;
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
                  <div class="testStylen white-background padding-20 paddingLeftRgiht-35 marginBottom-20">
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
                        <p class="display-inlnine-block">${memberAddress }&nbsp;${loginUser.mAddress }</p>                                    
                     </div>
                     <div>
                        <h5 class="fontWeight-600 display-inlnine-block">전화번호 : </h5> &nbsp;&nbsp;
                        <c:choose>
                           <c:when test="${empty loginUser.mPhone }">
                              <c:set var="phoneNo" value="등록된 전화번호가 없습니다" />
                           </c:when>
                           <c:otherwise>
                              <c:set var="phoneNo" value="${loginUser.mPhone }" />
                           </c:otherwise>
                        </c:choose>         
                        <p class="display-inlnine-block">${phoneNo }</p>                                    
                     </div>
                     <div>
                        <h5 class="fontWeight-600 display-inlnine-block">이메일 : </h5> &nbsp;&nbsp;
                        <c:choose>
                           <c:when test="${empty loginUser.mEmail }">
                              <c:set var="emailText" value="등록된 전화번호가 없습니다" />
                           </c:when>
                           <c:otherwise>
                              <c:set var="emailText" value="${loginUser.mEmail }" />
                           </c:otherwise>
                        </c:choose>   
                        <p class="display-inlnine-block">${emailText }</p>                                    
                     </div>
                     <div>
                        <h5 class="fontWeight-600 display-inlnine-block">차량번호 : </h5> &nbsp;&nbsp;
                        <c:choose>
                           <c:when test="${empty loginUser.mCar }">
                              <c:set var="carNo" value="등록된 차량이 없습니다" />
                           </c:when>
                           <c:otherwise>
                              <c:set var="carNo" value="${loginUser.mCar }" />
                           </c:otherwise>
                        </c:choose>
                        <p class="display-inlnine-block">${carNo }</p>                                    
                     </div>
                     <div>
                        <c:if test="${loginUser.mAccount != null }">
                           <c:set var="t" value="${fn:indexOf(loginUser.mAccount, '/') }" />
                           <c:set var="bank" value="${fn:substring(loginUser.mAccount, 0 , t) }" />
                           <c:set var="account" value="${fn:substring(loginUser.mAccount, t + 1, fn:length(loginUser.mAccount)) }" />
                        </c:if>   
                        <c:if test="${loginUser.mAccount == null }">
                           <c:set var="bank" value="" />
                           <c:set var="account" value="등록된 계좌번호가 없습니다" />
                        </c:if>
                        <h5 class="fontWeight-600 display-inlnine-block">계좌번호 : </h5> &nbsp;&nbsp;
                        <p class="display-inlnine-block"><b>${bank }</b>&nbsp;&nbsp;${account }</p>                                    
                     </div>
                     
                     
                     <div class="margin-10 textAlign-center">      
                        <a class="btn-alt small active margin-null fontWeight-400" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">비밀번호 변경</a>
                        <a href="updateMyInfo.do" class="btn-alt small active margin-null fontWeight-400">프로필 변경</a>         
                     </div>
                  </div>   
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
               <h5 class="modal-title fontWeight-600 fontSize-20" id="exampleModalLabel">비밀번호 변경</h5>            
            </div>
            
            <div class="modal-body">
               <form id="updatePwd" method="post" action="updateMyPwd.do">
                  <div class="form-group">
                     <label for="curPwd" class="col-form-label">현재 비밀번호:</label>
                     <input type="password" class="mInsert-input" maxlength="30" name="userPwd" id="userPwd" placeholder="현재 비밀번호" onKeyup="pwdCheck()" required>
                     <p id="pwdOk">일치합니다</p><p id="pwdNo">불일치합니다</p>             
                  </div>
                  <div class="form-group">
                     <label for="mdfPwd" class="col-form-label">변경 비밀번호:</label>
                     <input type="password" class="mInsert-input" maxlength="30" name="changePwd" id="changePwd" placeholder="*비밀번호" onKeyup="pwdvalid()" required> 
                     <div id="pwdHidden">
                        <div id="pwdHiddenP">
                           <p id="pwdValid4">8자 이상 </p>   
                           <p id="pwdValid1">영문소문자 </p>
                           <p id="pwdValid2">숫자포함 </p>
                           <p id="pwdValid3">특수문자포함 </p>   
                        </div>
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="chkPwd" class="col-form-label">비밀번호 확인:</label>
                        <input type="password" class="mInsert-input" maxlength="30" name="mPwd2" id="pwdidentity" placeholder="비밀번호확인" onKeyup="pwdidentitycheck()" required>
                          <p id="pwdidentityP1">일치합니다</p><p id="pwdidentityP2">불일치합니다</p>
                  </div>
               </form>
            </div>
               
            <div class="modal-footer">
               <a href="#" class="btn-alt small active margin-null fontWeight-400" data-dismiss="modal">취소</a>
               <a id="submitBtn" class="btn-alt small active margin-null fontWeight-400">변경</a>      
            </div>
         </div>
      </div>
   </div>
   <!-- 비밀번호 모달 end -->
      
     
   <div>
      <jsp:include page="../common/footer.jsp"/>   
   </div>
  
   <script>
   
      var flag = true;
   
      $("#submitBtn").on("click", function(){
         if(flag) {
            $("#updatePwd").submit();   
         }else {
            alert("잘못된 정보입니다");
         }
      });
   
      
      
      function pwdCheck() {
         var userPwd = $("#userPwd").val();
         console.log(userPwd);
         
         $.ajax({
            url: "pwdCheck.do",
            dataType: "json",
            data: {userPwd:userPwd},
            success: function(data) {
               if(data.result == true) {
                  $("#pwdOk").attr("style", "display:inline-block").css("color", "green");
                  $("#pwdNo").attr("style", "display:none");   
                  
                  flag = true;
               }else {
                  $("#pwdOk").attr("style", "display:none");
                  $("#pwdNo").attr("style", "display:inline-block").css("color", "red");
                  
                  flag = false;
               }
            },
            error: function(e) {
               console.log(e);
            }
         })
         
      }
      
      
        function pwdvalid(){
           console.log("작동중");
           
           if($("#changePwd").val().length < 8) {
              $("#pwdValid4").attr("style", "display:inline-block").css("color", "red");
              
              if($("#changePwd").val.length <= 0) {
                $('#pwdValid1').attr('style','display:none');
                $('#pwdValid2').attr('style','display:none');
                $('#pwdValid3').attr('style','display:none');
                $('#pwdValid4').attr('style','display:none');      
              }
              
              flag = false;
              
           }else{
              $("#pwdValid4").attr("style", "display:inline-block").css("color", "green");
           }
           
           
           if(/[a-z]/.test($("#changePwd").val())) {
              $("#pwdValid1").attr("style", "display:inline-block").css("color", "green");
              
              flag = true;
           }else {
              $("#pwdValid1").attr("style", "display:inline-block").css("color", "red");
              
              flag = false;
           }
           
           if(/[0-9]/.test($('#changePwd').val())){
              $("#pwdValid2").attr("style", "display:inline-block").css("color", "green");
              
              flag = true;
           }else {
              $("#pwdValid2").attr("style", "display:inline-block").css("color", "red");
              
              flag = false;
           }

           
         if(/[~!@#$%^&*()_+|<>?:{};=-]/.test($('#changePwd').val())){
              $("#pwdValid3").attr("style", "display:inline-block").css("color", "green");
              
              flag = true;
           }else {
              $("#pwdValid3").attr("style", "display:inline-block").css("color", "red");
              
              flag = false;
           }
           
           
        }
   
      function pwdidentitycheck(){
         console.log("pwdidentity 작동중");
         if($('#pwdidentity').val().length<=0){
            $('#pwdidentityP1').attr('style','display:none');
            $('#pwdidentityP2').attr('style','display:none');
            flag = false;
         }else if($('#changePwd').val() == $('#pwdidentity').val()){
            $('#pwdidentityP1').attr('style','display:block').css('color','green');
            $('#pwdidentityP2').attr('style','display:none');
            
            flag = true;
         }else{
            $('#pwdidentityP2').attr('style','display:block').css('color','red');
            $('#pwdidentityP1').attr('style','display:none');
            flag = false;
         }
      }
         

   </script>

</body>
</html>