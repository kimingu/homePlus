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
<style>
#mainText {
	margin-left: 1%;
}

#changeButton {
	float: right;
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
					<h4 class="header-title m-t-0 m-b-20">아파트 목록</h4>
				</div>
			</div>
		</div>
		<div class="col-sm-12">
			<div class="card-box">
				<div class="table-responsive">
					<h5>등록된 아파트 목록</h5>
					<table class="table table-hover mails m-0 table table-actions-bar">
						<thead>
							<tr>
								<th style="min-width: 30px;">아파트 코드</th>
								<th>상세 주소 및 아파트 명</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="apt" items="${ aptList }">
								<tr id="aptList" onclick="aptList_click(this);">
								<input type="hidden" value="${ apt.apCode }">
									<td>${ apt.apCode }</td>
									<td>${ apt.apAddress }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
		function aptList_click(e){
			alert("선택하신 아파트를 삭제하시겠습니까?");
			var apCode = $(e).children("input").val();
			location.href="deleteApt.do?apCode="+apCode;
		}
	</script>
	<jsp:include page="../common/masterFooter.jsp" />
</body>
</html>