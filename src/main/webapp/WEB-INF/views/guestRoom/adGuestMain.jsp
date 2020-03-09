<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<link rel="shortcut icon"
	href="resources/administrator/images/favicon.ico">

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

#minhoo {
	background: white;
	padding-left: 25px;
	padding-right: 25px;
	/* width:1000px; */
	min-height: 1400px;
}
#headTitle {
	margin-top: 20px;
	text-align: left;
	padding-top: 10px;
	border-bottom: 1px solid #E2E2E2;
}

#title1 {
	font-size: 14px;
}

#title {
	font-size: 25px;
}
#m-total{
	margin-top:1%;
	width:100%;
	display:flex;
	background-color:#fff;
}
#map{
	border:1px solid #efefef;
	height:700px;
	background-color:#fff;
	border-radius:1em;
	
	/* background-image: url("resources/guestRoom/images/treefloor5.jpg"); */
	
}
.total-m {
	margin-top: 1%;
	display: flex;
	width: 100%;

}
#m-left {
	width: 1200px;
	border:1px solid #efefef;
	border-radius:1em;
}

#m-right {
	margin-left: 1%;
	width: 40%;
	border: 1px solid #efefef;
	border-radius:1em;
	
}

#search-resermember-title{
	color:#2b6cae;
	text-align:center;
}
#search-resermember-name{
	overflow: hidden;
      cursor: pointer;
      text-align: center;
      white-space: nowrap;
      color: #2b6cae;
      outline: none;
      border-radius: 0.5em;
      border: 1px solid #efefef;
      width:56%;
      height:50px;
      margin-left:20%;
}
input::placeholder {
  color: #2b6cae;
  
}
.on-off{
	color:#2b6cae;
}
h3{
font-weight: bold;
}
#reMemInfo{
	border:1px solid #efefef;
	text-align:center; 
	width:80%;
	margin:auto;
	display:none;
}
.x{
	display:none;
}



</style>
</head>


<body>

	<jsp:include page="../common/conmanager.jsp" />
	
	<div id="page-right-content">
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
					<div id="minhoo">
				<div id="headTitle">
					<h4>
						<a id="title">게스트 룸</a>
					</h4>
				</div>
				
				<div class="total-m">
					<div id="m-left">
						<div id="map">
							<div id="title-div">
								<h3 id="res-title">게스트룸 예약 취소</h3>
							</div>
							
					<div class="table-responsive">
						<table class="table table-hover mails m-0 table table-actions-bar">
							<thead>
								<tr>
									<th align="center">예약번호</th>
									<th align="center">방 번호</th>
									<th align="center">예약 날짜</th>
									<th align="center">예약자 이름</th>
									<th align="center">예약취소</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="ag" items="${list}">
									<tr >
										<td align="center" class="guerReCode">${ag.guerReCode}
											<input class="x" value="${ag.guerReCode}">
										</td>
										<td align="center">${ag.guerRoom}</td>
										<td align="center"><fmt:formatDate value="${ag.guerReDate}" pattern="yyyy년MM월dd일"/></td>
										<td align="center">${ag.mName}</td>
										<td align="center"><button onclick="cancelGR();">취소하기</button></td>
									</tr>
								</c:forEach>
								
							</tbody>
						</table>
					</div>
					<div id="pagenation">
						<ul class="pagination pagination-split">
							<c:if test="${searchValue eq null }">
								<c:set var="loc" value="adGuestRoom.do" />
							</c:if>
							<c:if test="${searchValue ne null }">
								<c:set var="loc" value="rccearch.do" />
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
								<c:url var="after" value="rclist.do">
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
							
							
							
							
					</div>
					
					
				</div>
				<div id="m-right">
				
						<h3 id="search-resermember-title">예약된 회원 정보 찾기</h3>
						<br>
							<input id="search-resermember-name" onkeyup="enterkey();" placeholder="이름을 입력해주세요">
							<br><br>
							<div id="reMemInfo">
							
							</div>
	
					</div>

			</div>
	
			</div>
		</div>

	</div>

	</div>
	</div>
	
	<script>
		function enterkey() {
			var mName = $("#search-resermember-name").val()
		
	        if (window.event.keyCode == 13) {
	        	
				if(mName.length <=0){
					alert("이름을 입력해주세요");
					$("#reMemInfo").attr('style','display:none');
					return false;
				}
	 			
	        	$.ajax({
					url:"adReGMember.do",
					data:{mName:mName},
					success:function(data){
						// if(data == "true"){	// 아이디를 사용할 수 있을 때
						if(data.list != null){
							$("#reMemInfo").attr('style','display:block');
							if(data.list.length>0){
							
								for(var i=0; i<data.list.length; i++){
									$("#reMemInfo").html("	<h4 style='color:#2b6cae;'> 방번호 :" + data.list[i].guerRoom + "</h4> <br>"+
										+"<h4 style='color:#2b6cae;'> 예약날짜 :" +data.list[i].guerReDate +"</h4>");
									
								}
							}else{
								alert("예약 좌석 명단에 없습니다.");
								$("#reMemInfo").attr('style','display:none');
							}
													
							
				
						}else{	// 아이디를 사용할 수 없을 때
						 	alert("예약 좌석 명단에 없습니다.");
						}
					},
					error:function(){
						console.log("ajax 통신 실패");
					}
				});
	        	
	            
	        }
	}
			
			function cancelGR(){
		var guerReCode = $(this).parent().children('input').val();

		console.log(guerReCode);
		
				
			}


			
		</script>


</body>
</html>