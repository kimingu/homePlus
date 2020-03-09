<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<style type="text/css">




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
		<div class="modal-content">
           
        <div class="modal-header">
            <h3 class="modal-title" id="myLargeModalLabel">순찰지역 작성</h3>
        	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        </div>
                               
        <div class="modal-body">
        <div class="row">
        	<div class="col-md-12">
			
				<form class="form-horizontal" role="form" action="pminsert.do" method="POST" enctype="multipart/form-data">
                   	<div class="form-group" hidden="">
                	<label class="col-md-3 col-form-label">아파트 코드</label>
                		<div class="col-md-9">
                    		<input type="text" class="form-control" name="apCode" value="${loginUser.apCode}" readonly="readonly">
                    	</div>
                	</div>
                    <div class="form-group">
                    <label class="col-md-3 col-form-label">순찰지역 이름</label>
                    	<div class="col-md-9">
                    		<input type="text" class="form-control" name="pmPlace" placeholder="순찰지역 이름">
                        </div>
                   	</div>
                    <div class="form-group">
                    <label class="col-md-3 col-form-label">내용 혹은 비고</label>
						<div class="col-md-9">
                        	<textarea class="form-control" rows="5" name="pmEtc"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                    <label class="col-md-3 col-form-label">순찰지역 사진 추가</label>
                    	<div class="col-md-9">
                    		<input type="file" class="form-control" name="pmFile"> 
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
	<div class="innerInsertModal">
	
	<!--  Modal content for the above example -->
    <div class="modal fade bs-example-modal-lg modifyModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                        
    <div class="modal-dialog modal-lg">
		<div class="modal-content">
           
        <div class="modal-header">
            <h3 class="modal-title" id="myLargeModalLabel">순찰지역 수정</h3>
        	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        </div>
                               
        <div class="modal-body">
        <div class="row">
        	<div class="col-md-12">
			
				<form class="form-horizontal" role="form" action="#">
                	<div class="form-group" >
                    <label class="col-md-3 col-form-label">숨겨진 요소</label>
                    	<div class="col-md-9">
                        	<input type="text" class="form-control" value="" readonly="readonly" name="pmCode" id="pmCode">
                        	<input type="text" class="form-control" value="" readonly="readonly" name="apCode" id="apCode">
                        </div>
                    </div>
                    <div class="form-group">
                    <label class="col-md-3 col-form-label">순찰지역 이름</label>
                    	<div class="col-md-9">
                    		<input type="text" class="form-control" value="" name="pmPlace" id="pmPlace">
                        </div>
                   	</div>
                    <div class="form-group">
                    <label class="col-md-3 col-form-label">내용 혹은 비고</label>
						<div class="col-md-9">
                        	<textarea class="form-control" rows="5" cols="10" name="pmEtc" id="pmEtc"></textarea>
                        </div>
                    </div>
                     <div class="form-group">
                    <label class="col-md-3 col-form-label">순찰지역 사진 추가</label>
                    	<div class="col-md-9">
                    		<input type="file" class="form-control" name="pmFile"> 
                        </div>
                	</div>
              
		<div class="modal-footer">
			<div class="form-group">
 				<div class="col-md-12 text-right">
					<input type="submit" value="작성" class="btn btn secondary">
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
	<div class="innerModifyModal">
	
	<div id="mm" class="modal fade bs-example-modal-sm mm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog modal-sm">
			<div class="modal-content modal-width">
    
    			<div class="modal-header">
    				<h5 class="modal-title" id="mySmallModalLabel">글 비밀번호 입력</h5>
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    			</div>
                                                        
   			<div class="modal-body">
    			<label class="col-form-label">히든 글번호</label>
    			<div>
    				<input type="text" class="form-control" placeholder="글 비밀번호를 입력하세요" id="mPmCode">
    			</div>
    				<input type="text" class="form-control" placeholder="글 비밀번호를 입력하세요" id="inputPwd">
    			</div>
        	
    <div class="modal-footer">
    	<button type="button" class="btn btn-secondary waves-effect" onclick="mmgo(mPmCode.value)">확인</button>
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
			
			
			<%-- <div>
				<table>
				<c:forEach var="pm" items="${list}">
				<tr class="tr" data-toggle="modal" data-target=".modifyModal">
					<td class="tdd"><input type="text" value="${pm.pmCode}" class="tcd">${pm.pmCode}</td>
					<td class="tdd">${pm.apCode}</td>
					<td class="tdd">${contextPath}resources/Practitioners/pmImg/${pm.pmFileName}</td>
					<td class="tdd">${pm.pmPlace}</td>
					<td class="tdd">${pm.pmEtc}</td>
				</tr>
				</c:forEach>
				</table>
			</div> --%>
			
			
			
				<div class="card-box">
				<h2 class="m-t-0">순찰 지역 알람</h2>
				<p class="text-muted">순찰지역에대한 정보입니다.</p>
				<br>
				
				<div class="text-center">
					<c:forEach var="pm" items="${list}">
					<div class="card-box inner-card-box">
						<%-- <div>
							<input type="text" value="${pm.pmCode}" class="pm1">
							<input type="text" value="${pm.apCode}" class="pm2">
							<input type="text" value="${pm.pmPlace}" class="pm3">
							<input type="text" value="${pm.pmEtc}" class="pm4">
						</div> --%>
						
					
                		<div class="text-center patrolHeadBorder">
                    		<img src="${contextPath}/resources/Practitioners/pmImg/${pm.pmFileName}" class="img-thumbnail" alt="이미지가 존재하지 않습니다"  style="height:240px;width:330px">
                   			<h4 class="m-b-5 mt-2">${pm.pmPlace}</h4>
                    	</div>
                    	
                    
                    	<p class="text-muted line-h-24 text-left">
                   		${pm.pmEtc}
                   		</p>

                    	<div class="row text-center m-t-30 patrolBtnBorder">
                    		<div class="col-6 btnPo">
                    			<form action="pmdelete.do" method="POST" enctype="multipart/form-data">
                    				<input hidden="" type="text" value="${pm.pmCode}" name="pmCode" class="pm1">
                        			<button type="submit" class="btn btn-danger btn-md">삭제</button>
                        		</form>
                        	</div>
                      	
                      		<div class="col-6 btnPo">
                        		<%-- <button type="button" class="btn btn-success btn-md" onclick="modifyModal(${pm.pmCode});">수정</button> --%>
                      		</div>
                       	</div>
				
					</div>
					</c:forEach>
					
				<hr>
				
				<div class="text-right">
				<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target=".insertModal" >순찰지역 작성</button>
				<!-- <button id="btn-modify" type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target=".modifyModal">순찰지역 수정</button> -->
				</div>
				
				</div>
				</div>
			</div>
		</div>
<!----------------------------------- Content End ---------------------------------------->
		</div>	
	</div>
	
	
<script type="text/javascript">

function modifyModal(index) {
	
	var ind = index;
	var pm1 = $(".pm1").val();
	var pm2 = $(".pm2").val();
	var pm3 = $(".pm3").val();
	var pm4 = $(".pm4").val();
	
	console.log(ind);
	console.log(pm1);
	console.log(pm2);
	console.log(pm3);
	console.log(pm4);
	
	
	
	if(pm1 == ind) {
				
		console.log(pm1);
		console.log(pm2);
		console.log(pm3);
		console.log(pm4);
		/* 
				document.getElementById("pmCode").value = pm1;
	   			document.getElementById("apCode").value = pm2;
	    		document.getElementById("pmPlace").value = pm3;
	    		document.getElementById("pmEtc").value = pm4;
	
				document.getElementById("btn-modify").click(); */
		}	
	}
	



//글 수정 JQuery

/* td.eq(0).text(); 과 index가 동일할때 발동 */

$(".tdd").click(function() {
	
	console.log("tr 클릭 체크")
	
	var str = ""
	var trArr = new Array();	// 배열 선언
    var clickTr = $(this);

    var tr = clickTr.parent();
    var td = tr.children();
	
	console.log("클릭한 Row의 모든 데이터 : "+tr.text());

	var no = td.eq(0).text();
	var apCode = td.eq(1).text();
	var fileName = td.eq(2).text();
	var place = td.eq(3).text();
	var etc = td.eq(4).text();
	
	var ta = document.getElementById('pmEtc');
	
	document.getElementById("pmCode").value = no;
    document.getElementById("apCode").value = apCode;
    
    document.getElementById("pmPlace").value = place;
    document.getElementById("pmEtc").value = etc;
    
    
   
	
});






</script>


<!-- praBoard common js/JQuery -->
<script src="resources/Practitioners/js/PraFormatJs.js?after"></script>
<script src="resources/Practitioners/js/PraFormatJquery.js?after"></script>
	
</body>
</html>