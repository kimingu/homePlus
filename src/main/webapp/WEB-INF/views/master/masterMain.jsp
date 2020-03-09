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
<style>
#masterContents {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />

	<!-- START PAGE CONTENT -->
	<div id="page-right-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box widget-inline">
						<div class="row">
							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-primary mdi mdi-access-point-network"></i> <b
											data-plugin="counterup"><fmt:formatNumber value="${ im.iMoney20 }" pattern="000,000원" /></b>
									</h3>
									<p class="text-muted">올해의 총 수익</p>
								</div>
							</div>

							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-custom mdi mdi-airplay"></i> <b
											data-plugin="counterup">${ appCount }건</b>
									</h3>
									<p class="text-muted">미처리 문의요청 수</p>
								</div>
							</div>

							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-info mdi mdi-black-mesa"></i> <b
											data-plugin="counterup">${ memCount }건</b>
									</h3>
									<p class="text-muted">미처리 가입요청 수</p>
								</div>
							</div>

							<div class="col-lg-3 col-sm-6">
								<div class="widget-inline-box text-center b-0">
									<h3 class="m-t-10">
										<i class="text-danger mdi mdi-cellphone-link"></i> <b
											data-plugin="counterup">${ allMember }명</b>
									</h3>
									<p class="text-muted">총 회원수</p>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!--end row -->


			<div class="row">
				<div class="col-lg-6">
					<div class="card-box">
						<h4 class="m-t-0">년별 수입비교</h4>
						<div class="text-center">
							<ul class="list-inline chart-detail-list">
								<li>
									<h5 class="font-normal">
										<i class="m-r-10"><img src="resources/administrator/images/deepBlue.png" width="15px"></i>제휴업체로 인한 수입
									</h5>
								</li>
							</ul>
						</div>
						<div id="morris-line-example" style="height: 300px;"></div>
					</div>
				</div>
				<!-- end col -->

				<div class="col-lg-6">
					<div class="card-box">
						<h4 class="m-t-0">년별 요청현황</h4>
						<div class="text-center">
							<ul class="list-inline chart-detail-list">
								<li>
									<h5 class="font-normal">
										<i class="m-r-10"><img src="resources/administrator/images/deepBlue.png" width="15px"></i>입주자 가입요청
									</h5>
								</li>
								<li>
									<h5 class="font-normal">
										<i class="m-r-10"><img src="resources/administrator/images/deepGray.png" width="15px"></i>관리자 가입요청
									</h5>
								</li>
								<li>
									<h5 class="font-normal">
										<i class="m-r-10"><img src="resources/administrator/images/deepGreen.png" width="15px"></i>기업 문의요청
									</h5>
								</li>
							</ul>
						</div>
						<div id="morris-bar-stacked" style="height: 300px;">
								
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->


			<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h4 class="m-t-0">업체 문의요청</h4>
						<div class="table-responsive">
							<table
								class="table table-hover mails m-0 table table-actions-bar">
								<thead>
									<tr>
										<th style="min-width: 95px;">상호명</th>
										<th>전화번호</th>
										<th>담당자</th>
										<th>내용</th>
										<th>신청일자</th>
										<th>처리상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="app" items="${ appList }">
										<tr id="appList" onclick="appList_click(this);">
											<input type="hidden" value="${ app.appCode }" name="mCode">
											<td>${ app.appName }</td>
											<td>${ app.appPhone }</td>
											<td>${ app.appManager }</td>
											<td>${ app.appContent }</td>
											<td id="msgDate"><fmt:formatDate
													value="${ app.appDate }" pattern="yy-MM-dd [HH:mm]" /></td>
											<td>${ app.appStatus }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h4 class="m-t-0">입주자 가입요청</h4>
						<div class="table-responsive">
							<table
								class="table table-hover mails m-0 table table-actions-bar">
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
									<c:forEach var="mem" items="${ memList }">
										<tr id="memList" onclick="memList_click(this);">
											<input type="hidden" value="${ mem.mCode }" name="mCode"
												id="mCode">

											<td>${ mem.mName }</td>
											<td>${ mem.mId }</td>
											<td>${ mem.mEmail }</td>
											<td>${ mem.mArea }</td>
											<td id="msgDate"><a href="#" class="text-dark"> <fmt:formatDate
														value="${ mem.mEnrollDate }" pattern="yy-MM-dd [HH:mm]" />
											</a></td>
											<td id="msgStatus">${ mem.mStatus }</td>
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
		function appList_click(e) {
			var appCode = $(e).children("input").val();
			location.href = "selectOneApplyY.do?appCode=" + appCode;
		}

		function memList_click(e) {
			var mCode = $(e).children("input").val();
			location.href = "userCheckDetail.do?mCode=" + mCode;
		}
	</script>

											<input type="hidden" id="ecMember18" value="${ ec.ecMember18 }">
											 <input type="hidden" id="ecMember19" value="${ ec.ecMember19 }">
											 <input type="hidden" id="ecMember20" value="${ ec.ecMember20 }">
											 <input type="hidden" id="ecAdmin18" value="${ ec.ecAdmin18 }">
											 <input type="hidden" id="ecAdmin19" value="${ ec.ecAdmin19 }">
											 <input type="hidden" id="ecAdmin20" value="${ ec.ecAdmin20 }">
											 <input type="hidden" id="ecApply18" value="${ ec.ecApply18 }">
											 <input type="hidden" id="ecApply19" value="${ ec.ecApply19 }">
											 <input type="hidden" id="ecApply20" value="${ ec.ecApply20 }">
											 <input type="hidden" id="iMoney17" value="${ im.iMoney17 }">
											 <input type="hidden" id="iMoney18" value="${ im.iMoney18 }">
											 <input type="hidden" id="iMoney19" value="${ im.iMoney19 }">
											 <input type="hidden" id="iMoney20" value="${ im.iMoney20 }">
											 
											 
	<script type="text/javascript">
		Morris.Bar({
			  element: 'morris-bar-stacked',
			  data: [
			    { y: '2018년', a:$("#ecMember18").val(),  b: $("#ecAdmin18").val(), c:$("#ecApply18").val() },
			    { y: '2019년', a:$("#ecMember19").val(),  b: $("#ecAdmin19").val(), c:$("#ecApply19").val() },
			    { y: '2020년', a:$("#ecMember20").val(),  b: $("#ecAdmin20").val(), c:$("#ecApply20").val() }
			  ],
			  xkey: 'y',
			  ykeys: ['a', 'b', 'c'],
			  labels: ['문의요청', '입주자 가입요청', '관리자 가입요청']
			});
	</script>
	
	<script type="text/javascript">
	Morris.Line({
		  element: 'morris-line-example',
		  data: [
		    { y: '2016년', a:0 },
		    { y: '2017년', a:$("#iMoney17").val() },
		    { y: '2018년', a:$("#iMoney18").val() },
		    { y: '2019년', a:$("#iMoney19").val() },
		    { y: '2020년', a:$("#iMoney20").val() }
		  ],
		  xkey: 'y',
		  ykeys: ['a'],
		  labels: ['해당 해의 총 수입']
		});
	</script>

	<!-- end container -->
	<!-- End #page-right-content -->

	<jsp:include page="../common/masterFooter.jsp" />
</body>
</html>