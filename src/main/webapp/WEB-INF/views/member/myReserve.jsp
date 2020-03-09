<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>
<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="stylesheet" href="resources/select/css/selectStyle.css">
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
   rel="stylesheet">
<script
   src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<link rel="stylesheet" href="resources/readingRoom/css/reading.css">
<link rel="stylesheet" href="resources/myPage/css/style.css">      

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

#sidebarTitle {
   margin-top: 20px;
   text-align: center;
   padding-top: 10px;
   border-bottom: solid 1px #E2E2E2;
   margin-left: 10%;
   margin-right: 10%;
   width: 80%;
}

#main {
   margin-left: 0.2%;
   margin-top: 85px;
   width: 82%;
   background-color: #FFFFFF;
   border: 1px solid #efefef;
}

.left {
   background-image: url("resources/readingRoom/images/left/off-left.png");
   border-left: 6px double #2b6cae;
   border-top: 6px inset #2b6cae;
   border-bottom: 6px outset #2b6cae;
   border-top-left-radius: 0.3em;
   border-bottom-left-radius: 0.3em;
}

.right {
   background-image:
      url("resources/readingRoom/images/right/off-right.png");
   border-right: 6px double #2b6cae;
   border-top: 6px inset #2b6cae;
   border-bottom: 6px outset #2b6cae;
   border-top-right-radius: 0.3em;
   border-bottom-right-radius: 0.3em;
}

.top {
   background-image: url("resources/readingRoom/images/top/off-top.png");
   border-top: 6px double #2b6cae;
   border-right: 6px outset #2b6cae;
   border-left: 6px inset #2b6cae;
   border-top-left-radius: 0.3em;
   border-top-right-radius: 0.3em;
}

.bottom {
   background-image:
      url("resources/readingRoom/images/bottom/off-bottom.png");
   border-bottom: 6px double #2b6cae;
   border-right: 6px outset #2b6cae;
   border-left: 6px inset #2b6cae;
   border-bottom-left-radius: 0.3em;
   border-bottom-right-radius: 0.3em;
}

#door {
   background-image:
      url("resources/readingRoom/images/right/door-right.png");
}

#arrow {
   background-image:
      url("resources/readingRoom/images/left/left-arrow.png");
}

#ex1 {
   background-image:
      url("resources/readingRoom/images/bottom/off-bottom.png");
}

#ex2 {
   background-image:
      url("resources/readingRoom/images/bottom/on-bottom.png");
}

#test1 {
   margin: 0 auto;
   margin-top: 80px;
   height: 1200px;
   background-color: white;
}

#test2 {
   height: 1200px;
}

#headTitle {
   margin-top: 20px;
   text-align: left;
   padding-top: 10px;
   border-bottom: 1px solid #E2E2E2;
}

#list {
   margin-left: 40px;
}

#boardList {
   margin-top: 50px;
}

.ingu {
   background: white;
   padding-left: 25px;
   padding-right: 25px;
   /* width:1000px; */
   /* min-height: 1030px; */
}

.images1 {
   width: 100%;
   height: 300px;
}

#title1 {
   font-size: 14px;
}

#title {
   font-size: 25px;
}

.list_category {
   text-align: left;
}

.list_category .category_item {
   display: inline-block;
   margin: 15px 0;
   padding: 0 20px;
   border-right: 1px solid rgba(0, 0, 0, 0.1);
}
      

.category_item {
   margin: 8px 30px 8px 30px;
   padding-left: 50px;
   padding-right: 50px;
}

/* 리스트 css  */
.sub_news a {
   color: #383838;
   text-decoration: none
}

.sub_news th {
   padding: 5px 0 6px;
   border-top: solid 1px #999;
   border-bottom: solid 1px #b2b2b2;
   background-color: #f1f1f4;
   color: #333;
   font-weight: bold;
   line-height: 20px;
   vertical-align: top
}

.sub_news td {
   padding: 8px 0 9px;
   border-bottom: solid 1px #d2d2d2;
   text-align: center;
   line-height: 18px;
}

.sub_news .date, .sub_news .hit {
   padding: 0;
   font-family: Tahoma;
   font-size: 11px;
   line-height: normal
}

/* button {
   background-color:blue;
} */
#insert {
   width: 25%;
}

#contentTitle {
   text-align: center;
}

li {
   color: black;
}

#line_foot {
   display: flex;
   width: 100%;
}

#searchArea {
   width: 25%;
}

#paignArea {
   width: 100%;
}

</style>



</head>
<body>


   <div>
      <jsp:include page="../common/menubar.jsp" />
   </div>

   <div id="total">
      <!-- SIDE-BAR -->
      <div id="side-bar">
         <ul>
            <div id="sidebarTitle">
               <h3>
                  <a id="title">내 활동</a>
               </h3>
            </div>

            <br>
            <li><a href="receiveMsg.do"><span class="category-title">내 쪽지 >></span></a></li>
            <br>
            <li><a href="myMemo.do"><span class="category-title">내 메모 >></span></a></li>
            <br>
            <li><a href="myBoard.do"><span class="category-title">내 게시글>></span></a></li>
            <br>
            <li><a href="myReply.do"><span class="category-title">내 댓글 >></span></a></li>
            <br>
            <li><a href="myQues.do"><span class="category-title">내 건의 >></span></a></li>
            <br>
            <li><a href="myReserve.do"><span class="category-title">내 시설 이용 >></span></a></li>

         </ul>
      </div>



      <!-- Main -->
      <div id="main">
         <div class="ingu">

            <div id="headTitle">            
               <h4>
                  <a id="title" href="javascript:location.reload()">시설 이용 내역</a>
               </h4>
               
            </div>
            
            <br>            
            <div class="list_category ">
               <span class="category_item"> 
                  <a href="myReserve.do">전체</a>
               </span>
               <span class="category_item"> 
                  <a href="categoryReserve.do?category=rr" class="current">독서실</a>
               </span> 
               <span class="category_item"> 
                  <a href="categoryReserve.do?category=hr" class="current">헬스장</a>
               </span> 
               <span class="category_item"> 
                  <a href="categoryReserve.do?category=gr" class="current">게스트룸</a>
               </span> 
            </div>

            <div class="boardArea">
               <table class="sub_news" border="1">
                  <thead>
                     <tr>
                        <th width="100" id="contentTitle">예약번호</th>
                        <th width="100" id="contentTitle">시설명</th>
                        <th width="100" id="contentTitle">예약일</th>
                        <th width="100" id="contentTitle">종료일</th>
                        <th width="100" id="contentTitle">상태</th>
                     </tr>
                  </thead>

                  <tbody>
                     <c:if test="${empty mrList }">
                        <tr>
                           <td colspan="5">
                              시설 이용 내역이 없습니다
                           </td>
                        </tr>
                     </c:if>


                     <c:if test="${!empty mrList }">
                        <c:forEach var="b" items="${mrList }">
<%--                            <c:url var="myBoardDetail" value="myBoardDetail.do">
                              <c:param name="b_code" value="${b.b_code }" />
                              <c:param name="curPage" value="${pi.currentPage }" />
                              <c:param name="b_name" value="${b.b_name }" />
                              <c:param name="check" value="2" />
                           </c:url> --%>
                           
                           
                           <c:choose>
                              <c:when test="${b.cvName eq 'rr' }">
                                 <c:set var="cvName" value="독서실" />
                              </c:when>
                              <c:when test="${b.cvName eq 'hr' }">
                                 <c:set var="cvName" value="헬스장" />
                              </c:when>
                              <c:when test="${b.cvName eq 'gr' }">
                                 <c:set var="cvName" value="게스트룸" />
                              </c:when>
                           </c:choose>
                           
                           <tr id="accodion${b.mrCode }">
                              <td>${b.mrCode }</td>
                              <td>${cvName }</td>
                              <td><fmt:formatDate value="${b.startDate }" type="both" dateStyle="Medium" timeStyle="Short" /></td>
                              <td>
                                 <c:if test="${b.startDate == b.endDate }">
                                    --
                                 </c:if>
                                 <c:if test="${b.startDate != b.endDate }">
                                    <fmt:formatDate value="${b.endDate }" type="both" dateStyle="Medium" timeStyle="Short" />
                                 </c:if>
                              </td>
                              <td>
                                 <c:if test="${b.mrStatus == 'Y'.charAt(0) }">
                                    이용중
                                 </c:if>
                                 <c:if test="${b.mrStatus != 'Y'.charAt(0) }">
                                    반납 / 취소
                                 </c:if>
                              </td>
                           </tr>
                           
                           <tr style="display:none;">
                              <td colspan="5">
                                 <c:set var="current" value="<%= new java.util.Date() %>" />
                                 <c:choose>
                                    <c:when test="${b.cvName eq 'rr' && b.mrStatus eq 'Y'.charAt(0) }">
                                       독서실 ${b.mrContent }번 좌석을 이용중입니다.
                                    </c:when>
                                    <c:when test="${b.cvName eq 'rr' && b.mrStatus ne 'Y'.charAt(0) }">
                                       독서실 ${b.mrContent }번 좌석을 반납하였습니다
                                    </c:when>
                                    
                                    <c:when test="${b.cvName eq 'hr' && b.mrStatus eq 'Y'.charAt(0) }">
                                       <c:if test="${b.startDate >= current}">
                                          헬스장 이용 예약중입니다.
                                       </c:if>
                                       <c:if test="${b.startDate < current}">
                                          헬스장을 이용중입니다.
                                       </c:if>
                                    </c:when>
                                    <c:when test="${b.cvName eq 'hr' && b.mrStatus ne 'Y'.charAt(0) }">
                                       <c:if test="${b.startDate >= current}">
                                          헬스장 예약을 취소하셨습니다.
                                       </c:if>
                                       <c:if test="${b.startDate < current}">
                                          헬스장을 퇴장하셨습니다.
                                       </c:if>
                                    </c:when>
                                    
                                    <c:when test="${b.cvName eq 'gr' && b.mrStatus eq 'Y'.charAt(0) }">
                                       <c:if test="${b.startDate >= current}">
                                          게스트룸 ${b.mrContent }실을 예약중입니다.
                                       </c:if>
                                       <c:if test="${b.startDate < current}">
                                          게스트룸 ${b.mrContent }실을 이용중입니다.
                                       </c:if>
                                    </c:when>
                                    <c:when test="${b.cvName eq 'gr' && b.mrStatus ne 'Y'.charAt(0) }">
                                       <c:if test="${b.startDate >= current}">
                                          게스트룸 ${b.mrContent }실을 예약을 취소하셨습니다.
                                       </c:if>
                                       <c:if test="${b.startDate < current}">
                                          게스트룸 ${b.mrContent }실을 퇴장하셨습니다.
                                       </c:if>
                                    </c:when>
                                    
                                 </c:choose>
                                 
                                 
                                 <c:if test="${b.mrStatus eq 'Y'.charAt(0) }">
                                    <br>
                                    <br>
                                    <br>
                                    <a id="cancelReserve${b.mrCode }" class="btn-alt small active margin-null fontWeight-400">반납 / 취소</a>
                                 </c:if>
                              </td>
                           </tr>

                           
                           <script>
                              $(document).ready(function(){
                                 $("#accodion${b.mrCode }").on("click", function(){
                                    
                                    if($(this).next().css("display") == "table-row") {
                                       $(this).next().css("display", "none");
                                    }else {
                                       
                                       $("tr[id*='accodion']").next().css("display", "none");
                                       
                                       $(this).next().css("display", "");
                                       
                                    }
                                 })
                                 
                                 
                                 $("#cancelReserve${b.mrCode }").on("click",function() {
                                    var obj = {
                                          cvName: "${b.cvName}",
                                          cvCode: "${b.cvCode}",
                                          mrCode: "${b.mrCode}"
                                    }
                                    
                                    $.ajax({
                                       url: "cancelReserve.do",
                                       data: JSON.stringify(obj),
                                       type: "post",
                                       dataType: "json",
                                       contentType: "application/json; charset=utf-8",
                                       success: function(data){
                                          if(data == true) {
                                             location.reload();
                                          }else {
                                             alert("예약 취소 실패");
                                          }
                                       },
                                       error: function(e) {
                                          alert("error code : " + e.status + "message : " + e.responseText);
                                       }
                                    })
                                    
                                 })
                              })
                           
                           
                           </script>
                        </c:forEach>
                     </c:if>
                  </tbody>
               </table>

               <div id="line_foot" class="marginBottom-20">
                  <div id="paignArea" style="text-align:center;" >
                     <tr align="center" height="20">
                        <c:if test="${category eq null }">
                           <c:set var="loc" value="myReserve.do" />
                        </c:if>
                        <c:if test="${category ne null }">
                           <c:set var="loc" value="categoryReserve.do" />            
                        </c:if>
                        
                        <td colspan="6"><c:if test="${pi.currentPage == 1 }">
                           [이전]
                           </c:if> 
                           <c:if test="${pi.currentPage > 1}">
                              <c:url var="before" value="${loc }">
                                 <c:param name="curPage" value="${pi.currentPage - 1 }" />
                                 
                                 <c:if test="${category ne null }">
                                    <c:param name="category" value="${category }" />
                                 </c:if>
                              </c:url>
                           <a href="${before }">[이전]</a>
                           </c:if> 
                           <c:forEach var="i" begin="${pi.startPage }"
                           end="${pi.endPage }">
                           <c:if test="${pi.currentPage == i}">
                              [${i }]
                           </c:if>
                              <c:if test="${pi.currentPage != i }">
                                 <c:url var="toPage" value="${loc }">
                                    <c:param name="curPage" value="${i }" />   
                                 
                                    <c:if test="${category ne null }">
                                       <c:param name="category" value="${category }" />
                                    </c:if>
                                 </c:url>
                              
                                 <a href="${toPage }">[${i }]</a>
                              </c:if>
                           </c:forEach> 
                           <c:choose>
                           
                              <c:when test="${pi.currentPage gt pi.maxPage}">
                              [다음]
                              </c:when>
                              
                              <c:when test="${pi.currentPage != pi.maxPage }">
                                 <c:url var="next" value="${loc }">
                                    <c:param name="curPage" value="${pi.currentPage + 1 }" />
                                 
                                    <c:if test="${category ne null }">
                                       <c:param name="category" value="${category }" />
                                    </c:if>
                                 </c:url>
                                 <a href="${next }">[다음]</a>
                              </c:when>
                           </c:choose>
                        </td>
                     </tr>
                  </div>
               
               </div>
            </div>
         </div>


      </div>
   </div>
   <div>
      <jsp:include page="../common/footer.jsp" />
   </div>
</body>
</html>