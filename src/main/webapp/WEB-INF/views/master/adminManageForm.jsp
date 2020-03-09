<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon"
	href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<title>홈플러스 | HOMEPLUS</title>
<meta charset="UTF-8">

<link
	href="resources/administrator/plugins/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/administrator/plugins/datatables/buttons.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/administrator/plugins/datatables/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/administrator/plugins/datatables/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/administrator/plugins/datatables/dataTables.colVis.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/administrator/plugins/datatables/dataTables.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/administrator/plugins/datatables/fixedColumns.dataTables.min.css"
	rel="stylesheet" type="text/css" />

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
<style>
</style>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />

	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h4 class="header-title m-t-0 m-b-20">관리자 회원 관리</h4>
				</div>
			</div>
		</div>
		<br>
		<div class="col-sm-12">
			<div class="card-box">
				<div class="etcBtn">
					<label id="titleLabel">모든 관리자 회원 목록</label>
					<div class="btnBtn"></div>
				</div>
				<div class="table-responsive">
					<table id="datatable-buttons"
						class="table table-striped table-bordered" cellspacing="0"
						width="100%">
						<thead>
							<tr>
								<th width="16%">이름</th>
								<th width="16%">아이디</th>
								<th width="20%">이메일</th>
								<th width="16%">전화번호</th>
								<th width="16%">가입일자</th>
								<th width="10%">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="a" items="${ aList }">
								<tr id="aList" onclick="aList_click(this);">
									<input type="hidden" value="${ a.aCode }" name="aCode"
										id="aCode">
									<td>${ a.aName }</td>
									<td>${ a.aId }</td>
									<td>${ a.aEmail }</td>
									<td>${ a.aPhone }</td>
									<td id="msgDate"><a href="#" class="text-dark"> <fmt:formatDate
												value="${ a.aEnrollDate }" pattern="yyyy년 MM월 dd일" />
									</a></td>
									<td id="msgStatus">${ a.aStatus }</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
					<br>
				</div>
			</div>
		</div>



		<br>
	</div>
	<script>
		function aList_click(e){
			var aCode = $(e).children("input").val();
			location.href="selectOneAdminY.do?aCode="+aCode;
		}
	</script>

	<jsp:include page="../common/masterFooter.jsp" />

	<!-- Datatable js -->
	<script
		src="resources/administrator/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/dataTables.bootstrap.js"></script>
	<script
		src="resources/administrator/plugins/datatables/dataTables.buttons.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/buttons.bootstrap.min.js"></script>
	<script src="resources/administrator/plugins/datatables/jszip.min.js"></script>
	<script src="resources/administrator/plugins/datatables/pdfmake.min.js"></script>
	<script src="resources/administrator/plugins/datatables/vfs_fonts.js"></script>
	<script
		src="resources/administrator/plugins/datatables/buttons.html5.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/buttons.print.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/dataTables.keyTable.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/dataTables.responsive.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/responsive.bootstrap.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/dataTables.scroller.min.js"></script>
	<script
		src="resources/administrator/plugins/datatables/dataTables.colVis.js"></script>
	<script
		src="resources/administrator/plugins/datatables/dataTables.fixedColumns.min.js"></script>

	<!-- init -->
	<script src="resources/administrator/pages/jquery.datatables.init.js"></script>

	<!-- App Js -->
	<script src="resources/administrator/js/jquery.app.js"></script>
	<!-- Dashboard init -->
	<script src="resources/administrator/pages/jquery.dashboard.js"></script>

	<!-- App Js -->
	<script src="resources/administrator/js/jquery.app.js"></script>

</body>
</html>