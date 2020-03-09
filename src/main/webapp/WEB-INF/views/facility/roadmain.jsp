<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>

<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<style>
.page-contentbar {
	height: 100%;
}

#forright {
	text-align: right;
}

#wraping {
	margin: auto;
	text-align: center;
}

#road {
	display: inline-block;
	background-image: url("resources/facility/images/roadmap.png");
	background-repeat: no-repeat;
	background-size: contain;
	width: 80%;
	height: 600px;
}

.rd {
	position: absolute;
}

#rd1 {
	margin-left: 2%;
	margin-top: 16%;
}
#rd2{
	margin-left: 19%;
	margin-top: 26%;
}
#rd3{
	margin-left:64%;
	margin-top:22%;
}
#rd4{
	margin-left:10%;
	margin-top:20%;
}
#rd5{
	margin-left:36.5%;
	margin-top:22%;
}
#rd6{
	margin-left:18%;
	margin-top:11%;
}
#rd7{
	margin-left:29%;
	margin-top:16%;
}
#rd8{
	margin-left:28%;
	margin-top:8%;
}
#rd9{
	margin-left:40%;
	margin-top:12%;
}
#rd10{
	margin-left:1%;
	margin-top:24%;
}
#rd11{
	margin-left:35%;
	margin-top:27%;
}
#rd12{
	margin-left:17%; 
	margin-top:9%;
}
#rd13{
	margin-left:20%;
	margin-top:14.5%;
}
#rd14{
	margin-left:38%;
	margin-top:18%;
}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h3 class="m-t-0">도로 관리 페이지</h3>
						<hr>
						<div id="wraping">
							<div id="road">
								<c:forEach var="l" items="${list}" varStatus="status">
									<div class="rd" id="rd${status.count}">
										<c:if test='${l.bb_code ne null}'>
											<img src="resources/facility/images/warning.png"
												, style="cursor: pointer;"
												onclick="window.open('facdetail.do?code='+${l.bb_code},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');" />
										</c:if>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>