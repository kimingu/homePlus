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
					<h4 class="header-title m-t-0 m-b-20">게시글 리스트</h4>
				</div>
			</div>
		</div>
		<br>
		<div class="col-sm-12">
			<div class="card-box">
				<div class="table-responsive">
					  <table id="datatable-responsive" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th width="5%">번호</th>
								<th width="10%">작성자</th>
								<th width="30%">글제목</th>
								<th width="10%">게시판</th>
								<th width="10%">카테고리</th>
								<th width="10%">작성일</th>
								<th width="7%">상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="b" items="${ bList }">
								<tr id="bList" onclick="bList_click(this);">
									<input type="hidden" value="${ b.b_code }" name="b_code">
									<td>${ b.b_code }</td>
									<td>${ b.m_id }</td>
									<td>${ b.b_title }</td>
									<td>${ b.b_name }</td>
									<td>${ b.b_category }</td>
									<td>${ b.b_create_date }</td>
									<td>${ b.b_status }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		

	<script>
		function bList_click(e){
			var bCode = $(e).children("input").val();
			window.open('selectOneBoard.do?bCode='+bCode,'수신자 선택 폼', 'width=900, height=610, left=500, top=100');
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