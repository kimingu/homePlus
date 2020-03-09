<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
</style>
<script type="text/javascript">
        $(function() {
            $("#changeImage").on('change', function(){
                readURL(this);
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                    $('#newImage').attr('src', e.target.result);
                    $('#newImage').css("visibility","visible")
                }

              reader.readAsDataURL(input.files[0]);
            }
        }
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp"/>
	
	
	<div id="page-right-content" class="masterContents">
	<div id="">
                    <div class="container">
                        <div class="row">
							<div class="col-sm-12">
								<div class="card-box widget-inline">
									<div class="row" height="80px">
										<div class="col-lg-3 col-sm-6">
											<div class="widget-inline-box text-center" id="receivedMsg">
												<a href="masterMessageForm.do" id="msgMenuSelected"><i class="mdi mdi-package-down"></i> 받은 메세지</a>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6">
											<div class="widget-inline-box text-center" id="sendedMsg">
												<a href="masterReceiveForm.do" id="msgMenu"><i class="mdi mdi-package-up"></i> 보낸 메세지</a>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6">
											<div class="widget-inline-box text-center" id="trashMsg">
												<a href="masterTrashForm.do" id="msgMenu"><i class="mdi mdi-delete-forever"></i> 휴지통</a>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6">
											<div class="widget-inline-box text-center b-0" id="writeMsg">
												<a href="masterMsgSendForm.do" id="msgMenu"><i class="mdi mdi-pencil-box"></i> 메세지 작성</a>
											</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
                  
						<div class="col-lg-13">
			                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                         <form action="messageWrite.do" method="POST">
                                         <input type="hidden" name="meWriter" value="${ loginMaster.maName }">
                                    <div class="etcBtn">
	                                     <div class="form-group">
                                                <label class="col-md-2 control-label">메세지작성</label>
                                                <br><br>
                                                <div class="col-md-13">
                                                    <input type="text" class="form-control" placeholder="받는사람" name="meReceiver">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-13">
                                                    <textarea class="form-control" rows="20" placeholder="메세지 내용을 입력하세요." style="resize:none" name="meContent"></textarea>
                                                </div>
                                            </div>
                                    </div>
                                    <br>
                                        
                                        <br>
                                         <div class="col-sm-7 col-sm-offset-5" id="sendBtn">
                                         <button class="btn btn-default waves-effect m-l-5" onclick="history.go(-1)" type="reset">돌아가기</button>
                                         <button class="btn btn-primary waves-effect waves-light" type="submit">전송하기</button>
                                         
                                         </div>
                                            </form>
                                         <br><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
		</div>
	<jsp:include page="../common/masterFooter.jsp"/>
</body>
</html>