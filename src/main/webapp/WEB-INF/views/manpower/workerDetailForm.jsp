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
    		#one {
				width:25%;
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
											data-plugin="counterup">${count.contracta}</b>
									</h3>
									<p class="text-muted">경비</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6" id="one">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-custom mdi mdi-airplay"></i> <b
											data-plugin="counterup">${count.contractb}</b>
									</h3>
									<p class="text-muted">미화</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6" id="one">
								<div class="widget-inline-box text-center">
									<h3 class="m-t-10">
										<i class="text-info mdi mdi-black-mesa"></i> <b
											data-plugin="counterup">${count.contractc}</b>
									</h3>
									<p class="text-muted">시설</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6" id="one">
								<div class="widget-inline-box text-center b-0">
									<h3 class="m-t-10">
										<i class="text-danger mdi mdi-cellphone-link"></i> <b
											data-plugin="counterup">${count.contractd}</b>
									</h3>
									<p class="text-muted">편의시설 및 기타</p>
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
						<h4 class="m-t-0">근무자 상세보기</h4>
						<br>
						<div class="table-responsive">
							<table class="table table-hover mails m-0 table table-actions-bar"
								style="width:100%; margin:auto;">
								

								<tbody>
									<tr>
										<td align="center">이름</td>
										<td align="center">${admin.aName}</td>
										<td align="center">근무자 아이디</td>
										<td align="center">${admin.aId}</td>
									</tr>
									<tr>
										<td align="center">소속업체 이름</td>
										<td align="center">${admin.comName}</td>
										<td align="center">근무 시작일</td>
										<fmt:formatDate var="date2" value="${admin.aEnrollDate}" type="DATE" pattern="yyyy-MM-dd"/>
										<td align="center">${date2}</td>
										<%-- <td align="center">${admin.aEnrollDate }</td> --%> <!-- Wed Jan 01 00:00:00 KST 2020  이렇게 뜨는 이유는 vo에서 date를 sql이 아닌 util로 import해서 -->
									</tr>
									<tr>
										<td align="center">구분</td>
										<td align="center">${admin.aDepartment}</td>
										<td align="center">주소</td>
										<td align="center">${admin.aAddress}</td>
									</tr>
									<tr>
										<td align="center">연락처</td>
										<td align="center">${admin.aPhone}</td>
										<td align="center">이메일</td>
										<td align="center">${admin.aEmail}</td>
									</tr>										
								</tbody>
							</table>
							<br>
							<c:url var="wlist" value="wlist.do">
								<c:param name="page" value="${currentPage }" />
							</c:url>
							<div class="form-group text-right m-b-0">
								<button class="btn btn-default waves-effect m-l-5" onclick="location.href='${wlist}'">목록으로</button>
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