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
		<h3 class="modal-title" id="myLargeModalLabel">인수인계 내역 작성</h3>
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	</div>
	
	<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			
			<form class="form-horizontal" role="form" action="tainsert.do">
                <div class="form-group" hidden="">
                <label class="col-md-3 col-form-label">아파트 코드</label>
                	<div class="col-md-9">
                    	<input type="text" class="form-control" value="${loginUser.apCode}" name="apCode" readonly="readonly">
                    </div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">작성자</label>
                	<div class="col-md-9">
                 		<input type="text" class="form-control" value="${loginUser.aName}" name="taWriter" placeholder="이름" readonly="readonly">
                    </div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">내용</label>
					<div class="col-md-9">
                		<textarea class="form-control" rows="5" name="taContent"></textarea>
                	</div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">글 비밀번호</label>
                	<div class="col-md-9">
                		<input type="password" class="form-control" name="taPwd" placeholder="비밀번호를 입력해주세요">
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
	
<!--  Modal content for the above example -->
<div class="modal fade bs-example-modal-lg modifyModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">

	<div class="modal-dialog modal-lg">
	
	<div class="modal-content modal-width">
	
	<div class="modal-header">
		<h3 class="modal-title" id="myLargeModalLabel">게시글 수정용</h3>
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	</div>
	
	<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			
			<form class="form-horizontal" role="form" id="modifyAndDeleteForm">
				<div class="form-group" hidden="">
                <label class="col-md-3 col-form-label">숨겨진 요소</label>
                	<div class="col-md-9">
                    	<input type="text" class="form-control" value="" readonly="readonly" id="takingOverId" name="taCode">
                    	<input type="text" class="form-control" value="" readonly="readonly" id="apartCode" name="apCode">
                   		<input type="text" class="form-control" value="" readonly="readonly" id="userName" name="taWriter">
                    </div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">내용</label>
					<div class="col-md-9">
                		<textarea class="form-control" rows="5" id="takingOverTextarea" name="taContent"></textarea>
                	</div>
                </div>
                <div class="form-group">
                <label class="col-md-3 col-form-label">글 비밀번호</label>
                	<div class="col-md-9">
                		<input type="password" class="form-control" id="userPwd" name="taPwd">
                	</div>
               	</div>
                
	<div class="modal-footer">
 				<div class="form-group">
               		<div class="col-md-12 text-right">
                    	<button type="button" class="btn btn-primary waves-effect" onclick="changeForm(1)">수정</button>
                    	<button type="button" class="btn btn-danger waves-effect" onclick="changeForm(2)">삭제</button>
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
<!-- modify Form(modal) End -->
			
			
			
			
			
			
			
<!-- pwdchk(modal) Start -->
<div class="innerPwdchkModal">

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog modal-sm">
	<div class="modal-content modal-width">
    
    <div class="modal-header">
    	<h5 class="modal-title" id="mySmallModalLabel">글 비밀번호 입력</h5>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    </div>
                                                        
   	<div class="modal-body">
    <label class="col-form-label">비밀번호 확인</label>
    	<div hidden="">
    		<input type="password" class="form-control" placeholder="글 비밀번호를 입력하세요" id="checkPwd">
    	</div>
    		<input type="password" class="form-control" placeholder="글 비밀번호를 입력하세요" id="inputPwd">
    </div>
        	
    <div class="modal-footer">
    	<button type="button" class="btn btn-primary waves-effect" onclick="pwdChk();">확인</button>
    	<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal" id="close">Close</button>       
    </div>
        
    </div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>
<!-- pwdchk(modal) End -->

<!-----------------------------------  Modal End ------------------------------------------->

<!----------------------------------- Content Start ---------------------------------------->
		<div class="row">
			<div class="col-sm-12">
				<div class="card-box">
				<h2 class="m-t-0">인수인계 사항</h2>
				<p class="text-muted">경비실 인수인계 사항에 대한 게시판입니다.</p>
				
					<div class="table-responsive">
						<table class="table table-hover mails m-0 table table-actions-bar">
						<thead>
						<tr>
							<th class="tt" hidden="">글번호</th>
							<th class="thh" hidden="">아파트 코드</th>
							<th class="thh">작성자</th>
							<th class="thh">내용</th>
							<th class="thh">작성일자</th>
							<th class="thh">수정일자</th>
							<th class="thh" hidden="">비밀번호</th>
						</tr>
						</thead>
					<c:forEach var="ta" items="${list}">
						<tr data-toggle="modal" data-target=".bs-example-modal-sm">
							<th class="tt" hidden="">${ta.taCode}</th>
							<td class="tdd" hidden="">${ta.apCode}</td>
							<td class="tdd">${ta.taWriter}</td>
							<td class="tdd">${ta.taContent}</td>
							<td class="tdd">
							<fmt:formatDate value="${ta.taCreateDate}" pattern="yyyy.MM.dd" />
							</td>
							<td class="tdd">
							<fmt:formatDate value="${ta.taModifyDate}" pattern="yyyy.MM.dd" />
							</td>
							<td class="tdd" hidden="">${ta.taPwd}</td>
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
													value="praTakingOver.do">
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
												<c:url var="pagination" value="praTakingOver.do">
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
											<c:url var="after" value="praTakingOver.do">
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
	
<script>

//글 수정 JQuery
$(".tdd").click(function() {
	
	console.log("tr 클릭 체크")
	
	var str = ""
	var tdArr = new Array();	// 배열 선언
    var clickTr = $(this);

    var tr = clickTr.parent();
    var td = tr.children();
	
	console.log("클릭한 Row의 모든 데이터 : "+tr.text());
	
	var no = td.eq(0).text();
	var apCode = td.eq(1).text();
	var name = td.eq(2).text();
	var content = td.eq(3).text();
	var pwd = td.eq(6).text();
	
    document.getElementById("takingOverId").value = no;
    document.getElementById("apartCode").value = apCode;
    document.getElementById("userName").value = name;
    document.getElementById("takingOverTextarea").value = content;
    document.getElementById("userPwd").value = pwd;
    
    //비밀번호 체크용
    document.getElementById("checkPwd").value = pwd;
	
});

//글 수정/삭제 폼 변경 스크립트

function changeForm(index) {
	
	if(index == 1) {
		document.getElementById("modifyAndDeleteForm").action='taupdate.do';
	} else {
		document.getElementById("modifyAndDeleteForm").action='tadelete.do';
	}
	document.getElementById("modifyAndDeleteForm").submit();
}


</script>
	



<!-- praBoard common js/JQuery -->
<script src="resources/Practitioners/js/PraFormatJs.js?after"></script>
<script src="resources/Practitioners/js/PraFormatJquery.js?after"></script>
	
</body>
</html>