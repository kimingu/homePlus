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

#chooseBtn{
	float:left;
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
					<h4 class="header-title m-t-0 m-b-20">메일 발송</h4>
				</div>
			</div>
			<div class="col-lg-13">
				<div class="row">
					<div class="col-sm-12">
						<div class="card-box">
							<form action="masterMailWrite.do" method="POST">
								<input type="hidden" name="meWriter" value="${ loginMaster.maName }">
								<div class="etcBtn">
									<div class="form-group">
										<div class="col-md-13">
 											<div class="radio radio-info radio-inline">
                                                <input type="radio" id="inlineRadio1" value="selectPersonal" name="selectRadio" checked>
                                                <label for="inlineRadio1"> 개별 전송 </label>
                                            </div>
                                            <div class="radio radio-inline">
                                                <input type="radio" id="inlineRadio2" value="selectAll" name="selectRadio" checked>
                                                <label for="inlineRadio2"> 전체 전송 </label>
                                            </div>
                                            <div class="radio radio-inline">
												
                                            </div>
										<br>
											<a href="#" onclick="selectReceiver()" class="btn btn-sm btn-default pull-right" style="height:40px; font-size:110%">선택하기</a>
											<input type="text" class="form-control" placeholder="받는사람"  parsley-trigger="change" name="meReceiver" id="meReceiver" readonly style="width:93%">
										</div>
										<br>
										<div class="col-md-13">
											<input type="text" class="form-control" placeholder="제목을 입력하세요"
												name="meTitle">
										</div>
									</div>
									<div class="row">
							<div class="col-sm-12">
								<div class="p-22 m-b-22">
										<textarea class="summernote" id="summernote" name="meContent">
										</textarea>
								</div>
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
							<br> <br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<script>
			function selectReceiver(){
				window.open('masterReceiverList.do','수신자 선택 폼', 'width=900, height=450, left=500, top=150');
				elementId=id;
			}
		</script>
		<script src="resources/administrator/js/jquery-2.1.4.min.js"></script>
        <script src="resources/administrator/js/bootstrap.min.js"></script>
        <script src="resources/administrator/js/metisMenu.min.js"></script>
        <script src="resources/administrator/js/jquery.slimscroll.min.js"></script>

        <script src="resources/administrator/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.min.js"></script>
        <script src="resources/administrator/plugins/select2/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/administrator/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <script src="resources/administrator/plugins/switchery/switchery.min.js"></script>
        <script type="text/javascript" src="resources/administrator/plugins/parsleyjs/parsley.min.js"></script>

        <script src="resources/administrator/plugins/moment/moment.js"></script>
     	<script src="resources/administrator/plugins/timepicker/bootstrap-timepicker.js"></script>
     	<script src="resources/administrator/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
     	<script src="resources/administrator/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
     	<script src="resources/administrator/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script>
     	<script src="resources/administrator/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="resources/administrator/plugins/summernote/summernote.min.js"></script>

        <!-- form advanced init js -->
        <script src="resources/administrator/pages/jquery.form-advanced.init.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>	<script type="text/javascript">
            $(document).ready(function() {
                $('.form-validation').parsley();
                $('.summernote').summernote({
                    height: 500,
                    minHeight: null,           
                    maxHeight: 800,
                    lang : 'ko-KR',
                    focus: false           
                });
            });
        </script>
	<jsp:include page="../common/masterFooter.jsp" />
</body>
</html>