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
.picture{
	padding:5px;
	float:left;
	width:25%;
}
.picture button{width: 100%; border: 1px solid skyblue; background-color: rgba(0,0,0,0); color: skyblue; padding: 5px; }
.picture button:hover{width: 100%; color:white; background-color: skyblue; }
.pcbody{
	margin:auto;
	padding:8px;
}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp" />
	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="pcbody">
					<div class="picture">
					<img src="resources/facility/images/traffic1.jpg" alt="My Image" style="max-width: 100%;height: auto;">
					<button value="all" id="sel" onclick="selchange('1')">범례보기</button>
					</div>
					<div class="picture">
					<img src="resources/facility/images/traffic2.jpg" alt="My Image" style="max-width: 100%; height: auto;">
					<button value="all" id="sel" onclick="selchange('2')">범례보기</button>
					</div>
					<div class="picture">
					<img src="resources/facility/images/traffic3.jpg" alt="My Image" style="max-width: 100%; height: auto;">
					<button value="all" id="sel" onclick="selchange('3')">범례보기</button>
					</div>
					<div class="picture">
					<img src="resources/facility/images/traffic4.jpg" alt="My Image" style="max-width: 100%; height: auto;">
					<button value="all" id="sel" onclick="selchange('4')">범례보기</button>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h4 class="m-t-0">교통시설 신고 내역</h4>
						<div id="forright">	
						</div>
						<div class="table-responsive">
						
							<table
								class="table table-hover mails m-0 table table-actions-bar"
								id="aptable">
								<thead>
									<tr>
										<th align="center">신고번호</th>
										<th align="center">신고자</th>
										<th align="center">신고제목</th>
										<th align="center">신고일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="b" items="${list}">
										<tr onclick="window.open('facdetail.do?code='+${b.bb_code},'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');">
											<td align="center">${b.bb_code}</td>
											<td align="center">${b.m_name}</td>
											<td align="center">${b.bb_title}</td>
											<td align="center">${b.bb_createdate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function selchange(s) {
			var sel = s;
			console.log(sel);
			$.ajax({
				url : "seltraffic.do",
				data : {
					sel : sel
				},
				datatype : "json",
				success : function(data) {
					$tableBody = $("#aptable tbody");
					$tableBody.html("");
					if (data.length > 0) {
						for ( var i in data) {
							$tr = $('<tr align="center">');
							console.log("데이터 : " + data[i]);
							$bbcode = $("<td>").text(data[i].bb_code);
							$mname = $("<td>").text(data[i].m_name);
							$bbtitle = $("<td>").text(data[i].bb_title);
							$bbcreatedate = $("<td>").text(
									data[i].bb_createdate);
							$tr.append($bbcode);
							$tr.append($mname);
							$tr.append($bbtitle);
							$tr.append($bbcreatedate);
							$tableBody.append($tr);
						}
					} else {
						$tr = $("<tr align='center'>");
						$rContent = $("<td>").text("신고내역이 없습니다.");
						$tr.append($rContent);
						$tableBody.append($tr);
					}

				},
				error : function() {
					console.log("ajax 통신 실패!");
				}
			});
		}
	</script>
</body>
</html>