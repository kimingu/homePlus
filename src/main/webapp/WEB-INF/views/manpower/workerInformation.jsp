<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>홈플러스 | HOMEPLUS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
		<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="resources/administrator/plugins/morris/morris.css">

        <!-- Bootstrap core CSS -->
        <link href="resources/administrator/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/administrator/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="resources/administrator/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/administrator/css/style.css" rel="stylesheet">
		<style>
			#menuColor{
				background:white;
				border-bottom:5px solid #F5F5F5;
			}
			#logoImage{
				padding-left:20px;
			}
			.sidebar-navigation{
				margin-top:5px;

			}
			#page-wrapper{
				width:100%;
			}
			#search{
				color:black;
				border:2px solid #F5F5F5;
			}
			
			.table tr th{
				text-align:center !important;
			}
			
			#pagenation {
				text-align: center;
			}
			
			#one {
				width:25%;
			}
		</style>
    </head>


    <body>
    	<jsp:include page="../common/0menubar.jsp"/>
		<div id="page-right-content">
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box widget-inline">
						<div class="row">
							<c:forEach var="count" items="${count}">
							<div class="col-lg-3 col-sm-6" id="one">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-primary mdi mdi-access-point-network"></i> <b
											data-plugin="counterup">${count.contracta}</b>
									</h3>
									<p class="text-muted">경비</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6" id="one">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-custom mdi mdi-airplay"></i> <b
											data-plugin="counterup">${count.contractb}</b>
									</h3>
									<p class="text-muted">미화</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6" id="one">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-info mdi mdi-black-mesa"></i> <b
											data-plugin="counterup">${count.contractc}</b>
									</h3>
									<p class="text-muted">시설</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6" id="one">
								<div class="widget-inline-box text-center b-0">
									<h3 class="m-t-10">
										<i class="text-danger mdi mdi-cellphone-link"></i> <b
											data-plugin="counterup">${count.contractd}</b>
									</h3>
									<p class="text-muted">편의시설 및 기타</p>
								</div>
							</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
					<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h4 class="m-t-0">근무자 정보</h4>
						<div class="table-responsive">
							<table class="table table-hover mails m-0 table table-actions-bar">
								<thead>
									<tr>
										<th align="center">순번</th>
										<th align="center">소속업체 이름</th>
										<th align="center">주요업무</th>
										<th align="center">이름</th>
										<th align="center">근무자 아이디</th>
										<th align="center">연락처</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="w" items="${list}">
										<tr onclick="document.location.href='wdetail.do?aCode=${w.aCode}'">
											<td align="center">${w.aCode}</td>
											<td align="center">${w.comName}</td>
											<td align="center">${w.aDepartment}</td>
											<td align="center">${w.aName}</td>
											<td align="center">${w.aId}</td>
											<td align="center">${w.aPhone}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					<div id="pagenation">
						<ul class="pagination pagination-split">
							<c:if test="${searchValue eq null }">
								<c:set var="loc" value="wlist.do" />
							</c:if>
							<c:if test="${searchValue ne null }">
								<c:set var="loc" value="wsearch.do" />
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
								<c:url var="after" value="wlist.do">
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
						<div id="serachArea" align="center">
						<form action="wsearch.do" name="searchForm" method="get">
							<select id="searchCondition" name="searchCondition">
								<option value="all"
									<c:if test="${search.searchCondition == 'all' }">selected</c:if>>전체</option>
								<option value="comName"
									<c:if test="${search.searchCondition == 'comName' }">selected</c:if>>소속업체</option>
								<option value="aDepartment"
									<c:if test="${search.searchCondition == 'aDepartment' }">selected</c:if>>주요 업무</option>
								<option value="aName"
									<c:if test="${search.searchCondition == 'aName' }">selected</c:if>>이름</option>
								<option value="aId"
									<c:if test="${search.searchCondition == 'aId' }">selected</c:if>>아이디</option>

							</select> <input type="search" name="searchValue"
								value="${serach.searchValue }">

							<button class="btn btn-default waves-effect waves-light btn-sm" id="sa-basic" onclick="searchWorker()">검색</button>
							
						</form>
						<script>
						$(".table tr").mouseover(function() {
							$(this).css({
								"background" : "lightgray",
								"cursor" : "pointer"
							});
						}).mouseleave(function() {
							$(this).css({
								"background" : "white"
							});
						});
						
						function searchWorker() {
							var searchCondition = $("#searchCondition")
									.val();
							var searchValue = $("#searchValue").val();

							location.href = "wsearch.do?searchCondition="
									+ searchCondition + "&searchValue="
									+ searchValue;
						}
					</script>
					
					</div>
					</div>
				</div>
			</div>

			</div>
			
   		</div>
	</div>
	
   	
    </body>
</html>