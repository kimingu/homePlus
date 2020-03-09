<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
      
      
      .textOver {
         overflow: hidden;
         text-overflow: ellipsis;
         white-space: nowrap;
      }
      
      div.marginBottom-10.textOver a{
         color: gray;
      }
            
   </style>
   
</head>
<body>


   <div>
      <jsp:include page="../common/menubar.jsp"/>
   </div>  
    
   
   <div class="row mistGray-Background marginTop-80 full-width">
      <div class="col-md-offset-2 col-md-8">
         <div class="ingu">
            <div id="headTitle">
               <h4>
                  <a href="javascript:location.reload()" id="title">My Page</a>
               </h4>
            </div>            
            <br>
            
            <div class="row">
               <div class="col-md-6">
                  <div class="testStylen white-background height-300 padding-20 paddingLeftRgiht-35 marginBottom-20">
                     <h4 class="fontWeight-600" style="color:#2b6cae">내 정보</h4>      
                     <br>
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
                        
                     <div id="btnArea" class="margin-20">
                        <a href="myInfo.do" class="btn-alt small active margin-null fontWeight-400">상세보기</a>
                     </div>
                  </div>   
               </div>
            
               <div class="col-md-6">
                  <div class="testStylen white-background height-300 padding-20 paddingLeftRgiht-35 marginBottom-20">
                     <h4 class="fontWeight-600" style="color:#2b6cae">내 관리비</h4>      
                     <br>
                     <div>
                        <h5 class="fontWeight-600">이번달 관리비는 </h5> &nbsp;&nbsp;
                        <p class="display-inlnine-block marginLeft-150"><fmt:formatNumber value="${myCost }" pattern="#,###" /></p>
                        <h5 class="fontWeight-600 display-inlnine-block">원 입니다</h5>                                                      
                     </div>
                     
                     <div id="btnArea" class="margin-20">
                        <a href="myCost.do" class="btn-alt small active margin-null fontWeight-400">상세보기</a>
                     </div>
                  </div>   
               </div>            
            
            </div>
            
            
            
            <div class="row">
               <div class="col-md-6">
                  <div class="testStylen white-background height-300 padding-20 paddingLeftRgiht-35 marginBottom-20">
                     <h4 class="fontWeight-600" style="color:#2b6cae"><a href="receiveMsg.do">쪽지</a></h4>      
                                                
                     <div class="margin-20">
                        <c:if test="${empty mmsList }">
                        
                           <div class="marginBottom-10">
                              받은 쪽지가 없습니다.
                           </div>
                        
                        </c:if>
                        
                        <c:if test="${!empty mmsList }">                        
                           <c:forEach var="i" items="${mmsList }">                           
                              <c:url var="mmsDetail" value="mmsDetail.do">
                                 <c:param name="mmCode" value="${i.mmCode }" />
                              </c:url>
                              
                              <c:if test="${i != null }">
                                 <div class="marginBottom-10 textOver">
                                    <a href="${mmsDetail }">${i.mmTitle }</a>
                                 </div>                        
                              </c:if>
                              <c:if test="${i == null }">
                                 <div class="marginBottom-10">
                                    <a href=""> </a>
                                 </div>   
                              </c:if>
                           </c:forEach>
                        </c:if>
                        
                     </div>
                  </div>   
               </div>
            
               <div class="col-md-6">
                  <div class="testStylen white-background height-300 padding-20 paddingLeftRgiht-35 marginBottom-20">
                     <h4 class="fontWeight-600" style="color:#2b6cae"><a href="myMemo.do">메모</a></h4>      
                                                
                     <div class="margin-20">
                        <c:if test="${empty mmeList }">
                        
                           <div class="marginBottom-10">
                              작성한 메모가 없습니다.
                           </div>
                        
                        </c:if>
                        
                        <c:if test="${!empty mmeList }">                        
                           <c:forEach var="i" items="${mmeList }">                           
                              <c:url var="mmsDetail" value="mmsDetail.do">
                                 <c:param name="mmCode" value="${i.mmeCode }" />
                              </c:url>
                              
                              <c:if test="${i != null }">
                                 <div class="marginBottom-10 textOver">
                                    <a data-toggle="modal" data-target="#modalCenter${i.mmeCode }">${i.mmeContent }</a>
                                 </div>                        
                              </c:if>
                              <c:if test="${i == null }">
                                 <div class="marginBottom-10">
                                    <a href=""> </a>
                                 </div>   
                              </c:if>
                              
                                                         
                              <div class="modal fade" id="modalCenter${i.mmeCode }" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                 <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                       <div class="modal-body" style="white-space: pre-line;">
                                          ${i.mmeContent }
                                       </div>
                                       
                                       <div class="modal-footer">
                                          <a data-dismiss="modal" class="btn-alt small margin-null fontWeight-400">닫기</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              
                              
                           </c:forEach>
                        </c:if>
                     </div>
                  </div>   
               </div>            
            
            </div>
            
            <div class="row">
               <div class="col-md-12 testStylen2">
                  <div id="myActDiv" class="testStylen white-background paddingTop-20 paddingLeftRgiht-35 marginBottom-20">
                     <h4 class="fontWeight-600" style="color:#2b6cae">내 활동</h4>
                     <a href="myNotice.do" style="color:gray;"><h6>새로운 알림이 <b id="myNotice" class="fontWeight-800" style="color:purple">${myNoticeCount }</b>건 있습니다</h6></a>
                                          
                     <div class="row">
                        <div class="col-md-6 marginTop-10 padding-10">
                           <h6 class="fontWeight-600 marginBottom-10" style="color:#2b6cae"><a href="myBoard.do">내 게시글</a></h6>
                                                      
                           <div class="margin-10">
                              <c:if test="${empty bList }">
                              
                                 <div class="marginBottom-10">
                                    작성한 게시글이 없습니다.
                                 </div>
                              
                              </c:if>
                              
                              <c:if test="${!empty bList }">                        
                                 <c:forEach var="i" items="${bList }">                           
                                    <c:url var="bDetail" value="myBoardDetail.do">
                                       <c:param name="b_code" value="${i.b_code }" />
                                       <c:param name="check" value="1" />
                                    </c:url>
                                    
                                    <c:if test="${i != null }">
                                       <div class="marginBottom-10 textOver">
                                          <a href="${bDetail }">${i.b_title }</a>
                                       </div>                        
                                    </c:if>
                                    <c:if test="${i == null }">
                                       <div class="marginBottom-10">
                                          <a href=""> </a>
                                       </div>   
                                    </c:if>
                                 </c:forEach>
                              </c:if>
                              
                           </div>
                        </div>
                        
                        <div class="col-md-6 marginTop-10 padding-10">
                           <h6 class="fontWeight-600 marginBotto-10" style="color:#2b6cae"><a href="myReply.do">내 댓글</a></h6>
                           
                           <div class="margin-10">
                              <c:if test="${empty brList }">
                              
                                 <div class="marginBottom-10">
                                    작성한 댓글 없습니다.
                                 </div>
                              
                              </c:if>
                              
                              <c:if test="${!empty brList }">                        
                                 <c:forEach var="i" items="${brList }">                           
                                    <c:url var="bDetail" value="myBoardDetail.do">
                                       <c:param name="b_code" value="${i.bCode }" />
                                       <c:param name="check" value="1" />
                                    </c:url>
                                    
                                    <c:if test="${i != null }">
                                       <div class="marginBottom-10 textOver">
                                          <a href="${bDetail }">${i.rContent }</a>
                                       </div>
                                    </c:if>
                                    <c:if test="${i == null }">
                                       <div class="marginBottom-10">
                                          <a href=""> </a>
                                       </div>   
                                    </c:if>
                                 </c:forEach>
                              </c:if>
                              
                           </div>
                        </div>               
                     </div>
                     <div class="row">
                        <div class="col-md-6 marginTop-10 padding-10">
                           <h6 class="fontWeight-600 marginBottom-10" style="color:#2b6cae"><a href="myQues.do">내 건의</a></h6>   
                           
                           <div class="margin-10">
                              <c:if test="${empty bbList }">
                              
                                 <div class="marginBottom-10">
                                    작성된 건의글이 없습니다.
                                 </div>
                              
                              </c:if>
                              
                              <c:if test="${!empty bbList }">                        
                                 <c:forEach var="i" items="${bbList }">                           
                                    <c:url var="bbDetail" value="myQuesDetail.do">
                                       <c:param name="bbCode" value="${i.bbCode }" />
                                       <c:param name="check" value="1" />
                                    </c:url>
                                    
                                    <c:if test="${i != null }">
                                       <div class="marginBottom-10 textOver">
                                          <a href="${bbDetail }">${i.bbTitle }</a>
                                       </div>                        
                                    </c:if>
                                    <c:if test="${i == null }">
                                       <div class="marginBottom-10">
                                          <a href=""> </a>
                                       </div>   
                                    </c:if>
                                 </c:forEach>
                              </c:if>
                              
                           </div>
                        </div>
                        
                        <div class="col-md-6 marginTop-10 padding-10">
                           <h6 class="fontWeight-600 marginBottom-10" style="color:#2b6cae"><a href="myReserve.do">시설 이용</a></h6>                  
                           
                           <div class="margin-10">
                              <c:if test="${empty rList }">
                              
                                 <div class="marginBottom-10">
                                    시설 이용 내역이 없습니다.
                                 </div>
                              
                              </c:if>
                              
                              
                              <c:if test="${!empty rList }">                        
                                 <c:forEach var="i" items="${rList }">                           
                                    <c:url var="rDetail" value="myReserveDetail.do">
                                       <c:param name="mrCode" value="${i.mrCode }" />
                                       <c:param name="check" value="1" />
                                    </c:url>
                              
                                    
                                    <c:if test="${i != null }">
                                       <div class="marginBottom-10 textOver">
                                       
                                          <c:set var="current" value="<%= new java.util.Date() %>" />
                                          <c:choose>
                                             <c:when test="${i.cvName eq 'rr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[이용] 도서실 ${i.mrContent }번 좌석을 이용중입니다.</a>
                                             </c:when>
                                             <c:when test="${i.cvName eq 'rr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[반납] 도서실 ${i.mrContent }번 좌석을 반납하였습니다.</a>
                                             </c:when>
                                             
                                             
                                             
                                             
                                             <c:when test="${i.cvName eq 'hr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                <c:if test="${i.startDate >= current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[예약] 헬스장 이용 예약중입니다.</a>
                                                </c:if>
                                                <c:if test="${i.startDate < current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[이용] 헬스장을 이용중입니다.</a>
                                                </c:if>
                                             </c:when>
                                             <c:when test="${i.cvName eq 'hr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                <c:if test="${i.startDate >= current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[취소] 헬스장 예약을 취소하셨습니다.</a>
                                                </c:if>
                                                <c:if test="${i.startDate < current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[퇴장] 헬스장을 퇴장하셨습니다.</a>
                                                </c:if>
                                             </c:when>
                                             
                                             
                                             
                                             <c:when test="${i.cvName eq 'gr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                <c:if test="${i.startDate >= current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[예약] 게스트룸 ${i.mrContent }실을 예약중입니다.</a>
                                                </c:if>
                                                <c:if test="${i.startDate < current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[이용] 게스트룸 ${i.mrContent }실을 이용중입니다.</a>
                                                </c:if>
                                             </c:when>
                                             <c:when test="${i.cvName eq 'gr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                <c:if test="${i.startDate >= current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[취소] 게스트룸 ${i.mrContent }실 예약을 취소하셨습니다.</a>
                                                </c:if>
                                                <c:if test="${i.startDate < current}">
                                                   <a data-toggle="modal" data-target="#reserveModal${i.mrCode }">[반납] 게스트룸 ${i.mrContent }실을 퇴장하셨습니다.</a>
                                                </c:if>
                                             </c:when>
                                          </c:choose>
                                       </div>
                                    </c:if>
                                    <c:if test="${i == null }">
                                       <div class="marginBottom-10">
                                          <a href=""> </a>
                                       </div>   
                                    </c:if>






                                    <c:choose>
                                       <c:when test="${i.cvName eq 'rr' }">
                                          <c:set var="cvName" value="도서실" />
                                       </c:when>
                                       <c:when test="${i.cvName eq 'hr' }">
                                          <c:set var="cvName" value="헬스장" />
                                       </c:when>
                                       <c:when test="${i.cvName eq 'gr' }">
                                          <c:set var="cvName" value="게스트룸" />
                                       </c:when>
                                    </c:choose>
                                    


                                    <!-- Modal -->
                                    <div class="modal fade" id="reserveModal${i.mrCode }" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                       <div class="modal-dialog" role="document">
                                          <div class="modal-content">
                                             <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">
                                                   이용 현황 상세보기
                                                </h5>
                                             </div>
                                             <div class="modal-body">
                                                시설명 : ${cvName }    
                                                <br>
                                                상태 : 
                                       
                                          <c:set var="current" value="<%= new java.util.Date() %>" />
                                                <c:choose>
                                                   <c:when test="${i.cvName eq 'rr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                      이용중
                                                   </c:when>
                                                   <c:when test="${i.cvName eq 'rr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                      반납
                                                   </c:when>
                                                   
                                                   
                                                   
                                                   
                                                   <c:when test="${i.cvName eq 'hr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         예약중
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         이용중
                                                      </c:if>
                                                   </c:when>
                                                   <c:when test="${i.cvName eq 'hr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         취소
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         퇴장
                                                      </c:if>
                                                   </c:when>
                                                   
                                                   
                                                   
                                                   <c:when test="${i.cvName eq 'gr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         예약중
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         이용중
                                                      </c:if>
                                                   </c:when>
                                                   <c:when test="${i.cvName eq 'gr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         취소
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         반납
                                                      </c:if>
                                                   </c:when>
                                                </c:choose>
                                                <br>
                                                시작일 : <fmt:formatDate value="${i.startDate }" type="both" dateStyle="Medium" timeStyle="Short" />                                                
                                                <c:if test="${i.mrStatus ne 'Y'.charAt(0) }">
                                                   <br>
                                                   종료일 : <fmt:formatDate value="${i.endDate }" type="both" dateStyle="Medium" timeStyle="Short" />   
                                                </c:if>
                                                <br> 
                                                상세 :
                                                <c:choose>
                                                   <c:when
                                                      test="${i.cvName eq 'rr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                         도서실 ${i.mrContent }번 좌석을 이용중입니다.
                                                   </c:when>
                                                   <c:when
                                                      test="${i.cvName eq 'rr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                         도서실 ${i.mrContent }번 좌석을 반납하였습니다
                                                   </c:when>
                                                   
                                                                                                
                                                   <c:when test="${i.cvName eq 'hr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         헬스장 이용 예약중입니다.
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         헬스장을 이용중입니다.
                                                      </c:if>
                                                   </c:when>
                                                   <c:when test="${i.cvName eq 'hr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         헬스장 예약을 취소하셨습니다.
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         헬스장을 퇴장하셨습니다.
                                                      </c:if>
                                                   </c:when>
                                                   
                                                   <c:when test="${i.cvName eq 'gr' && i.mrStatus eq 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         ${i.mrContent }번 게스트룸을 예약중입니다
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         ${i.mrContent }번 게스트룸을 이용중입니다
                                                      </c:if>
                                                   </c:when>
                                                   <c:when test="${i.cvName eq 'gr' && i.mrStatus ne 'Y'.charAt(0) }">
                                                      <c:if test="${i.startDate >= current}">
                                                         ${i.mrContent }번 게스트룸 예약을 취소하였습니다
                                                      </c:if>
                                                      <c:if test="${i.startDate < current}">
                                                         ${i.mrContent }번 게스트룸을 퇴장하셨습니다
                                                      </c:if>
                                                   </c:when>                                                   
                                                </c:choose>

                                             </div>
                                             <div class="modal-footer">
                                                <a data-dismiss="modal" class="btn-alt small margin-null fontWeight-400">닫기</a>
                                                <c:if test="${i.mrStatus eq 'Y'.charAt(0) }">
                                                   <a id="cancelReserve${i.mrCode }" class="btn-alt small active margin-null fontWeight-400">반납 / 취소</a>                                                
                                                </c:if>
                                                
                                                <script>
                                                   $(function() {
                                                      
                                                      $("#cancelReserve${i.mrCode }").on("click",function() {
                                                         var obj = {
                                                               cvName: "${i.cvName}",
                                                               cvCode: "${i.cvCode}",
                                                               mrCode: "${i.mrCode}"
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




                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </c:forEach>
                              </c:if>
                              
                           </div>
                                                      
                        </div>               
                     </div>
                  </div>
               </div>
            
            </div>
            
         
         </div>
      </div>
      
   
   </div>
      
      
      
    <div>
      <jsp:include page="../common/footer.jsp"/>   
   </div>
   

</body>
</html>