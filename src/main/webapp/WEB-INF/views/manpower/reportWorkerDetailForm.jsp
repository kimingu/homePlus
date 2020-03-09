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
				width:25%;
			}
		</style>
    </head>


    <body>
    	<c:if test="${!empty msg }">
    		<script>
    			alert("${msg}");
    		</script>
    		<c:remove var="msg"/>
    	</c:if>
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
										data-plugin="counterup">${count.contracta}</b>
								</h3>
								<p class="text-muted">인력 신고 총수</p>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6" id="one">
							<div class="widget-inline-box text-center">
								<h3 class="m-t-10">
									<i class="text-custom mdi mdi-airplay"></i> <b
										data-plugin="counterup">${count.contractb}</b>
								</h3>
								<p class="text-muted">처리전</p>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6" id="one">
							<div class="widget-inline-box text-center">
								<h3 class="m-t-10">
									<i class="text-info mdi mdi-black-mesa"></i> <b
										data-plugin="counterup">${count.contractc}</b>
								</h3>
								<p class="text-muted">처리중</p>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6" id="one">
							<div class="widget-inline-box text-center b-0">
								<h3 class="m-t-10">
									<i class="text-danger mdi mdi-cellphone-link"></i> <b
										data-plugin="counterup">${count.contractd}</b>
								</h3>
								<p class="text-muted">처리완료</p>
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
						<h4 class="m-t-0">인력신고 상세보기</h4>
						<br>
						<div class="table-responsive">
							<table class="table table-hover mails m-0 table table-actions-bar"
								style="width:100%; margin:auto;">
								
								<tbody>
										<tr>
											<td align="center">처리번호</td>
											<td align="center">${bib.bbCode}</td>
											<td align="center">근무장소</td>
											<td align="center">${bib.bbDcategory}</td>
										</tr>
										<tr>
											<td align="center">제목</td>
											<td align="center">${bib.bbTitle}</td>
											<td align="center">내용</td>
											<td align="center">${bib.bbContent}</td>
										</tr>
										<tr>
											<td align="center">처리상태</td>
											<c:choose>
												<c:when test="${bib.bbStatus eq 'N'.charAt(0) }">
													<td align="center">처리전</td>
												</c:when>
												<c:when test="${bib.bbStatus eq 'L'.charAt(0) }">
													<td align="center">처리중</td>
												</c:when>
												<c:otherwise>
													<td align="center">처리완료</td>
												</c:otherwise>
											</c:choose>
											<td align="center">-</td>
											<td align="center">-</td>
										</tr>

								</tbody>
							</table>
							<br>

							<c:url var="rwlist" value="rwlist.do">
								<c:param name="page" value="${currentPage }" />
							</c:url>
							<div class="form-group text-right m-b-0">
								<button class="btn btn-primary waves-effect waves-light" onclick="location.href='rwupdate0.do?bbCode=${bib.bbCode}'">처리전</button>
								<button class="btn btn-primary waves-effect waves-light" onclick="location.href='rwupdate1.do?bbCode=${bib.bbCode}'">처리중</button>
								<button class="btn btn-primary waves-effect waves-light" onclick="location.href='rwupdate2.do?bbCode=${bib.bbCode}'">처리완료</button>
								<button class="btn btn-default waves-effect m-l-5" onclick="location.href='${rwlist}'">목록으로</button>
							</div>
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