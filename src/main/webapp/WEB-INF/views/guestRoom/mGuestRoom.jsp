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
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="resources/datepicker/css/datepickerCSS.css">

<!--  <script src="resources/datepicker/js/datepickerJs.js"></script> 
한국어  달력 쓰려면 추가 로드
<script src="resources/datepicker/js/datepickerJsKo.js"></script>  -->

<style>
#total {
   width: 100%;
   background-color: #F6F6F6;
   display: flex;
}

#side-bar {
   margin-left: 0.2%;
   margin-top: 85px;
   width: 18%;
   border: 1px solid #efefef;
   background-color: #FFFFFF;
}

#main {
   margin-left: 0.2%;
   margin-top: 85px;
   width: 82%;
   background-color: #FFFFFF;
   border: 1px solid #efefef;
}

#minhoo {
   background: white;
   padding-left: 25px;
   padding-right: 25px;
   /* width:1000px; */
   min-height: 1400px;
}
#headTitle {
   margin-top: 20px;
   text-align: left;
   padding-top: 10px;
   border-bottom: 1px solid #E2E2E2;
}

#title1 {
   font-size: 14px;
}

#title {
   font-size: 25px;
}
#m-total{
   margin-top:1%;
   width:100%;
   display:flex;
   background-color:#fff;
}
#map{
   width:65%;
   border:1px solid #efefef;
   height:800px;
   background-color:#fff;
   border-radius:1em;
   /* background-image: url("resources/guestRoom/images/treefloor5.jpg"); */
   
}

#map-datail{
   width:35%;
   margin-left:0.5%;
   border:1px solid #efefef;
   background-color:#fff;
   border-radius:1em;
}
#roomimage{
   height:50%;
}

#room-detail{
   border-top:1px solid #efefef;
   height:50%;
}
#level1{
   display:flex;
   height:50%;
}
#level2{
   width:100%;
   display:flex;
   height:50%;
}
#room101{
   
   width:20%;
   height:100%;
   border:2px solid black;
   border-radius: 1em;
   background-color:#CEF6E3;
}
#room102{
   
   width:40%;
   height:100%;
   border:2px solid black;
   border-radius: 1em;
   background-color:#CEF6E3;
   margin-left:15%;
}
#room103{
   
   width:60%;
   height:80%;
   border:2px solid black;
   border-radius: 1em;
   background-color:#CEF6E3;
   margin-top:8%;
}
#room201{
   display:none;
   width:70%;
   height:80%;
   border:2px solid black;
   border-radius: 1em;
   background-color:#CEF6E3;
   margin-left:30%;
}
#room202{
   display:none;
   margin-top:8%;
   width:50%;
   height:80%;
   border:2px solid black;
   border-radius: 1em;
   background-color:#CEF6E3;
}
#stair-margin{
   width:40%;
   height:80%;
}
#stair-all-1{
   width:100%;
   height:100%;
   margin-top:30%;
   margin-left:84%; 
   
}
#stair-all-2{
   width:100%;
   height:100%;
   margin-top:30%;
   margin-left:86%;
}
#stair-margin2{
   display:none;
   width:50%;
   height:80%;
}
#door-arrow{
   margin-left:5%;
   width:20%;
   height:100%;
}
#door{
   margin-left:30%;
   width:100%;
   height:20%;
   background-image: url("resources/guestRoom/images/door-bottom.png");
   background-size: auto;
   background-repeat: no-repeat;
   background-position: center center;
}
#arrow{
   margin-left:30%;
   width:100%;
   height:20%;
   background-image: url("resources/guestRoom/images/bottom-arrow.png");
   background-size: auto;
   background-repeat: no-repeat;
   background-position: center center;
}
#stair{
   background-image: url("resources/guestRoom/images/stair1.png");
   background-repeat: no-repeat;
   width:14%;
   height:22%;
   /* margin-top:30%;
   margin-left:86%; */       
}
#stair2{
   background-image: url("resources/guestRoom/images/stair1.png");
   background-repeat: no-repeat;
   width:11%;
   height:22%;
   /* margin-top:30%;
   margin-left:89%; */         
}
#p1{
   display:none;
   width:20%;
   color:#2b6cae;
   font-size:15px;
   font-weight:bold;
    
}
#p2{
   display:none;
   width:20%;
   color:#2b6cae;
   font-size:15px;
   font-weight:bold;
}

h1{
   text-align:center;
}
#roomimage{
   border-radius:1em;
   background-repeat: no-repeat;
   background-size: 100%;
   
}
.childinput{
   display:none;
   width:100%;
   height:100%;
}
.detail-content{
   color:#2b6cae;
   text-align:center;
   font-size:18px;
}
.roomNo{
   color:#2b6cae;
   text-align:center;
}
.resvervation{
   margin:auto;
      margin-top:2%;
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
.detailDiv{
   display:none;
}
#reser-date{
display:flex;
}
#test{
   background-image: url("resources/datepicker/images/calender.png");
   background-size: 100%;
    background-repeat: no-repeat;
    background-position: center center;
    border:none;
    height:50px;
   width:10%;
   z-index:2;
   margin-left:20%;
   
}
#datePicker{
   width:100%;
   height:100%;
   opacity: 0;
}

.datepicker table tr td.disabled,
.datepicker table tr td.disabled:hover {
  background-image: url("resources/datepicker/images/x2.png");
   background-size: 100%;
    background-repeat: no-repeat;
    background-position: center center;
    border:none;
  color: rgba( 0, 0, 0, 0.0 );
  cursor: default;
}

.datepicker table tr td.new {
  color: #999;
}
.event-log{
   text-align:center;
   overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border: 1px solid ;
      border-radius: 0.5em;
      border: none;
}
.resvervation{
   height:45px;
}
.resvervation:hover{
   background-color:#99ccff; 
   color:white;
}
#reser-btn{
display:none;
}
#level0{
   height:100%;
   background-image: url("resources/guestRoom/images/hello.gif");
   background-size: auto;
   background-repeat: no-repeat;
   background-position: center center;
}
#level0-1{
text-align :center;

}
#roomNo{
display:none;
}
.x{
display:none;
}

#sidebarTitle{
margin-top:9%;
   text-align:center;
}
.category-title{

   margin-left:35%;
   font-size:20px;
   color:#2b6cae;
}
.category-title:hover{
   color:black;
}
#title{
color:#2b6cae;
}

#mainimage-div {
   margin-top: 1%;
   width: 100%;
}

#mainimage-margin {
   margin: auto;
   width: 100%;
   height:70%;border: 2px solid #efefef;
}

#main-image {
   margin: auto;
   width: 100%;
   height:400px;
   
}




</style>



</head>
<body>


   <div>
      <jsp:include page="../common/menubar.jsp" />
   </div>
   <div id="total">
      <br> <br> <br> <br>
   
      <div id="side-bar">
      <ul>
            <div id="sidebarTitle">
               <h3>
                  <a id="title">편의시설</a>
               </h3>
            </div>

            <br><br>
            <li><a href="reading.do"> <span class="category-title">독서실
                  </span></a></li>
            <br><br>
            <li><a href="mGym.do"><span class="category-title">헬스장
                  </span> </a></li>
            <br><br>
            <li><a href="mGuestRoom.do"><span class="category-title">게스트룸
                  </span></a></li>
            
         </ul>
      
      </div>
      
      <div id="main">
         <div id="minhoo">
            <div id="headTitle">
               <h4>
                  <a id="title">게스트 룸</a><span id="title1"> 부족한 공간을 제공합니다.</span>
               </h4>
            </div>
            
            <br>
            <div id="mainimage-div">
               <div id="mainimage-margin">
                  <img alt="" src="resources/guestRoom/images/12.jpg"
                     id="main-image">
               </div>
            </div>
            <div id="m-total">
               <div id="map">
                  
                  <div id="level1">
                  
                  
                     <div class="room" id="room101">
                        <h1>101호</h1>
                        <input type="text" class="childinput" id="101" value="101">
                     </div>
                     <div id="door-arrow">
                        <div id="door">
                        
                        </div>
                        <div id="arrow">
                           
                        </div>
                     </div>
                     <div id="room102">
                        <h1>102호</h1>
                        <input type="text" class="childinput" id="102" value="102">
                     </div>
                     <div id="room201">
                        <h1>201호</h1>
                        <input type="text" class="childinput" id="201" value="201">
                     </div>
                  </div>
                  <div id="level2">
                     <div id="room103">
                        <h1>103호</h1>
                        <input type="text" class="childinput" id="" value="103">
                     </div>
                     <div id="room202">
                        <h1>202호</h1>
                        <input type="text" class="childinput" id="" value="202">
                     </div>
                     <div id="stair-margin">
                        <div id="stair-all-1">
                           <div id="stair"></div>
                           <p id="p1">2층 이동</p>
                        </div>
                     </div>
                     <div id="stair-margin2">
                        <div id="stair-all-2">
                           <div id="stair2"></div>
                           <p id="p2">1층 이동</p>
                        </div>
                     </div>
                  </div>
                  
                  
               </div>
               <div id="map-datail">
               
                  
                  <div id="roomimage">
                     <div id="level0" ></div>
                  </div>
                  
                  
                  <div id="room-detail">
                     <div id="level0-1">
                        <h1 style="color:#2b6cae;">* 안녕하세요 *</h1><br>
                        <h3 style="color:#2b6cae;">원하시는 방을 선택 후 
                        <br>날짜를 예약해주세요.</h3>
                     </div>
                     <div class="detailDiv" id="detail-101">
                        <h3 class="roomNo">101호</h3>
                        <p class="detail-content">
                           (권장) 5~6인이 이용할 수 있는 공간입니다.<br>
                           편안한 담소를 나누기에 충분한 공간입니다.<br>
                           <br>
                           ※이용 수칙※<br>
                           1. 이용 시간을 준수해주세요.<br>
                           2. 1일 기준 1가구 1방 사용가능합니다.<br> 
                           3. 입실시간은 오후 4시 이후입니다.<br>
                           4. 사용하신 후 7일은 이용하실수 없습니다.<br>
                           5. 냄새나는 음식 취사는 불가입니다.<br>
                           6. 방을 깨끗하게 사용해주세요.<br>
                           
                        </p>
                        
                        
                     </div>
                     <div class="detailDiv" id="detail-102">
                        <h3 class="roomNo">102호</h3>
                        <p class="detail-content">
                        
                           (권장) 6~8인이 이용할 수 있는 공간입니다.<br>
                           편안한 담소를 나누기에 충분한 공간입니다.<br>
                           <br>
                           ※이용 수칙※<br>
                           1. 이용 시간을 준수해주세요.<br>
                           2. 1일 기준 1가구 1방 사용가능합니다.<br> 
                           3. 입실시간은 오후 4시 이후입니다.
                           4. 사용하신 후 7일은 이용하실수 없습니다.<br>
                           5. 냄새나는 음식 취사는 불가입니다.<br>
                           6. 방을 깨끗하게 사용해주세요.<br>
                        </p>
                        
                        
                     </div>
                     <div class="detailDiv" id="detail-103">
                        <h3 class="roomNo">103호</h3>
                        <p class="detail-content" id="content1">
                        
                           (권장) 8~10인이 이용할 수 있는 공간입니다.<br>
                           편안한 담소를 나누기에 충분한 공간입니다.<br>
                           <br>
                           ※이용 수칙※<br>
                           1. 이용 시간을 준수해주세요.<br>
                           2. 1일 기준 1가구 1방 사용가능합니다.<br> 
                           3. 입실시간은 오후 4시 이후입니다.<br>
                           4. 사용하신 후 7일은 이용하실수 없습니다.<br>
                           5. 냄새나는 음식 취사는 불가입니다.<br>
                           6. 방을 깨끗하게 사용해주세요.<br>
                        </p>
                        
            
                     </div>
                     <div class="detailDiv" id="detail-201">
                        <h3 class="roomNo">201호</h3>
                        <p class="detail-content" id="content2">
                        
                           (권장) 20인이 이용할 수 있는 공간입니다.<br>
                           편안한 담소를 나누기에 충분한 공간입니다.<br>
<br>
                           ※이용 수칙※<br>
                           1. 이용 시간을 준수해주세요.<br>
                           2. 1일 기준 1가구 1방 사용가능합니다.<br> 
                           3. 입실시간은 오후 4시 이후입니다.<br>
                           4. 사용하신 후 7일은 이용하실수 없습니다.<br>
                           5. 냄새나는 음식 취사는 불가입니다.<br>
                           6. 방을 깨끗하게 사용해주세요.<br>                        </p>
                  
                     </div>
                     <div class="detailDiv" id="detail-202" >
                        <h3 class="roomNo">202호</h3>
                        <p class="detail-content" >
                           (권장) 12인이 이용할 수 있는 공간입니다.<br>
                           편안한 담소를 나누기에 충분한 공간입니다.<br>
                           <br>
                           ※이용 수칙※<br>
                           1. 이용 시간을 준수해주세요.<br>
                           2. 1일 기준 1가구 1방 사용가능합니다.<br> 
                           3. 입실시간은 오후 4시 이후입니다.<br>
                           4. 사용하신 후 7일은 이용하실수 없습니다.<br>
                           5. 냄새나는 음식 취사는 불가입니다.<br>
                           6. 방을 깨끗하게 사용해주세요.<br>
                           </p>
                     
                        
                     </div>
                     
                     <div id="reser-btn">
                        <div id="reser-date">
                        <div id="test">
                           <input class="x" id="loginUserCode1" name="mCode" value="${loginUser.mCode}">
                           <input class="x" id="loginUserCode2" name="mName" value="${loginUser.mName}">
                           <input id="roomNo" name="guerRoom" value="1">
                           <input type="text" id="datePicker" class="form-control" value="예약날짜보기" >
                        </div>
                             <input type="text" class="event-log" name="guerReDate1" value="날짜선택"readonly>
                          </div>
                          <button class="resvervation" onclick="insertGueRoom();">예약하기</button>
                       </div>
                    
                  </div>
               </div>
            </div>
            
            
               
            
            
            
         </div>
      
      
         
      </div>
   
   </div>
   <script>
      function enterkey() {
         var mName = $("#search-resermember-name").val()
      
           if (window.event.keyCode == 13) {
              
            if(mName.length <=0){
               alert("이름을 입력해주세요");
               $("#reMemInfo").attr('style','display:none');
               return false;
            }
             
              $.ajax({
               url:"adReGMember.do",
               data:{mName:mName},
               success:function(data){
                  // if(data == "true"){   // 아이디를 사용할 수 있을 때
                  if(data.list != null){
                     $("#reMemInfo").attr('style','display:block');
                     if(data.list.length>0){
                     
                        for(var i=0; i<data.list.length; i++){
                           $("#reMemInfo").html("<h3 style='color:#2b6cae;'>회원명 : "+data.list[i].mName+"</h3> <br>"+
                              "   <h4 style='color:#2b6cae;'> 좌석 번호 :" + data.list[i].reaSeat + "</h4>");
                        }
                     }else{
                        alert("예약 좌석 명단에 없습니다.");
                        $("#reMemInfo").attr('style','display:none');
                     }
                                       
                     
            
                  }else{   // 아이디를 사용할 수 없을 때
                      alert("예약 좌석 명단에 없습니다.");
                  }
               },
               error:function(){
                  console.log("ajax 통신 실패");
               }
            });
              
               
           }
   }


         
      </script>
   
   <script>
      var room1= document.getElementById("room101");
      var room2= document.getElementById("room102");
      var room3= document.getElementById("room103");
      var room4= document.getElementById("room201");
      var room5= document.getElementById("room202");
      var deContent1 = document.getElementById("detail-101");
      var deContent2 = document.getElementById("detail-102");
      var deContent3 = document.getElementById("detail-103");
      var deContent4 = document.getElementById("detail-201");
      var deContent5 = document.getElementById("detail-202");
      var hello = document.getElementById("level0");
      var hello2 = document.getElementById("level0-1");
      var btn = document.getElementById("reser-btn");
      
      
      var door = document.getElementById("door-arrow");
      
      var stair1 = document.getElementById("stair-margin");
      var stair2 = document.getElementById("stair-margin2");
      var stair3 = document.getElementById("stair2");
      
      var p1 = document.getElementById("p1");
      var p2 = document.getElementById("p2");
      
      var roomimage = document.getElementById("roomimage");
      $("#stair").click(function(){
         stair1.style.display = "none";
         stair2.style.display = "block";
         
         room1.style.display = "none";
         room2.style.display = "none";
         room3.style.display = "none";
         room4.style.display = "block";
         room5.style.display = "block";
         
         door.style.display = "none";
         
      })
      $("#stair2").click(function(){
         stair1.style.display = "block";
         stair2.style.display = "none";
         room1.style.display = "block";
         room2.style.display = "block";
         room3.style.display = "block";
         room4.style.display = "none";
         room5.style.display = "none";
         
         door.style.display = "block";
         
      })
      $(room1).mouseenter(function(){
               room1.style.border = "5px solid #2b6cae";
       });
      $(room1).mouseleave(function(){
         room1.style.border = "2px solid black";
       });
      $(room2).mouseenter(function(){
            room2.style.border = "5px solid #2b6cae";
      });
      $(room2).mouseleave(function(){
            room2.style.border = "2px solid black";
      });
      $(room3).mouseenter(function(){
            room3.style.border = "5px solid #2b6cae";
      });
      $(room3).mouseleave(function(){
            room3.style.border = "2px solid black";
      });
      $(room4).mouseenter(function(){
            room4.style.border = "5px solid #2b6cae";
      });
      $(room4).mouseleave(function(){
            room4.style.border = "2px solid black";
      });
      $(room5).mouseenter(function(){
            room5.style.border = "5px solid #2b6cae";
      });
      $(room5).mouseleave(function(){
            room5.style.border = "2px solid black";
      });
      $("#stair").mouseenter(function(){
         p1.style.display = "block";
      });
      $("#stair").mouseleave(function(){
         p1.style.display = "none";
      });
      $("#stair2").mouseenter(function(){
         p2.style.display = "block";
      });
      $("#stair2").mouseleave(function(){
         p2.style.display = "none";
      });
      $(room1).click(function(){
         roomimage.style.backgroundImage= "url('resources/guestRoom/images/g1.jpg')";
         deContent1.style.display ="block";
         deContent2.style.display ="none";
         deContent3.style.display ="none";
         deContent4.style.display ="none";
         deContent5.style.display ="none";
         hello.style.display="none";
         hello2.style.display="none";
         btn.style.display ="block";
         console.log($(this).children('input[type=text]').val());
         $("#roomNo").val($(this).children('input[type=text]').val());
         
      })
      $(room2).click(function(){
         roomimage.style.backgroundImage= "url('resources/guestRoom/images/g2.jpg')";
         deContent1.style.display ="none";
         deContent2.style.display ="block";
         deContent3.style.display ="none";
         deContent4.style.display ="none";
         deContent5.style.display ="none";
         hello.style.display="none";
         hello2.style.display="none";
         btn.style.display ="block";
         $("#roomNo").val($(this).children('input[type=text]').val());
         
      })
      $(room3).click(function(){
         roomimage.style.backgroundImage= "url('resources/guestRoom/images/g3.jpg')";
         deContent1.style.display ="none";
         deContent2.style.display ="none";
         deContent3.style.display ="block";
         deContent4.style.display ="none";
         deContent5.style.display ="none";
         hello.style.display="none";
         hello2.style.display="none";
         btn.style.display ="block";
         $("#roomNo").val($(this).children('input[type=text]').val());
      })
      $(room4).click(function(){
         roomimage.style.backgroundImage= "url('resources/guestRoom/images/g4.jpg')";
         deContent1.style.display ="none";
         deContent2.style.display ="none";
         deContent3.style.display ="none";
         deContent4.style.display ="block";
         deContent5.style.display ="none";
         hello.style.display="none";
         hello2.style.display="none";
         btn.style.display ="block";
         $("#roomNo").val($(this).children('input[type=text]').val());
      })
      $(room5).click(function(){
         roomimage.style.backgroundImage= "url('resources/guestRoom/images/g5.jpg')";
         deContent1.style.display ="none";
         deContent2.style.display ="none";
         deContent3.style.display ="none";
         deContent4.style.display ="none";
         deContent5.style.display ="block";
         hello.style.display="none";
         hello2.style.display="none";
         btn.style.display ="block";
         $("#roomNo").val($(this).children('input[type=text]').val());
      })
      
   </script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script>
  $(function(){
              
            $('#datePicker').datepicker({
               
                format: "yyyy-mm-dd",   //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
                startDate: '-0d',   //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
                endDate: '+60d',   //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
                autoclose : true,   //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
                calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
                clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
                
                datesDisabled : ["2020-02,17","2020-02-26"],
                daysOfWeekDisabled :[] ,   //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
                daysOfWeekHighlighted : [], //강조 되어야 하는 요일 설정
                disableTouchKeyboard : false,   //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
                immediateUpdates: false,   //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
                multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
                multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
                templates : {
                    leftArrow: '&laquo;',
                    rightArrow: '&raquo;'
                }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
                showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
                title: "게스트룸 예약",   //캘린더 상단에 보여주는 타이틀
                todayHighlight : true ,   //오늘 날짜에 하이라이팅 기능 기본값 :false 
                toggleActive : true,   //그대로 유지 true인 경우 날짜 삭제
                weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 이미 선택된 날짜 선택하면 기본값 : false인경우 
                language : "ko"   //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다. 
                
                
                   
            });//datepicker end
           
        });//ready end
        
        
        
        $(function() {   
        
            $("#datePicker").change(function(){
                console.log($("#datePicker").val());
                    $(".event-log").val($("#datePicker").val());
            });
        });
        
        function insertGueRoom(){
           var mCode = $("#loginUserCode1").val().trim();
           var mName = $("#loginUserCode2").val().trim();
           var guerReDate1 = $(".event-log").val();
           var guerRoom = $("#roomNo").val();
           if($(".event-log").val()=="날짜선택"){
              alert("날짜를 선택해주세요");
              return false;
           }else{
              $.ajax({
               url:"searchGuest.do",
               data:{mCode:mCode,guerReDate1:guerReDate1,guerRoom:guerRoom},
               success:function(data){
                  
                  if(data.isUsable == true){
                     alert("예약되었습니다.");
                  }else{   
                      alert("이미 예약이 된 방이 있습니다. 마이페이지에서 확인해주세요");
                  }
               },
               error:function(){
                  console.log("ajax 통신 실패");
               }
            });
           }
           
           
        }
        
    </script>
     <script src="resources/datepicker/js/datepickerJs.js"></script> 
   <!--한국어  달력 쓰려면 추가 로드-->
   <script src="resources/datepicker/js/datepickerJsKo.js"></script> 
    


   <div>
      <jsp:include page="../common/footer.jsp" />
   </div>
</body>
</html>