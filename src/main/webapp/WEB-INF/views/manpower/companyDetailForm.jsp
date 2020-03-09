<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>홈플러스 | HOMEPLUS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
		<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="resources/administrator/plugins/morris/morris.css">

        <!-- Bootstrap core CSS -->
        <link href="resources/administrator/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/administrator/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="resources/administrator/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/administrator/css/style.css" rel="stylesheet">
		<style>
			#menuColor{
				background:white;
				border-bottom:5px solid #F5F5F5;
			}
			#logoImage{
				padding-left:20px;
			}
			.sidebar-navigation{
				margin-top:5px;

			}
			#page-wrapper{
				width:100%;
			}
			#search{
				color:black;
				border:2px solid #F5F5F5;
			}
			
			.table tr th{
				text-align:center !important;
			}
			
			.pagenation {
				margin-left:30%;
			}
			
			.table td:nth-child(odd) {
    			background:lightgray;
				width: 20%;
				font-weight:bolder;
				font-size:14px;
    			border: none; 
    			border-left: 3px solid black;
    			border-bottom: 2px solid #DDD;
    		}
    		
    		.table {
    			margin-left:30%;    			
    		}
    		
    		#one {
				width:33.3%;
			}
		</style>
    </head>


    <body>
    	<jsp:include page="../common/0menubar.jsp"/>
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
								<p class="text-muted">계약종료</p>
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
						<h4 class="m-t-0">업체 상세보기</h4>
						<br>
						<div class="table-responsive">
							<table class="table table-hover mails m-0 table table-actions-bar"
								style="width:100%; margin:auto;">
								
								<tbody>
										<tr>
											<td align="center">업체 코드</td>
											<td align="center">${company.comCode}</td>
											<td align="center">업체 구분</td>
											<td align="center">${company.comDivision}</td>
										</tr>
										<tr>
											<td align="center">업체 이름</td>
											<td align="center">${company.comName}</td>
											<td align="center">대표</td>
											<td align="center">${company.comCeo}</td>
										</tr>
										<tr>
											<td align="center">계약 시작일</td>
											<td align="center">${company.comStartDate}</td>
											<td align="center">계약 만료일</td>
											<td align="center">${company.comEndDate}</td>
										</tr>
										<tr>
											<td align="center">설립일</td>
											<td align="center">${company.comEsDate}</td>
											<td align="center">회사규모</td>
											<td align="center">${company.comScale}</td>
										</tr>
										<tr>
											<td align="center">근로자수</td>
											<td align="center">${company.comNw}</td>
											<td align="center">자본금</td>
											<td align="center"><fmt:formatNumber type="number" maxFractionDigits="3" value="${company.comCapital}" /></td>
										</tr>
										<tr>
											<td align="center">주요사업</td>
											<td align="center">${company.comMajor}</td>
											<td align="center">연락처</td>
											<td align="center">${company.comTel}</td>
										</tr>
										<tr>
											<td align="center">월납입금</td>
											<td align="center"><fmt:formatNumber type="number" maxFractionDigits="3" value="${company.comPay}" /></td>
											<td align="center">계약 상태</td>
											<jsp:useBean id="now" class="java.util.Date" />
											<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate"/>
											<c:choose>
												<c:when test="${nowDate > company.comEndDate }">
													<td align="center">계약 종료</td>
												</c:when>
												<c:when test="${nowDate <= company.comEndDate }">
													<td align="center">계약중</td>
												</c:when>
											</c:choose>
										</tr>
								</tbody>
							</table>
							<br>
							<c:url var="cdelete" value="cdelete.do">
								<c:param name="comCode" value="${company.comCode}" />
							</c:url>
							<c:url var="clist" value="clist.do">
								<c:param name="page" value="${currentPage }" />
							</c:url>
							<div class="form-group text-right m-b-0">
								<button onclick="document.location.href='cupView.do?comCode=${company.comCode}'" class="btn btn-primary waves-effect waves-light" type="button">수정 하기</button>
								<button class="btn btn-primary waves-effect waves-light" onclick="location.href='${cdelete}'">삭제 하기</button>
								<button class="btn btn-default waves-effect m-l-5" onclick="location.href='${clist}'">목록으로</button>
							</div>
							<script type="text/javascript">
								function goBack(){
									window.history.back();
								}
							</script>
						</div>
						
						
					
					</div>
					</div>
				</div>
			</div>

			</div>
			
   		</div>
	</div>
	
   	
    </body>
</html>