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
<style>
.page-contentbar {
   height: 100%;
}

#forright {
   text-align: right;
}

#wraping {
   margin: auto;
   text-align: center;
}

#fit {
   display: inline-block;
   background-image: url("resources/facility/images/fitcenter.jpg");
   background-repeat: no-repeat;
   background-size: contain;
   width: 80%;
   height: 700px;
}

.ft {
   position: absolute;
}

#ft1 {
   margin-left: 11%;
   margin-top: 20%;
}

#ft2 {
   margin-left: 20%;
   margin-top: 16%;
}

#ft3 {
   margin-left: 24%;
   margin-top: 14.5%;
}

#ft4 {
   margin-left: 29%;
   margin-top: 13.5%;
}

#ft5 {
   margin-left: 33.5%;
   margin-top: 12%;
}

#ft6 {
   margin-left: 35.5%;
   margin-top: 10%;
}

#ft7 {
   margin-left: 38%;
   margin-top: 10%;
}

#ft8 {
   margin-left: 40.5%;
   margin-top: 8.5%;
}

#ft9 {
   margin-left: 43%;
   margin-top: 8%;
}

#ft10 {
   margin-left: 45.5%;
   margin-top: 7.5%;
}

#ft11 {
   margin-left: 49.5%;
   margin-top: 7%;
}

#ft12 {
   margin-left: 54%;
   margin-top: 6%;
}

#ft13 {
   margin-left: 57%;
   margin-top: 9%;
}

#ft14 {
   margin-left: 57%;
   margin-top: 13%;
}

#ft15 {
   margin-left: 52%;
   margin-top: 15%;
}

#ft16 {
   margin-left: 49.5%;
   margin-top: 15.5%;
}

#ft17 {
   margin-left: 47%;
   margin-top: 16%;
}

#ft18 {
   margin-left: 40.5%;
   margin-top: 18%;
}

#ft19 {
   margin-left: 15%;
   margin-top: 36%;
}

#ft20 {
   margin-left: 56%;
   margin-top: 24%;
}

#ft21 {
   margin-left: 65%;
   margin-top: 21%;
}
</style>
</head>
<body>
   <jsp:include page="../common/facmanager.jsp" />
   <div id="page-right-content">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <div class="card-box">
                  <h3 class="m-t-0">피트니스센터 관리 페이지</h3>
                  <hr>
                  <div id="wraping">
                     <div id="fit">
                        <div class="ft" id="ft1">
                           <c:if test='${fs.f1 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f1}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft2">
                           <c:if test='${fs.f2 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f2}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft3">
                           <c:if test='${fs.f3 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f3}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft4">
                           <c:if test='${fs.f4 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f4}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft5">
                           <c:if test='${fs.f5 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f5}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft6">
                           <c:if test='${fs.f6 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f6}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft7">
                           <c:if test='${fs.f7 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f7}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft8">
                           <c:if test='${fs.f8 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f8}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft9">
                           <c:if test='${fs.f9 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f9}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft10">
                           <c:if test='${fs.f10 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f10}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft11">
                           <c:if test='${fs.f11 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f11}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft12">
                           <c:if test='${fs.f12 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f12}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft13">
                           <c:if test='${fs.f13 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f13}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft14">
                           <c:if test='${fs.f14 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f14}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft15">
                           <c:if test='${fs.f15 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f15}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft16">
                           <c:if test='${fs.f16 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f16}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft17">
                           <c:if test='${fs.f17 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f17}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft18">
                           <c:if test='${fs.f18 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f18}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft19">
                           <c:if test='${fs.f19 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f19}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft20">
                           <c:if test='${fs.f20 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f20}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                        <div class="ft" id="ft21">
                           <c:if test='${fs.f21 ne null}'>
                              <img src="resources/facility/images/warning.png"
                                 , style="cursor: pointer;"
                                 onclick="window.open('facdetail.do?code=${fs.f21}','facdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
                           </c:if>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>