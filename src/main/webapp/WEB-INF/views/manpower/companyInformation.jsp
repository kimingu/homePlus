<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

#pagenation {
	text-align: center;
}
.pop-layer .pop-container {
  padding: 20px 25px;
}

.pop-layer p.ctxt {
  color: #666;
  line-height: 25px;
}

.pop-layer .btn-r {
  width: 100%;
  margin: 10px 0 20px;
  padding-top: 10px;
  border-top: 1px solid #DDD;
  text-align: right;
}

.pop-layer {
  display: none;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 410px;
  height: auto;
  background-color: #fff;
  border: 5px solid #3571B5;
  z-index: 10;
  
}

.dim-layer {
  display: none;
  position: fixed;
  _position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 100;
}

.dim-layer .dimBg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #000;
  opacity: .5;
  filter: alpha(opacity=50);
}

.dim-layer .pop-layer {
  display: block;
}

a.btn-layerClose {
  display: inline-block;
  height: 25px;
  padding: 0 14px 0;
  border: 1px solid #304a8a;
  background-color: #3f5a9d;
  font-size: 13px;
  color: #fff;
  line-height: 25px;
}

a.btn-layerClose:hover {
  border: 1px solid #091940;
  background-color: #1f326a;
  color: #fff;
}

#one {
	width:33.3%;
}

</style>
</head>


<body>
	<jsp:include page="../common/0menubar.jsp" />
	<div id="page-right-content">
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box widget-inline">
					<div class="row">
						<c:forEach var="count" items="${count}">
						<div class="col-lg-3 col-sm-6" id="one">
							<div class="widget-inline-box text-center">
								<h3 class="m-t-10">
									<i class="text-primary mdi mdi-access-point-network"></i> <b
										data-plugin="counterup">${count.contractall}</b>
								</h3>
								<p class="text-muted">등록업체 총수</p>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6" id="one">
							<div class="widget-inline-box text-center" >
								<h3 class="m-t-10">
									<i class="text-custom mdi mdi-airplay"></i> <b
										data-plugin="counterup">${count.contracting}</b>
								</h3>
								<p class="text-muted">계약중</p>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6" id="one">
							<div class="widget-inline-box text-center">
								<h3 class="m-t-10">
									<i class="text-info mdi mdi-black-mesa"></i> <b
										data-plugin="counterup">${count.contractend}</b>
								</h3>
								<p class="text-muted">계약만료</p>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
					<h4 class="m-t-0">등록 업체 정보</h4>
					<div style="height: 10px;"></div>
			&nbsp;&nbsp;<a href="#layer2" class="btn-example" style="margin:right;">업체구분표</a>
			<div class="dim-layer">
				<div class="dimBg"></div>
				<div id="layer2" class="pop-layer">
					<div class="pop-container">
						<div class="pop-conts">
							<!--content //-->
							<!-- <p class="ctxt mb20" align="center">
								★게시글 이용시 주의사항★</p> --><br>
								<table class="table table-hover mails m-0 table table-actions-bar" id="pop">
									<tr>
										<th align="center">구분</th>
										<th align="center">정보</th>
									<tr>
									<tr>
										<td align="center">A</td>
										<td align="center">경비</td>
									</tr>
									<tr>
										<td align="center">B</td>
										<td align="center">미화</td>
									</tr>
									<tr>
										<td align="center">F</td>
										<td align="center">시설</td>
									</tr>
								</table>
							</p>

							<div class="btn-r">
								<a href="#" class="btn-layerClose">Close</a>
							</div>
							<!--// content-->
						</div>
					</div>
				</div>
			</div>
			<br><br>
					<div class="table-responsive">
						<table class="table table-hover mails m-0 table table-actions-bar">
							<thead>
								<tr>
									<th align="center">순번</th>
									<th align="center">업체 구분</th>
									<th align="center">업체 이름</th>
									<th align="center">계약 시작일</th>
									<th align="center">계약 만료일</th>
									<th align="center">대표</th>
									<th align="center">계약 상태</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="c" items="${list}">
									<tr
										onclick="document.location.href='cdetail.do?comCode=${c.comCode }'">
										<td align="center">${c.comCode}</td>
										<td align="center">${c.comDivision}</td>
										<td align="center">${c.comName}</td>
										<td align="center">${c.comStartDate}</td>
										<td align="center">${c.comEndDate}</td>
										<td align="center">${c.comCeo}</td>
										<jsp:useBean id="now" class="java.util.Date"/>
										<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="nowDate"/>
										<fmt:formatDate value="${c.comStartDate }" pattern="yyyyMMdd" var="startDate"/>
										<fmt:formatDate value="${c.comEndDate }" pattern="yyyyMMdd" var="endDate"/>
											<c:if test="${nowDate > endDate }">
												<td align="center">계약 종료</td>
											</c:if>
											<c:if test="${nowDate <= endDate }">
												<td align="center">계약중</td>
											</c:if>
										
									</tr>




								</c:forEach>
							</tbody>
						</table>
					</div>
					<div id="pagenation">
						<ul class="pagination pagination-split">
							<c:if test="${searchValue eq null }">
								<c:set var="loc" value="clist.do" />
							</c:if>
							<c:if test="${searchValue ne null }">
								<c:set var="loc" value="csearch.do" />
							</c:if>
							<c:if test="${pi.currentPage <= 1 }">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
								</a></li>
							</c:if>
							<c:if test="${pi.currentPage > 1 }">
								<li class="page-item">
								<c:url var="before" value="${loc }">
										<c:param name="page" value="${pi.currentPage -1}" />
										
										<c:if test="${searchValue ne null }">
											<c:param name="searchValue" value="${searchValue }" />
											<c:param name="searchCondition" value="${searchCondition }" />
										</c:if>
								</c:url> 
								<a class="page-link" href="${before}" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
								</a></li>
							</c:if>
							<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
								<c:if test="${p eq pi.currentPage }">
									<li class="page-item active"><a class="page-link" href="#">${p}</a></li>
								</c:if>
								<c:if test="${p ne pi.currentPage }">
									<c:url var="pagination" value="${loc }">
										<c:param name="page" value="${p}" />
										
										<c:if test="${searchValue ne null }">
											<c:param name="searchValue" value="${searchValue }" />
											<c:param name="searchCondition" value="${searchCondition }" />
										</c:if>
									</c:url>
									<li class="page-item"><a class="page-link"
										href="${pagination}">${p}</a></li>
								</c:if>
							</c:forEach>
							<c:if test="${pi.currentPage >= pi.maxPage}">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										<span class="sr-only">Next</span>
								</a></li>
							</c:if>
							<c:if test="${pi.currentPage < pi.maxPage }">
								<c:url var="after" value="clist.do">
									<c:param name="page" value="${pi.currentPage + 1}" />

									<c:if test="${searchValue ne null }">
										<c:param name="searchValue" value="${searchValue }" />
										<c:param name="searchCondition" value="${searchCondition }" />
									</c:if>
								</c:url>
								<li class="page-item"><a class="page-link" href="${after}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										<span class="sr-only">Next</span>
								</a></li>
							</c:if>
						</ul>
					</div>
					<div id="serachArea" align="center">
						<form action="csearch.do" name="searchForm" method="get">
							<select id="searchCondition" name="searchCondition">
								<option value="all"
									<c:if test="${search.searchCondition == 'all' }">selected</c:if>>전체</option>
								<option value="comDivision"
									<c:if test="${search.searchCondition == 'comDivision' }">selected</c:if>>
									업체 구분</option>
								<option value="comName"
									<c:if test="${search.searchCondition == 'comName' }">selected</c:if>>업체
									이름</option>
								<option value="comCeo"
									<c:if test="${search.searchCondition == 'comCeo' }">selected</c:if>>
									대표</option>

							</select> <input type="search" name="searchValue"
								value="${serach.searchValue }">

							<button class="btn btn-default waves-effect waves-light btn-sm" id="sa-basic" onclick="searchCompany()">검색</button>

						</form>
						<button class="btn btn-default waves-effect waves-light btn-sm" id="sa-basic" onclick="location.href='cinsertView.do'">등록하기</button>
						
						
						<br>
						<script>
							$(".table tr").mouseover(function() {
								$(this).css({
									"background" : "lightgray",
									"cursor" : "pointer"
								});
							}).mouseleave(function() {
								$(this).css({
									"background" : "white"
								});
							});

							function searchCompany() {
								var searchCondition = $("#searchCondition")
										.val();
								var searchValue = $("#searchValue").val();

								location.href = "csearch.do?searchCondition="
										+ searchCondition + "&searchValue="
										+ searchValue;
							}
							
							$('.btn-example').click(function(){
						        var $href = $(this).attr('href');
						        layer_popup($href);
						    });
						    function layer_popup(el){

						        var $el = $(el);
						        var isDim = $el.prev().hasClass('dimBg');

						        isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

						        var $elWidth = ~~($el.outerWidth()),
						            $elHeight = ~~($el.outerHeight()),
						            docWidth = $(document).width(),
						            docHeight = $(document).height();

						        // 화면의 중앙에 띄우기
						        if ($elHeight < docHeight || $elWidth < docWidth) {
						            $el.css({
						                marginTop: -$elHeight /2,
						                marginLeft: -$elWidth/2
						            })
						        } else {
						            $el.css({top: 0, left: 0});
						        }

						        $el.find('a.btn-layerClose').click(function(){
						            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
						            return false;
						        });

						        $('.layer .dimBg').click(function(){
						            $('.dim-layer').fadeOut();
						            return false;
						        });

						    }
						</script>

					</div>
				</div>
			</div>
		</div>

	</div>

	</div>
	</div>


</body>
</html>