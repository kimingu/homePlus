<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>홈플러스 | HOMEPLUS</title>
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
   content="A fully featured admin theme which can be used to build CRM, CMS, etc."
   name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">

<link rel="shortcut icon"
   href="resources/administrator/images/favicon.ico">

<!--Morris Chart CSS -->
<link rel="stylesheet"
   href="resources/administrator/plugins/morris/morris.css">

<!-- Bootstrap core CSS -->
<link href="resources/administrator/css/bootstrap.min.css"
   rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="resources/administrator/css/metisMenu.min.css"
   rel="stylesheet">
<!-- Icons CSS -->
<link href="resources/administrator/css/icons.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="resources/administrator/css/style.css" rel="stylesheet">
<script src="resources/administrator/js/jquery-2.1.4.min.js"></script>
<style>
#menuColor {
   background: white;
   border-bottom: 5px solid #F5F5F5;
}

#logoImage {
   padding-left: 20px;
}

.sidebar-navigation {
   margin-top: 5px;
}

#page-wrapper {
   width: 100%;
}

#search {
   color: black;
   border: 2px solid #F5F5F5;
}

.table tr th {
   text-align: center !important;
}

#pagenation {
   text-align: center;
}
</style>
</head>


<body>
   <div id="page-right-content">
      <div class="row">
         <div class="col-sm-12">
            <div class="card-box">
               <h4 class="m-t-0">등록 업체 정보</h4>
               <div class="table-responsive">
                  <table class="table table-hover mails m-0 table table-actions-bar">
                     <thead>
                        <tr>
                           <th align="center">순번</th>
                           <th align="center">업체 구분</th>
                           <th align="center">업체 이름</th>
                           <th align="center">계약 시작일</th>
                           <th align="center">계약 만료일</th>
                           <th align="center">대표</th>
                           <th align="center">계약 상태</th>
                        </tr>
                     </thead>

                     <tbody>
                        <c:forEach var="c" items="${list}">
                           <tr>
                              <td align="center">${c.comCode}</a></td>
                              <td align="center">${c.comDivision}</td>
                              <td align="center" id="comName">${c.comName}</td>
                              <td align="center">${c.comStartDate}</td>
                              <td align="center">${c.comEndDate}</td>
                              <td align="center">${c.comCeo}</td>
                              <jsp:useBean id="now" class="java.util.Date"/>
                              <fmt:formatDate value="${now}" pattern="yyyyMMdd" var="nowDate"/>
                              <fmt:formatDate value="${c.comStartDate }" pattern="yyyyMMdd" var="startDate"/>
                              <fmt:formatDate value="${c.comEndDate }" pattern="yyyyMMdd" var="endDate"/>
                                 <c:if test="${nowDate > endDate }">
                                    <td align="center">계약 종료</td>
                                 </c:if>
                                 <c:if test="${nowDate <= endDate }">
                                    <td align="center">계약중</td>
                                 </c:if>
                           </tr>
                        </c:forEach>
                     </tbody>
                  </table>
               </div>
               <div id="pagenation">
                  <ul class="pagination pagination-split">
                     <c:if test="${searchValue eq null }">
                        <c:set var="loc" value="cclist.do" />
                     </c:if>
                     <c:if test="${searchValue ne null }">
                        <c:set var="loc" value="csearch.do" />
                     </c:if>
                     <c:if test="${pi.currentPage <= 1 }">
                        <li class="page-item"><a class="page-link" href="#"
                           aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                              <span class="sr-only">Previous</span>
                        </a></li>
                     </c:if>
                     <c:if test="${pi.currentPage > 1 }">
                        <li class="page-item">
                        <c:url var="before" value="${loc }">
                              <c:param name="page" value="${pi.currentPage -1}" />
                              
                              <c:if test="${searchValue ne null }">
                                 <c:param name="searchValue" value="${searchValue }" />
                                 <c:param name="searchCondition" value="${searchCondition }" />
                              </c:if>
                        </c:url> 
                        <a class="page-link" href="${before}" aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
                        </a></li>
                     </c:if>
                     <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                        <c:if test="${p eq pi.currentPage }">
                           <li class="page-item active"><a class="page-link" href="#">${p}</a></li>
                        </c:if>
                        <c:if test="${p ne pi.currentPage }">
                           <c:url var="pagination" value="${loc }">
                              <c:param name="page" value="${p}" />
                              
                              <c:if test="${searchValue ne null }">
                                 <c:param name="searchValue" value="${searchValue }" />
                                 <c:param name="searchCondition" value="${searchCondition }" />
                              </c:if>
                           </c:url>
                           <li class="page-item"><a class="page-link"
                              href="${pagination}">${p}</a></li>
                        </c:if>
                     </c:forEach>
                     <c:if test="${pi.currentPage >= pi.maxPage}">
                        <li class="page-item"><a class="page-link" href="#"
                           aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                              <span class="sr-only">Next</span>
                        </a></li>
                     </c:if>
                     <c:if test="${pi.currentPage < pi.maxPage }">
                        <c:url var="after" value="cclist.do">
                           <c:param name="page" value="${pi.currentPage + 1}" />

                           <c:if test="${searchValue ne null }">
                              <c:param name="searchValue" value="${searchValue }" />
                              <c:param name="searchCondition" value="${searchCondition }" />
                           </c:if>
                        </c:url>
                        <li class="page-item"><a class="page-link" href="${after}"
                           aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                              <span class="sr-only">Next</span>
                        </a></li>
                     </c:if>
                  </ul>
               </div>
               
               <script>
                  $(".table tr").mouseover(function() {
                     $(this).css({
                        "cursor" : "pointer"
                     });
                  }).click(function(){
                     var name = $(this).children().eq(2).text();
                     opener.document.getElementById("comName").value = name;
                     var code = $(this).children().eq(0).text();
                     opener.document.getElementById("comCode").value = code;
                     window.close();
                  });
                  
               </script>
            </div>
         </div>
      </div>

   </div>

   </div>
   </div>



</body>
</html>