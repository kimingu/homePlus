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

#pagenation {
	text-align: center;
}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box widget-inline">
						<div class="row">
							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-primary mdi mdi-access-point-network"></i> <b
											data-plugin="counterup">${cont.a}</b>
									</h3>
									<p class="text-muted">전체신고</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-custom mdi mdi-airplay"></i> <b
											data-plugin="counterup">${cont.b}</b>
									</h3>
									<p class="text-muted">
										<a href="apartreport.do">아파트</a>
									</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-info mdi mdi-black-mesa"></i> <b
											data-plugin="counterup">${cont.c}</b>
									</h3>
									<p class="text-muted">
										<a href="convreport.do">편의시설</a>
									</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center b-0">
									<h3 class="m-t-10">
										<i class="text-danger mdi mdi-cellphone-link"></i> <b
											data-plugin="counterup">${cont.d}</b>
									</h3>
									<p class="text-muted">
										<a href="trafreport.do">교통시설</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h4 class="m-t-0">신고내역</h4>
						<div class="table-responsive">
							<table
								class="table table-hover mails m-0 table table-actions-bar">
								<thead>
									<tr>
										<th align="center">신고번호</th>
										<th align="center">신고자</th>
										<th align="center">신고제목</th>
										<th align="center">신고일</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="b" items="${list}">
										<tr onclick="window.open('facdetail.do?code='+${b.bb_code},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');">
											<td align="center">${b.bb_code}</td>
											<td align="center">${b.m_name}</td>
											<td align="center">${b.bb_title}</td>
											<td align="center">${b.bb_createdate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div id="pagenation">
							<ul class="pagination pagination-split">
								<c:if test="${pi.currentPage <= 1 }">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
									</a></li>
								</c:if>
								<c:if test="${pi.currentPage > 1 }">
									<li class="page-item"><c:url var="before"
											value="facilitymain.do">
											<c:param name="page" value="${pi.currentPage -1}" />
										</c:url> <a class="page-link" href="${before}" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
									</a></li>
								</c:if>
								<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
									<c:if test="${p eq pi.currentPage }">
										<li class="page-item active"><a class="page-link"
											href="#">${p}</a></li>
									</c:if>
									<c:if test="${p ne pi.currentPage }">
										<c:url var="pagination" value="facilitymain.do">
											<c:param name="page" value="${p}" />
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
									<c:url var="after" value="facilitymain.do">
										<c:param name="page" value="${pi.currentPage + 1}" />
									</c:url>
									<li class="page-item"><a class="page-link" href="${after}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
									</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>