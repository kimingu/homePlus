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
<link href="resources/administrator/plugins/summernote/summernote.css"
	rel="stylesheet" />
<link
	href="resources/administrator/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="resources/administrator/plugins/switchery/switchery.min.css">
<link href="resources/administrator/plugins/select2/css/select2.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/administrator/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/administrator/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="resources/administrator/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/administrator/plugins/clockpicker/css/bootstrap-clockpicker.min.css"
	rel="stylesheet">
<link
	href="resources/administrator/plugins/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

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


<!-- js placed at the end of the document so the pages load faster -->
<script src="resources/administrator/js/jquery-2.1.4.min.js"></script>
<script src="resources/administrator/js/metisMenu.min.js"></script>
<script src="resources/administrator/js/jquery.slimscroll.min.js"></script>

<!-- App Js -->
<script src="resources/administrator/js/jquery.app.js"></script>
<meta charset="UTF-8">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="col-lg-13">
		<div class="row">
		<div class="col-sm-12">
				<div class="card-box">
					<form action="masterReportDelete.do" method="POST">
						<input type="hidden" name="bd_code" value="${ bd.bd_code }">
						<input type="hidden" class="form-control" value="${ bd.m_id }"  name="m_id" readonly>
						<div class="etcBtn">
							<div class="form-group">
								<label class="col-md-2 control-label">신고 상세 정보</label> <br>
								<br>
								<div class="col-md-13">
									<input type="text" class="form-control" value="신고자 : ${ bd.m_id }"  readonly>
								</div>
								<div class="col-md-13">
									<input type="text" class="form-control" value="신고 종류: ${ bd.bd_category }"  readonly>
								</div>
								<div class="col-md-13">
									<input type="text" class="form-control" value="신고 접수일 : ${ bd.bd_create_date }" readonly>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-13" style="border:0.5px solid lightgray; padding:20px">
									<p>${ bd.bd_content }</p>
								</div>
							</div>
						</div>
						<br> <br>
						<div class="col-sm-7 col-sm-offset-5" id="sendBtn">
							<c:if test="${ bd.bd_status eq 'Y'}">
							<button class="btn btn-primary waves-effect waves-light" type="submit">허위 신고처리</button>
							</c:if>
						</div>
					</form>
					<br>
					<br>
				</div>
			</div>
				<hr>
			<div class="col-sm-12">
				<div class="card-box">
					<form action="masterReportClear.do" method="POST">
						<input type="hidden" name="bd_code" value="${ bd.bd_code }">
						<input type="hidden" class="form-control" value="${ bd.m_id }"  name="reMid">
						<input type="hidden" class="form-control" value="${ b.m_id }" name="bMid">
						<div class="etcBtn">
							<div class="form-group">
								<label class="col-md-2 control-label">게시글 상세 정보</label> <br>
								<br>
								<div class="col-md-13">
									<input type="text" class="form-control" value="작성자 : ${ b.m_id }" readonly>
								</div>
								<div class="col-md-13">
									<input type="text" class="form-control" value="게시판/카테고리 : ${ b.b_name }/${ b.b_category }"  name="meReceiver" readonly>
								</div>
								<div class="col-md-13">
									<input type="text" class="form-control" value="제목 : ${ b.b_title }"  name="meReceiver" readonly>
								</div>
								<div class="col-md-13">
									<input type="text" class="form-control" value="작성일 : ${ b.b_create_date }"  name="meReceiver" readonly>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-13" style="border:0.5px solid lightgray; padding:20px">
									<p>${ b.b_content }</p>
								</div>
							</div>
						</div>
						<br> <br>
						<div class="col-sm-7 col-sm-offset-5" id="sendBtn">
							<button class="btn btn-default waves-effect m-l-5"
								onclick="window.close()" type="reset">닫기</button>
							<c:if test="${ bd.bd_status eq 'Y'}">
							<button class="btn btn-primary waves-effect waves-light"
								type="submit">처리하기</button>
							</c:if>
						</div>
					</form>
					<br>
					<br>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" value="${ result }" id="result">
	<script>
		window.onload = function(){
		   var result = $("#result").val();
		   if(result > 0){
			   opener.location.reload();
			   window.close();
 	   }
		}
</script>
</body>
</html>