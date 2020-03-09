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
		</style>
    </head>


    <body>
    	<jsp:include page="../common/0menubar.jsp"/>
		<div id="page-right-content">
			<br><br><br>
					<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h4 class="m-t-0">업체 상세보기</h4>
						<div class="table-responsive">
							<table class="table table-hover mails m-0 table table-actions-bar"
								style="width:100%; margin:auto;">
								
								<tbody>
										<tr>
											<td align="center">재무 코드</td>
											<td align="center">${expense.exCode}</td>
											<td align="center">업체 이름</td>
											<td align="center">${expense.comName}</td>
										</tr>
										<tr>
											<td align="center">입력 날짜</td>
											<td align="center">${expense.exDate}</td>
											<td align="center">내역</td>
											<td align="center">${expense.exExpend}</td>
										</tr>
										<tr>
											<td align="center">금액</td>
											<td align="center"><fmt:formatNumber type="number" maxFractionDigits="3" value="${expense.exPrice}" /></td>
											<td align="center">-</td>
											<td align="center">-</td>
										</tr>
										
								</tbody>
							</table>
							<br>
							<c:url var="edelete" value="edelete.do">
								<c:param name="exCode" value="${expense.exCode}" />
							</c:url>
							<c:url var="elist" value="elist.do">
								<c:param name="page" value="${currentPage}"/>
							</c:url>
							<div class="form-group text-right m-b-0">
								<button onclick="document.location.href='eupView.do?exCode=${expense.exCode}'" class="btn btn-primary waves-effect waves-light" type="button">수정 하기</button>
								<button class="btn btn-primary waves-effect waves-light" onclick="location.href='${edelete}'">삭제 하기</button>
								<button class="btn btn-default waves-effect m-l-5" onclick="location.href='${elist}'">목록으로</button>
							</div>
							<!-- <script type="text/javascript">
								function goBack(){
									window.history.back();
								}
							</script> -->
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