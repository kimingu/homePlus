<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<link rel=" shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
	<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
	<title>홈플러스 | HOMEPLUS</title>

<meta charset="UTF-8">
<script type="text/javascript"
   src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	#mainText{
		margin-left:1%;
	}
	#changeButton{
		float:right;
	}
	#newImage{
		visibility:hidden;
	}
	#msgMenu{
		font-size:16px;
		color:black;
	}
	#msgWriter{
		width:10%;
	}
	#msgContent{
		width:70%;
	}
	#msgDate{
		width:10%;
	}
	#msgStatus{
		width:5%;
	}
	#searchArea{
		float:left;
	}
	.allSearchArea{
		margin: auto;
	}
	.etcBtn{
		display:inline-block;
		width:100%;
	}
	.btnBtn{
		display:inline-block;
		float:right;
	}
	#msgMenuSelected{
		font-size:16px;
	}
	
	#titleLabel{
		margin-left:10px;
	}
	
	#pageTable:hover{
		color:black;
		background-color : white;
	}
	.pageA{
		color:black;
	}

	
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/managerjob.jsp" />
	<div id="page-right-content" class="masterContents">
	<div id="">
                    <div class="container">
                        
                  
						<div class="col-lg-13">
			                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                <!-- <form method="post" name="form"> -->
                                         <form method="POST" name="form">
                                         <input type="hidden" name="meWriter" value="${ loginUser.aName }">
                                         <input type="hidden" name="meReceiver" value="${ loginUser.aName }">
                                         <input type="hidden" value="${ message.meCode }" name="meCode">
                                    <div class="etcBtn">
	                                     <div class="form-group">
                                                <label class="col-md-2 control-label">받은 메시지함</label>
                                                <br><br>
                                                <div class="col-md-13">
                                                	<input type="hidden" value="${ message.meWriter }" name="forWho">
                                                    <input type="text" class="form-control" value="보낸사람 : ${ message.meWriter }" readonly>
                                                    <br>
                                                    <input type="text" class="form-control" value="전송시간 : <fmt:formatDate value='${ message.meWriteDate }' pattern='yyyy년 MM월 dd일 HH시 mm분'/>" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-13">
                                                    <textarea class="form-control" rows="20" style="resize:none" name="meContent" readonly>${ message.meContent }</textarea>
                                                </div>
                                            </div>
                                    </div>
                                    <br>
                                        
                                        <br>
                                         <div class="col-sm-8 col-sm-offset-4" id="sendBtn">
                                         <button class="btn btn-primary waves-effect waves-light" onclick="history.go(-1)" type="reset">돌아가기</button>
                                         <input type="submit" value="보관하기" onclick="javascript: form.action='pmessageLock.do';" class="btn btn-default waves-effect m-l-5"/>
                                         <input type="submit" value="삭제하기" onclick="javascript: form.action='pmessageDelete.do';" class="btn btn-default waves-effect m-l-5"/>
                                         </div>
                                         <br><br>
                                         </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
		</div>
</body>
</html>