<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- Bootstrap core CSS -->
        <link href="resources/administrator/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/administrator/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="resources/administrator/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/administrator/css/style.css" rel="stylesheet">

<!-- DataTables -->
        <link href="resources/administrator/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>
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
	<jsp:include page="../common/0menubar.jsp" />
	<div id="page-right-content">

		<div class="row">
			<div class="col-lg-12">

				<div class="p-20 m-b-20">

					<div id="morris-line-example" class="morris-chart"
						style="height: 300px;"></div>

				</div>
				
				<input type="hidden" id="mExpense16" value="${me.mExpense16 }">
				<input type="hidden" id="mExpense17" value="${me.mExpense17 }">
				<input type="hidden" id="mExpense18" value="${me.mExpense18 }">
				<input type="hidden" id="mExpense19" value="${me.mExpense19 }">
				<input type="hidden" id="mExpense20" value="${me.mExpense20 }">
				
				
				
				<script type="text/javascript">
							Morris.Line({
								element : 'morris-line-example',
								data : [ 
									{ y : '2016년', a : $("#mExpense16").val()}, 
									{ y : '2017년', a : $("#mExpense17").val()}, 
									{ y : '2018년', a : $("#mExpense18").val()}, 
									{ y : '2019년', a : $("#mExpense19").val()}, 
									{ y : '2020년', a : $("#mExpense20").val()}
								],
								xkey : 'y',
								ykeys : [ 'a' ],
								labels : [ '해당 해의 총 지출' ]
							});
						</script>

			</div>
			<div class="col-sm-12">
				<div class="card-box">
					<h4 class="m-t-0">재무 사용 정보</h4>
					<div class="table-responsive">
						<table id="datatable-buttons" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th align="center">순번</th>
									<th align="center">업체 이름</th>
									<th align="center">내역</th>
									<th align="center">금액</th>
									<th align="center">입력날짜</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="e" items="${list}">
									<tr
										onclick="document.location.href='edetail.do?exCode=${e.exCode}'">
										<td align="center">${e.exCode}</td>
										<td align="center">${e.comName }</td>
										<td align="center">${e.exExpend}</td>
										<td align="center">${e.exPrice}</td>
										<td align="center">${e.exDate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<%-- <div id="pagenation">
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
									<li class="page-item active"><a class="page-link" href="#">${p}</a></li>
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
					<div id="serachArea" align="center">
						<form action="nsearch.do" name="searchForm" method="get">
							<select id="searchCondition" name="searchCondition">
								<option value="all" 
									<c:if test="${search.searchCondition == 'all'}">selected</c:if>>전체</option>
								<option value="wrtier" 
									<c:if test="${search.searchCondition == 'comName'}">selected</c:if>>업체 이름</option>
								<option value="title" 
									<c:if test="${search.searchCondition == 'exExpend'}">selected</c:if>>내역</option>

							</select> <input type="search" name="searchValue"
								value="${serach.searchValue }">

							<button>검색</button> --%>
							
						<!-- <div class="form-group">
                                        <label>With all options</label>
                                        <div id="reportrange" class="pull-right form-control">
                                            <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                                            <span></span>
                                        </div>
                        </div> -->

						</form>
						<button class="btn btn-default waves-effect waves-light btn-sm" id="sa-basic" onclick="location.href='einsertView.do'">등록하기</button>
						<br>
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
						</script>

						


					</div>
				</div>
			</div>
		</div>

	</div>

	</div>
	</div>
	
	<!-- js placed at the end of the document so the pages load faster -->
        <script src="resources/administrator/js/jquery-2.1.4.min.js"></script>
        <script src="resources/administrator/js/bootstrap.min.js"></script>
        <script src="resources/administrator/js/metisMenu.min.js"></script>
        <script src="resources/administrator/js/jquery.slimscroll.min.js"></script>

        <!-- Datatable js -->
        <script src="resources/administrator/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/administrator/plugins/datatables/jszip.min.js"></script>
        <script src="resources/administrator/plugins/datatables/pdfmake.min.js"></script>
        <script src="resources/administrator/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/administrator/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.colVis.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.fixedColumns.min.js"></script>

        <!-- init -->
        <script src="resources/administrator/pages/jquery.datatables.init.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>


</body>
</html>