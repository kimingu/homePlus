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
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <link href="resources/administrator/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>
        
        <!-- Bootstrap core CSS -->
        <link href="resources/administrator/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/administrator/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="resources/administrator/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/administrator/css/style.css" rel="stylesheet">
<style>
#mainText {
	margin-left: 1%;
}

#changeButton {
	float: right;
}

#newImage {
	visibility: hidden;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />


	<div id="page-right-content" class="masterContents">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h4 class="header-title m-t-0 m-b-20">가입 요청 관리자 리스트</h4>
				</div>
			</div>
		</div>
		<br>
		<div class="col-sm-12">
			<div class="card-box">
				<div class="table-responsive">
					<h5>미완료된 가입요청</h5>
					  <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th width="16%">이름</th>
								<th width="16%">아이디</th>
								<th width="20%">이메일</th>
								<th width="16%">주소</th>
								<th width="16%">연락처</th>
								<th width="10%">상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="adY" items="${ adYList }">
								<tr id="adYList" onclick="adYList_click(this);">
									<input type="hidden" value="${ adY.aCode }" name="aCode">
									<td>${ adY.aName }</td>
									<td>${ adY.aId }</td>
									<td>${ adY.aEmail }</td>
									<td>${ adY.aAddress }</td>
									<td>${ adY.aPhone }</td>
									<td>${ adY.aStatus }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<div class="container">
		</div>
		<br>
		<div class="col-sm-12">
			<div class="card-box">
				<h5>거절된 가입요청</h5>
				<div class="table-responsive">
					 <table id="datatable-keytable" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th width="16%">이름</th>
								<th width="16%">아이디</th>
								<th width="20%">이메일</th>
								<th width="16%">주소</th>
								<th width="16%">연락처</th>
								<th width="10%">상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="adN" items="${ adNList }">
								<tr id="adNList" onclick="adNList_click(this);">
									<input type="hidden" value="${ adN.aCode }" name="aCode">
									<td>${ adN.aName }</td>
									<td>${ adN.aId }</td>
									<td>${ adN.aEmail }</td>
									<td>${ adN.aAddress }</td>
									<td>${ adN.aPhone }</td>
									<td>${ adN.aStatus }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
		function adYList_click(e){
			var aCode = $(e).children("input").val();
			location.href="selectOneAdminY.do?aCode="+aCode;
		}
		function adNList_click(e){
			var aCode = $(e).children("input").val();
			alert("거절된 요청을 목록에서 제거 하시겠습니까?");
			location.href="deleteAdminNList.do?aCode="+aCode;
		}
	</script>
	
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
        <!-- Dashboard init -->
		<script src="resources/administrator/pages/jquery.dashboard.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>
	<jsp:include page="../common/masterFooter.jsp" />
</body>
</html>