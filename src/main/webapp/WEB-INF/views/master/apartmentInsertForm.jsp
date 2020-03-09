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

#newImage {
	visibility: hidden;
}

#msgMenu {
	font-size: 16px;
	color: black;
}

#msgWriter {
	width: 10%;
}

#msgContent {
	width: 70%;
}

#msgDate {
	width: 10%;
}

#msgStatus {
	width: 5%;
}

#searchArea {
	float: left;
}

.allSearchArea {
	margin: auto;
}

.etcBtn {
	display: inline-block;
	width: 100%;
}

.btnBtn {
	display: inline-block;
	float: right;
}

#msgMenuSelected {
	font-size: 16px;
}

#titleLabel {
	margin-left: 10px;
}

#pageTable:hover {
	color: black;
	background-color: white;
}

.pageA {
	color: black;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#changeImage").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#newImage').attr('src', e.target.result);
				$('#newImage').css("visibility", "visible")
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
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
					<h4 class="header-title m-t-0 m-b-20">아파트 등록 페이지</h4>
				</div>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="card-box">
				<div class="row">
					<div class="col-md-12">
						<form action="apartmentInsert.do" method="POST">
							<input type="hidden" name="meWriter"
								value="${ loginMaster.maName }">
							<div class="etcBtn">
								<div class="form-group">
									<label class="col-md-2 control-label">새로운 아파트 등록</label> <br>
									<br>
									<div class="col-md-13">
										<input type="text" class="form-control"
											placeholder="아파트 코드(ex : G-01)" name="apCode">
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-13">
										<div id="postcodify"></div>

										<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 id를 부여한다 -->
										<input type="text" placeholder="도로명 주소" class="form-control" name="apAddress1" id="address" value=""  readonly>
										<input type="text" placeholder="상세 정보" class="form-control" name="apAddress2" id="extra_info" value="" / readonly>

										<!-- jQuery와 Postcodify를 로딩한다 -->
										<script
											src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
										<script
											src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

										<!-- 위에서 생성한 <div>에 검색 기능을 표시하고, 결과를 입력할 <input>들과 연동한다 -->
										<script>
											$(function() {
												$("#postcodify")
														.postcodify(
																{
																	insertPostcode5 : "#postcode",
																	insertAddress : "#address",
																	insertDetails : "#details",
																	insertExtraInfo : "#extra_info",
																	hideOldAddresses : false
																});
											});
										</script>
									</div>
								</div>
							</div>
							<br> <br>
							<div class="col-sm-7 col-sm-offset-5" id="sendBtn">
								<button class="btn btn-default waves-effect m-l-5"
									onclick="history.go(-1)" type="reset">돌아가기</button>
								<button class="btn btn-primary waves-effect waves-light"
									type="submit">전송하기</button>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
		<!-- 3. "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
		<script>
			$(function() {
				$("#postcodify_search_button").postcodifyPopUp();
			});
		</script>
		<jsp:include page="../common/masterFooter.jsp" />
</body>
</html>