<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS </title>

<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">

<!-- praBoard common css -->
<link rel="stylesheet" href="resources/Practitioners/css/PraFormatCss.css?after">

<!-- JQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<style>



</style>




</head>
<body>
	<!-- memubar Start -->
	<jsp:include page="../common/managerjob.jsp" />
	<!-- memubar End-->



	<div id="page-right-content">
		<div class="container">
<!----------------------------------- Content Start ---------------------------------------->
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
				<h2 class="m-t-0">출근일지</h2>
				<p class="text-muted">출근 내역 확인 게시판입니다</p>
				
					<div class="table-responsive">
						<table class="table table-hover mails m-0 table table-actions-bar">
						<thead>
						<tr>
							<th class="tt" hidden="">글번호(숨김)</th>
							<th class="thh" hidden="">아파트(숨김)</th>
							<th class="thh">근무자</th>
							<th class="thh">출근일</th>
							<th class="thh">출근시간</th>
							<th class="thh">퇴근시간</th>
						</tr>
						</thead>
						<c:forEach var="cj" items="${list}">
						
						<tr data-toggle="modal" data-target=".bs-example-modal-sm">
							<th class="tt" hidden="">${cj.coCode} (히든)</th>
							<td class="tdd" hidden="">${cj.apName} (히든)</td>
							<td class="tdd">${cj.coWorker}</td>
							<td class="tdd">
							<fmt:formatDate value="${cj.coDate}" pattern="yyyy.MM.dd" />
							</td>
							<td class="tdd">
							<fmt:formatDate value="${cj.coStart}" pattern="a h:mm:ss" type="time" />
							</td>
							<td class="tdd">
							<fmt:formatDate value="${cj.coEnd}" pattern="a h:mm:ss" type="time" />
							</td>
						</tr>
					
						</c:forEach>
						</table>
					</div>
						
<!----------------------------------- Content End ---------------------------------------->

<!--------------------------- Pagenation, insert, search Start --------------------------->
					<div class="row">
						<div class="col-sm-10 pagenation text-center">
							
							<div id="pagenation">
								<ul class="pagination pagination-split">

									<c:if test="${pi.currentPage <= 1 }">
										<li class="page-item"><a class="page-link" href="#"
											aria-label="Previous"><span aria-hidden="true">&laquo;</span><span
												class="sr-only">Previous</span></a></li>

									</c:if>
									<c:if test="${pi.currentPage > 1 }">
										<li class="page-item"><c:url var="before"
												value="praComJounal.do">
												<c:param name="page" value="${pi.currentPage -1}" />
											</c:url> <a class="page-link" href="${before}" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span> <span
												class="sr-only">Previous</span>
										</a></li>
									</c:if>

									<c:forEach var="p" begin="${pi.startPage }"
										end="${pi.endPage }">
										<c:if test="${p eq pi.currentPage }">
											<li class="page-item active"><a class="page-link"
												href="#">${p}</a></li>
										</c:if>
										<c:if test="${p ne pi.currentPage }">
											<c:url var="pagination" value="praComJounal.do">
												<c:param name="page" value="${p}" />
											</c:url>
											<li class="page-item"><a class="page-link"
													href="${pagination}">${p}</a></li>
										</c:if>
									</c:forEach>
									
									<c:if test="${pi.currentPage >= pi.maxPage}">
										<li class="page-item"><a class="page-link" href="#"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span><span
												class="sr-only">Next</span></a></li>
									</c:if>
									
									<c:if test="${pi.currentPage < pi.maxPage }">
										<c:url var="after" value="praComJounal.do">
											<c:param name="page" value="${pi.currentPage + 1}" />
										</c:url>
										<li class="page-item"><a class="page-link"
											href="${after}" aria-label="Next"> <span
													aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
									</c:if>
									
								</ul>
							</div>
			
						</div>
					</div>
<!--------------------------- Pagenation, insert, search Start --------------------------->		 
				</div>
			</div>
		</div>
<!-- container End -->
		</div>	
	</div>
	



<!-- praBoard common js/JQuery -->
<script src="resources/Practitioners/js/PraFormatJs.js?after"></script>
<script src="resources/Practitioners/js/PraFormatJquery.js?after"></script>
	
</body>
</html>