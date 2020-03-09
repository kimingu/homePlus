<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 탭바 상단 홈플러스 아이콘 -->
<link rel=" shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<title>홈플러스 | HOMEPLUS</title>

<!-- praBoard common css -->
<link rel="stylesheet" href="resources/Practitioners/css/PraFormatCss.css?after">

<!-- JQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



<style>


</style>
</head>
<body>

<!-- memubar Start -->
<jsp:include page="../common/managerjob.jsp" />
<!-- memubar End-->

<div id="page-right-content">
		<div class="container">

<!----------------------------------- Content Start ---------------------------------------->		
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
				<h2 class="m-t-0">실무자 업무 메인</h2>
				<p class="text-muted">실무자 업무 주요 현황입니다.</p>
				<br>
				
				
				<!-- inner-container Start -->
				<div class="row outCom">
					<div class="col-md-6">
						<div class="card-box widget-inline" style="height: 295px !important">
						<div class="widget-inline-box text-center">
                        <h3 class="m-t-10">
                        <i class="text-primary mdi mdi-access-point-network"></i>
                        <b>출근</b>
                        </h3>
                        	
                        	<div class="row inCom">
                        		<div class="col-lg-6 inbtn">
                        			<form action="towork.do" method="POST">
                        			<button type="submit" class="btn btn-primary btn-lg">출근</button>
                        			<div hidden="">
                        			<input type="text" name="apName" value="${loginUser.apCode}"> 
                        			<input type="text" name="coWorker" value="${loginUser.aName}">
                        			</div>
                        			</form>
                        			<p class="text-muted">반드시 출근시에만<br>눌러주세요</p>
                        		</div>
                        		<div class="col-lg-6 inbtn">
                        			<form action="offwork.do" method="POST">
                        			<button type="submit" class="btn btn-primary btn-lg">퇴근</button>
                        			<div hidden="">
                        			<input type="text" name="apName" value="${loginUser.apCode}">
                        			<input type="text" name="coWorker" value="${loginUser.aName}">
                        			</div>
                        			</form>
                        			<p class="text-muted">반드시 퇴근시에만<br>눌러주세요</p>
                        		</div>
                        	</div>
                        	</div>
    
                        </div>
					</div>
					<div class="col-md-6">
						<div class="card-box widget-inline">
						<div class="widget-inline-box text-center">
                        <h3 class="m-t-10">
                        <i class="text-danger mdi mdi-cellphone-link"></i>
                        <b>근무자 리스트</b>
                        </h3>
                        	
                        	<div class="m-b-20">
							<table class="table m-0">
								<thead>
								<tr>
                           <th class="thh">근무자</th>
                           <th class="thh">부서</th>
                           <th class="thh">전화번호</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="a" items="${adlist}">
                        <tr>
                           <th class="thh" scope="row">${a.aName}</th>
                           <td class="tdd">${a.aDepartment}</td>
                           <td class="tdd">${a.aPhone}</td>
                        </tr>
								</c:forEach>
								</tbody>
							</table>
							</div>
                        
                        </div>
                        </div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="card-box widget-inline">
						<div class="widget-inline-box text-center">
                        <h3 class="m-t-10">
                        <i class="text-custom mdi mdi-airplay"></i>
                        <b>연가현황</b>
                        </h3>
                        	
                        	<div class="m-b-20">
							<table class="table m-0">
								<thead>
								<tr>
									<th class="thh">근무자</th>
									<th class="thh">연가종류</th>
									<th class="thh">내용</th>
									<th class="thh">시작일자</th>
									<th class="thh">종료일자</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="an" items="${anlist}">
								<tr>
									<th class="thh" scope="row">${an.anWriter}</th>
									<td class="tdd">${an.anName}</td>
									<td class="tdd">${an.anEtc}</td>
									<td class="tdd">${an.anStart}</td>
									<td class="tdd">${an.anEnd}</td>
								</tr>
								</c:forEach>
								</tbody>
							</table>
							</div>
                        
                        
                        </div>
                        </div>
					</div>
					<div class="col-md-6">
						<div class="card-box widget-inline">
						<div class="widget-inline-box text-center">
                        <h3 class="m-t-10">
                        <i class="text-custom mdi mdi-airplay"></i>
                        <b>인수인계사항</b>
                        </h3>
                        
                        	<div class="m-b-20">
							<table class="table m-0">
								<thead>
								<tr>
									<th class="thh">근무자</th>
									<th class="thh">내용</th>
									<th class="thh">작성일자</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="ta" items="${talist}">
								<tr>
									<th class="thh" scope="row">${ta.taWriter}</th>
									<td class="tdd">${ta.taContent}</td>
									<td class="tdd"><fmt:formatDate value="${ta.taCreateDate}" pattern="yyyy.MM.dd" /></td>
								</tr>
								</c:forEach>
								</tbody>
							</table>
							</div>
                        
                        
                        </div>
                        </div>
					</div>
				</div>	
				<!-- inner-container End -->	 
				
				</div>
			</div>
		</div>
<!----------------------------------- Content End ---------------------------------------->			
		</div>	
	</div>



</body>
</html>