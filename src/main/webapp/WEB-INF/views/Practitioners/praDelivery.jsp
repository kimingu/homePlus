<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>

<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">

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


<!-----------------------------------  Modal Start ------------------------------------------->
		
<!-- insert Form(modal) Start -->
<div class="innerInsertModal">
	
<!--  Modal content for the above example -->
<div class="modal fade bs-example-modal-lg insertModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">

	<div class="modal-dialog modal-lg">
	
	<div class="modal-content modal-width">
	
	<div class="modal-header">
		<h3 class="modal-title" id="myLargeModalLabel">게시글 작성용</h3>
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	</div>
	
	<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			
			<form class="form-horizontal" role="form" action="dereceipt.do" method="get">
                <div class="form-group" hidden="">
                <label class="col-md-3 col-form-label">아파트 이름</label>
                	<div class="col-md-9">
                		<!-- 아파트 코드를 입력할 방법을  관리자 로그인 적용 후 고려 -->
                 		<input type="text" class="form-control" name="apName" value="${loginUser.apCode}">
                    </div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">작성자</label>
                	<div class="col-md-9">
                 		<input type="text" class="form-control" name="deWriter" value="${loginUser.aName}" readonly="readonly">
                    </div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">세대번호</label>
                	<div class="col-md-9">
                 		<input type="text" class="form-control" name="deHousehold" placeholder="xxx/xxxx 의 양식으로 입력해주세요">
                    </div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">수취인</label>
                	<div class="col-md-9">
                 		<input type="text" class="form-control" name="reciever" placeholder="수취인을 입력해주세요">
                    </div>
                </div>
	<div class="modal-footer">
 				<div class="form-group">
               		<div class="col-md-12 text-right">
                    	<input type="submit" value="작성" class="btn btn-primary">
                        <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">닫기</button>
                    </div>
               	</div>
    </div>

			</form>
		</div>
	</div>        	
	</div>
	
	</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->					
</div>
<!-- insert Form(modal) End -->


<!-- modify Form(modal) Start -->
<div class="innerModifyModal">


<div class="modal fade bs-example-modal-sm modifyModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog modal-sm">
	<div class="modal-content modal-width">
    
    <div class="modal-header">
    	<h5 class="modal-title" id="mySmallModalLabel">택배물 수령</h5>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    </div>
    
    <form class="form-horizontal" role="form" action="derecieve.do" method="get">                     
   	<div class="modal-body">
   	
    <label class="col-form-label">수령물 내역</label>
    
    	<div hidden=""><input type="text" class="form-control" name="deCode" value="" id="deCode"></div>
        <div hidden=""><input type="text" class="form-control" name="apName" value="" id="apName"></div>
        <input type="text" class="form-control" name="deWriter" value="" id="deWriter">
        <input type="text" class="form-control" name="deHousehold" value="" id="deHousehold">
       	<input type="text" class="form-control" name="reciever" value="" id="reciever">
       	<input type="text" class="form-control" name="deStatus" value="" id="deStatus">
    </div>

    <h4>수령체크를 하시겠습니까?</h4>   	
    <div class="modal-footer">
    	<button type="submit" class="btn btn-primary waves-effect">확인</button>
    	<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal" id="close">Close</button>       
    </div>
    
    </form>
    
        
    </div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

			
</div>
<!-- modify Form(modal) End -->
			
<!-----------------------------------  Modal End ------------------------------------------->

<!----------------------------------- Content Start ---------------------------------------->
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
				<h2 class="m-t-0">경비실 택배 현황</h2>
				<p class="text-muted">경비실 내 택배물 관리를 위한 게시판입니다</p>
				
					<div class="table-responsive">
						<table class="table table-hover mails m-0 table table-actions-bar">
						<thead>
						<tr>
							<th class="tt" hidden="">글번호(숨김)</th>
							<th class="thh" hidden="">아파트 코드(숨김)</th>
							<th class="thh">작성자</th>
							<th class="thh">세대번호</th>
							<th class="thh">수취인</th>
							<th class="thh">작성일자</th>
							<th class="thh">수령일자</th>
							<th class="thh">수령여부</th>
						</tr>
						</thead>
					<c:forEach var="de" items="${list}">
						<tr data-toggle="modal" data-target=".modifyModal">
							<th class="tt" hidden="">${de.deCode}</th>
							<td class="tdd" hidden="">${de.apName}</td>
							<td class="tdd">${de.deWriter}</td>
							<td class="tdd">${de.deHousehold}</td>
							<td class="tdd">${de.reciever}</td>
							<td class="tdd">
							<fmt:formatDate value="${de.deCreateDate}" pattern="yyyy.MM.dd" />
							</td>
							<td class="tdd">
							<fmt:formatDate value="${de.deRecieveDate}" pattern="yyyy.MM.dd" />
							</td>
							<td class="tdd">${de.deStatus}</td>
						</tr>
					</c:forEach>
						</table>
					</div>
						
<!----------------------------------- Content End ---------------------------------------->

<!--------------------------- Pagenation, insert, search Start --------------------------->
					<div class="row">
							<div class="col-sm-10 pagenation text-center">

								<div id="pagenation">
									<ul class="pagination pagination-split">

										<c:if test="${pi.currentPage <= 1 }">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"><span aria-hidden="true">&laquo;</span><span
													class="sr-only">Previous</span></a></li>

										</c:if>
										<c:if test="${pi.currentPage > 1 }">
											<li class="page-item"><c:url var="before"
													value="praDeliveryDb.do">
													<c:param name="page" value="${pi.currentPage -1}" />
												</c:url> <a class="page-link" href="${before}" aria-label="Previous">
													<span aria-hidden="true">&laquo;</span> <span
													class="sr-only">Previous</span>
											</a></li>

										</c:if>

										<c:forEach var="p" begin="${pi.startPage }"
											end="${pi.endPage }">
											<c:if test="${p eq pi.currentPage }">
												<li class="page-item active"><a class="page-link"
													href="#">${p}</a></li>
											</c:if>
											<c:if test="${p ne pi.currentPage }">
												<c:url var="pagination" value="praDeliveryDb.do">
													<c:param name="page" value="${p}" />
												</c:url>
												<li class="page-item"><a class="page-link"
													href="${pagination}">${p}</a></li>
											</c:if>

										</c:forEach>
										<c:if test="${pi.currentPage >= pi.maxPage}">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true">&raquo;</span><span
													class="sr-only">Next</span></a></li>
										</c:if>
										<c:if test="${pi.currentPage < pi.maxPage }">
											<c:url var="after" value="praDeliveryDb.do">
												<c:param name="page" value="${pi.currentPage + 1}" />
											</c:url>
											<li class="page-item"><a class="page-link"
												href="${after}" aria-label="Next"> <span
													aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
										</c:if>

									</ul>
								</div>

							</div>

							<div class="col-sm-2 text-right">
								<button type="button"
									class="btn btn-primary waves-effect waves-light"
									data-toggle="modal" data-target=".insertModal">글 작성</button>
							</div>
							<div hidden="">
								<button id="modify" type="button"
									class="btn btn-primary waves-effect waves-light"
									data-toggle="modal" data-target=".modifyModal">글 수정</button>
							</div>
						</div>
<!--------------------------- Pagenation, insert, search Start --------------------------->		 
				</div>
			</div>
		</div>
		
<!-- container End -->
		</div>	
	</div>
	

<script type="text/javascript">

//글 수정 JQuery
$(".tdd").click(function() {
	
	console.log("tr 클릭 체크")
	
	var str = ""
	var tdArr = new Array();	// 배열 선언
    var clickTr = $(this);

    var tr = clickTr.parent();
    var td = tr.children();
	
	console.log("클릭한 Row의 모든 데이터 : "+tr.text());
	
	var deCode = td.eq(0).text();
	var apName = td.eq(1).text();
	var deWriter = td.eq(2).text();
	var deHousehold = td.eq(3).text();
	var reciever = td.eq(4).text();
	var deStatus = td.eq(7).text();
	
	   if(deStatus == '수령'){
	          alert("이미 수령된 택배물입니다.");
	          location.reload();   
	      }
	
    document.getElementById("deCode").value = deCode;
    document.getElementById("apName").value = apName;
    document.getElementById("deWriter").value = deWriter;
    document.getElementById("deHousehold").value = deHousehold;
    document.getElementById("reciever").value = reciever;
    document.getElementById("deStatus").value = deStatus;
    
	
});

</script>

<!-- praBoard common js/JQuery -->
<script src="resources/Practitioners/js/PraFormatJs.js?after"></script>
<script src="resources/Practitioners/js/PraFormatJquery.js?after"></script>

	
</body>
</html>