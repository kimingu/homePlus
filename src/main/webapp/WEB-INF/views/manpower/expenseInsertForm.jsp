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

.pagenation {
	margin-left: 30%;
}

.form-group {
	margin-left: 30%;
}

.tt {
	text-align:center;
	border-bottom:1px solid lightgray;
}

#view {
	margin-right:35%;
}
</style>
</head>


<body>
	<jsp:include page="../common/0menubar.jsp" />
	<div id="page-right-content">
		
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
					<div class="tt">
					<h4 class="m-t-0">재무 등록하기</h4>
					</div>
					<div class="table-responsive">
						<table class="table table-hover mails m-0 table table-actions-bar">
							<br>
							<tbody>
								<div class="m-b-20">
									<form action="einsert.do" method="POST" enctype="multipart/form-data" class="form-validation">
										<input type="hidden" value="${ list.comCode }" id="comCode" name="comCode">
										<div class="form-group">
											<label for="a">업체 이름<span class="text-danger">*</span></label>
											<div id="ttt">
											<input type="text" id="comName" name="comName" parsley-trigger="change" required
												class="form-control" id="comName" style="width: 60%;" readonly><!-- <button class="btn btn-sm btn-default pull-right" onclick="popup()">View</button> --><!-- <a href="javascript:popup()" target="_blank" class="btn btn-sm btn-default pull-right">View</a> -->
												<a href="#" onclick="popup()" class="btn btn-sm btn-default pull-right" id="view" >View</a>
											</div>
											
										</div>
										<div class="form-group">
											<label for="b">입력 날짜<span class="text-danger">*</span></label>
											<input type="date" name="exDate" parsley-trigger="change"
												required class="form-control" id="exDate"
												style="width: 60%;">
										</div>
										<div class="form-group">
											<label for="c">내역<span class="text-danger">*</span></label>
											<input type="text" name="exExpend" parsley-trigger="change"
												required class="form-control" id="exExpend"
												style="width: 60%;">
										</div>
										<div class="form-group">
											<label for="d">금액<span class="text-danger">*</span></label>
											<input type="text" name="exPrice" parsley-trigger="change"
												required class="form-control" id="exPrice"
												style="width: 60%;">
										</div>
										<div class="form-group text-right m-b-0">
											<button class="btn btn-primary waves-effect waves-light"
												type="submit">등록 하기</button>
											<button type="reset"
												class="btn btn-default waves-effect m-l-5">새로 작성</button>
											<button type="reset"
												class="btn btn-default waves-effect m-l-5"
												onclick="goBack();">돌아가기</button>
										</div>
									</form>
								</div>
								
								

								<%-- </c:forEach> --%>
							</tbody>
							<script type="text/javascript">
								function goBack(){
									window.history.back();
								}
								
								function popup(){

									window.open('cclist.do','비밀번호찾기','width=900, height=700, left=500, top=150');
									elementId=id;
								}
							</script>
						</table>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>
	</div>


</body>
</html>