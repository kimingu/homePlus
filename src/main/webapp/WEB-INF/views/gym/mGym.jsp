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

#mainimage-div {
   margin-top: 1%;
   width: 100%;
}

#mainimage-margin {
   margin: auto;
   width: 100%;
   border: 2px solid #efefef;
}

#main-image {
   margin: auto;
   width: 100%;
}

.total-m {
   margin-top: 1%;
   display: flex;
   width: 100%;   
}

#m-left {
   width: 800px;
   border-radius:1em;
}

#m-right {
   margin-left: 1%;
   width: 50%;
   border: 1px solid #efefef;
   border-radius:1em;
   
}
#map{
   width:70%;
   margin:auto;
   background-color:#2b6cae;
   height:500px;
   border-radius:1em;
}
#res-title{
   color:#fff;
   text-align:center;
}
#time-date{
overflow: hidden;
      cursor: pointer;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border: 1px solid ;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      height:45px;
      width:70%;
       text-align: center;
       text-align-last: center;
}
#time-hour{
   overflow: hidden;
      cursor: pointer;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border: 1px solid ;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      height:45px;
      width:70%;
       text-align: center;
       text-align-last: center;
}
#time-date-div{
   width:100%;
}
#title-div{
   width:100%;
   padding-top:3%;
}

#date-margin{
   padding-top:3%;
   margin-left:22%;
}
#hour-margin{
   padding-top:3%;
   margin-left:22%;
}
#people{
   background-color:#fff;
   border-radius:15em;
   width:70%;
   height:80%;
}
#people-h1{
   color: #2b6cae;
   padding-left:25%;
   padding-top:5%;
}
#people-div{
   padding-top:10%;
   height:35%;
   padding-left:22%;
}
#warn{
   color:red;
   padding-left:10%;
   display:none;
}
#close{
   color:red;
   padding-left:10%;
   display:none;
}
#reservation{
   overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      background-color: white;
      color: #2b6cae;
      outline: none;
      border: 1px solid ;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      height:55px;
      width:53%;   
      margin-left:23%;
      margin-top:5%;
}
#reservation:hover{
   background-color:#99ccff; 
   color:white;
}
.x{
   display:none;
}
.detail-content{
   margin-top:13%;
   color:#2b6cae;
   text-align:center;
   font-size:25px;
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
                  <a id="title">헬 스 장</a><span id="title1"> 건강한 삶을 제공합니다.</span>
               </h4>
            </div>
            
            <div id="mainimage-div">
               <div id="mainimage-margin">
                  <img alt="" src="resources/gym/images/gym1.jpg"
                     id="main-image">
               </div>
            </div>
            
            <div class="total-m">
               <div id="m-left">
                  <div id="map">
                     <div id="title-div">
                        <h3 id="res-title">헬스장 예약</h3>
                     </div>
                     
                     <div id="time-date-div">
                        <div id="date-margin">
                           <select  id="time-date"  >
                              <option value="0">-- 예약시간 --</option>
                                <c:forEach var="i"  begin="9" end="21">
                                   <option id="dateT" value="${i>9?i:'0'}${i>9?'':i}" >${i>9?i:'0'}${i>9?'':i}:00</option>
                                </c:forEach>
                                
                           </select>
                        </div>
                     </div>
                     <div id="time-hour-div">
                        <div id="hour-margin">
                           <select  id="time-hour" >
                                <option class="time-option" value='0'>-- 사용 시간 --</option>
                                   <option class="time-option" value='1'>1시간</option>
                                   <option class="time-option" value='2'>2시간</option>
                                   <option class="time-option" value='3'>3시간</option>
                           </select>
                        </div>
                     </div>
                     
                     <div id="people-div">
                     
                     <c:if test="${ !empty result }">
                        
                        <div id="people">
                        
                           <h1 id="people-h1">   ${result} / 30</h1>
                           <p id="warn"> &nbsp;&nbsp;지금시간은 사용하실수 없습니다.</p>
                           <p id="close">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용시간이 종료되었습니다.</p>
                        </div>
                        <script>
                        var date = new Date();
                        var close = date.getHours();
                           if(${result}>=30){
                              $("#warn").attr('style','display:block');
                           }
                           if(close>=22){
                              $("#close").attr('style','display:block');
                           }
                        </script>
                        
                        </c:if>
                        
                     </div>
                     <input class="x" id="stHour" name="gymReSt1" value="" >
                     <input class="x" id="endHour" name="gymReEnd1" value="">
                     <input class="x" id="loginUserCode" name="mCode" value="${loginUser.mCode}">
                     <button type="submit" id="reservation" onclick="insertGym();">예약하기</button>
                     
                  </div>
               </div>
               
               <div id="m-right">
                  <p class="detail-content" id="content2">
                              ※이용수칙※<br>
                              <br>
                           1. 1인 1일 기준 3시간 사용가능합니다.<br>
                           <br>
                           2. 헬스장은 샤워장만 제공합니다(수건,씻으실 용품 별도)<br>
                           <br>
                           3. 사용하신 운동기구는 정리 부탁드립니다.<br>
                           <br>
                           4. 상대방에게 피해가 가는 해동을 자제해주시기 바랍니다.<br>
                           <br>
                           5. 사용시간을 준수해서 사용해 주시기 바랍니다.
               </div>
               </div>
               
            </div>
               
            
            
            
         </div>
      
      
         
      </div>
   
   </div>
   
<script type="text/javascript">
Date.prototype.format = function (f) {

    if (!this.valueOf()) return " ";



    var weekKorName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];

    var weekKorShortName = ["일", "월", "화", "수", "목", "금", "토"];

    var weekEngName = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

    var weekEngShortName = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

    var d = this;



    return f.replace(/(yyyy|yy|MM|dd|KS|KL|ES|EL|HH|hh|mm|ss|a\/p)/gi, function ($1) {

        switch ($1) {

            case "yyyy": return d.getFullYear(); // 년 (4자리)

            case "yy": return (d.getFullYear() % 1000).zf(2); // 년 (2자리)

            case "MM": return (d.getMonth() + 1).zf(2); // 월 (2자리)

            case "dd": return d.getDate().zf(2); // 일 (2자리)

            case "KS": return weekKorShortName[d.getDay()]; // 요일 (짧은 한글)

            case "KL": return weekKorName[d.getDay()]; // 요일 (긴 한글)

            case "ES": return weekEngShortName[d.getDay()]; // 요일 (짧은 영어)

            case "EL": return weekEngName[d.getDay()]; // 요일 (긴 영어)

            case "HH": return d.getHours().zf(2); // 시간 (24시간 기준, 2자리)

            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2); // 시간 (12시간 기준, 2자리)

            case "mm": return d.getMinutes().zf(2); // 분 (2자리)

            case "ss": return d.getSeconds().zf(2); // 초 (2자리)

            case "a/p": return d.getHours() < 12 ? "오전" : "오후"; // 오전/오후 구분

            default: return $1;

        }

    });

};



String.prototype.string = function (len) { var s = '', i = 0; while (i++ < len) { s += this; } return s; };

String.prototype.zf = function (len) { return "0".string(len - this.length) + this; };

Number.prototype.zf = function (len) { return this.toString().zf(len); };

   $(function(){
      $("#time-date").change(function(){
         var hour = $("#time-date").val();
         var min = "00";
         var date1 = new Date()
         var test = Number(hour);
         var stHour= date1.format("yyyyMMdd"+test+min);
         console.log(stHour);
         $("#stHour").val(stHour) ;
         console.log($("#stHour").val());
      });
      $("#time-hour").change(function(){
         var min = "00";
         var hour = $("#time-date").val();
          var hour2 = $("#time-hour").val();
         var date1 = new Date()
         var test = Number(hour);
         var test2 = Number(hour2);
         var test3 = test+test2;
         var endHour= date1.format("yyyyMMdd"+test3+min);
         console.log(endHour);
         $("#endHour").val(endHour) ;
         console.log($("#endHour").val());
      });
      
   });
       
       function insertGym(){
          var gymReSt1 = $("#stHour").val();
          var gymReEnd1 = $("#endHour").val();
          var mCode = $("#loginUserCode").val().trim();
          var date = new Date();
          var hour = $("#time-date").val();
          var hour2 = $("#time-hour").val();
          var test = Number(hour);
         var test2 = Number(hour2);
         var test3 = test+test2;
         var end = "22";
          
          if($("#time-date").val()=="0" || $("#time-hour").val()=="0"){
             alert("시간을 선택해 주세요.");
             return false;
          } 
          if($("#time-date").val()< date.getHours()){
             alert("예약 할 수 없는 시간입니다.")
             return false;
          }
          if(test3>end){
             alert("이용할수 있는시간은 PM10시까지 입니다.");
             return false;
          }
          if(${result}>=30){
             alert("현재 시간은 이용자가 많아 사용하실수 없습니다.");
             return false;
          }
           else{
             $.ajax({
               url:"searchGym.do",
               data:{mCode:mCode,gymReSt1:gymReSt1,gymReEnd1:gymReEnd1},
               success:function(data){
                  // if(data == "true"){   // 아이디를 사용할 수 있을 때
                  if(data.isUsable == true){
                     alert("예약되었습니다.");
                  }else{   
                      alert("예약된 시간이 있습니다. 마이페이지에서 확인해주세요!");
                  }
               },
               error:function(){
                  console.log("ajax 통신 실패");
               }
            });
          }
          
       }
       
   
   
</script>




   <div>
      <jsp:include page="../common/footer.jsp" />
   </div>
</body>
</html>