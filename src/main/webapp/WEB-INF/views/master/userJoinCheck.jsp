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
</style>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />

	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h4 class="header-title m-t-0 m-b-20">유저 회원가입 요청리스트</h4>
				</div>
			</div>
		</div>
		<br>
		<div class="col-sm-12">
			<div class="card-box">
				<div class="etcBtn">
					<label id="titleLabel">미확인 가입 요청</label>
					<div class="btnBtn"></div>
				</div>
				<div class="table-responsive">
					  <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th width="16%">이름</th>
								<th width="16%">아이디</th>
								<th width="20%">이메일</th>
								<th width="16%">주소</th>
								<th width="16%">신청일자</th>
								<th width="10%">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="mc" items="${ mcList }">
								<tr id="mcList" onclick="mcList_click(this);">
									<input type="hidden" value="${ mc.mCode }" name="mCode"
										id="mCode">
									<td>${ mc.mName }</td>
									<td>${ mc.mId }</td>
									<td>${ mc.mEmail }</td>
									<td>${ mc.mArea }</td>
									<td id="msgDate"><a href="#" class="text-dark"> <fmt:formatDate
												value="${ mc.mEnrollDate }" pattern="yyyy년 MM월 dd일" />
									</a></td>
									<td id="msgStatus">${ mc.mStatus }</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
					<br>
				</div>
			</div>
		</div>

		<div class="col-sm-12">
			<div class="card-box">
				<div class="etcBtn">
					<label id="titleLabel">거절된 가입 요청</label>
					<div class="btnBtn"></div>
				</div>
				<div class="table-responsive">
					 <table id="datatable-keytable" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th width="16%">이름</th>
								<th width="16%">아이디</th>
								<th width="20%">이메일</th>
								<th width="16%">주소</th>
								<th width="16%">거절일자</th>
								<th width="10%">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="mf" items="${ mfList }">
								<tr id="mfList" onclick="mfList_click(this);">
									<input type="hidden" value="${ mf.mCode }" name="mCode" id="mCode">
									<td>${ mf.mName }</td>
									<td>${ mf.mId }</td>
									<td>${ mf.mEmail }</td>
									<td>${ mf.mArea }</td>
									<td id="msgDate"><a href="#" class="text-dark"> <fmt:formatDate
												value="${ mf.mEnrollDate }" pattern="yyyy년 MM월 dd일" />
									</a></td>
									<td id="msgStatus">${ mf.mStatus }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>


					<br>
				</div>
			</div>
		</div>
	</div>
	</div>

	<jsp:include page="../common/masterFooter.jsp" />

	<script>
		function mfList_click(e) {
			var mCode = $(e).children("input").val();
			alert("거절된 회원을 목록에서 제거 하시겠습니까?");
			location.href = "deleteFailList.do?mCode=" + mCode;
		}

		function mcList_click(e) {
			var mCode = $(e).children("input").val();
			location.href = "userCheckDetail.do?mCode=" + mCode;
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

</body>
</html>