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
												<c:url var="goMsg" value="masterMessageForm.do">
													<c:param name="maName" value="${ loginMaster.maName }"/>
												</c:url>
												<c:url var="goSended" value="masterSendedForm.do">
													<c:param name="maName" value="${ loginMaster.maName }"/>
												</c:url>
												<c:url var="goTrash" value="masterTrashForm.do">
													<c:param name="maName" value="${ loginMaster.maName }"/>
												</c:url>
												<a href="${ goMsg }" id="msgMenu"><i class="mdi mdi-package-down"></i> 받은 메세지</a>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6">
											<div class="widget-inline-box text-center" id="sendedMsg">
												<a href="${ goSended }" id="msgMenu"><i class="mdi mdi-package-up"></i> 보낸 메세지</a>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6">
											<div class="widget-inline-box text-center" id="trashMsg">
												<a href="${ goLocker }" id="msgMenuSelected"><i class="mdi mdi-star"></i> 보관함</a>
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
                                    <div class="etcBtn">
	                                    <label id="titleLabel">보관함</label>
	                                    <div class="btnBtn">

	                                    </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-hover mails m-0 table table-actions-bar">
                                            <thead>
                                                <tr>
                                                    <th style="min-width: 95px;">
													보낸/받는 사람
                                                    </th>
                                                    <th>내용</th>
                                                    <th>날짜</th>
                                                    <th>유형</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                               <c:forEach var="me" items="${ meList }">
												<tr>
													<td id="msgWriter">
														${ me.meWriter }/${ me.meReceiver }
													</td>
													<c:url var="meLockDetail" value="meLockDetail.do">
														<c:param name="meCode" value="${ me.meCode }"/>
													</c:url>
													<td id="msgContent">
														<a href="${ meLockDetail }" class="text-muted">${ me.meContent }</a>
													</td>
													
													<td id="msgDate">
														<a href="#" class="text-dark">
															<fmt:formatDate value="${ me.meWriteDate }" pattern="yy-MM-dd [HH:mm]"/>
														</a>
													</td>
													
													<td id="msgStatus">
														${ me.meStatus }
													</td>
												</tr>											
											</c:forEach>
                                            </tbody>
                                            
                                            
                                            <!-- 페이징 처리 -->
											 <c:if test="${ keyword == null }">
											<tr align="center" height="20" id="pageTable">
												<td colspan="6">
													<!-- [이전] -->
													<c:if test="${ pi.currentPage <= 1 }">
														[이전] &nbsp;
													</c:if>
													<c:if test="${ pi.currentPage > 1 }">
														<c:url var="before" value="masterLockerForm.do">
															<c:param name="page"  value="${ pi.currentPage  -1 }"/>
															<c:param name="maName" value="${ loginMaster.maName }"/> 
														</c:url>
														<a href="${ before }" class="pageA">[이전]</a>
													</c:if>
													
													
													<!-- [페이지] -->
													<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
														<c:if test="${ p eq pi.currentPage }">
															<font color="black" size="3">[${ p }]</font>
														</c:if>
														<c:if test="${ p ne pi.currentPage }">
															<c:url var="pagination" value="masterLockerForm.do">
																<c:param name="page" value="${ p }"/>
																<c:param name="maName" value="${ loginMaster.maName }"/> 
															</c:url>
															<a href="${ pagination }" class="pageA">[${ p }]</a>
														</c:if>
													</c:forEach>
													
													
													<!-- [다음] -->
													<c:if test="${ pi.currentPage >= pi.maxPage }">
														[다음]
													</c:if>
													<c:if test="${ pi.currentPage < pi.maxPage }">
														<c:url var="after" value="masterLockerForm.do">
															<c:param name="page" value="${ pi.currentPage + 1 }"/>
															<c:param name="maName" value="${ loginMaster.maName }"/> 
														</c:url>
														<a href="${ after }" class="pageA">[다음]</a>
													</c:if>
												</td>
											</tr>
											</c:if>
											
											 <c:if test="${ keyword != null }">
											<tr align="center" height="20" id="pageTable">
												<td colspan="6">
													<!-- [이전] -->
													<c:if test="${ pi.currentPage <= 1 }">
														[이전] &nbsp;
													</c:if>
													<c:if test="${ pi.currentPage > 1 }">
														<c:url var="before" value="messageLockerSearch.do">
															<c:param name="page"  value="${ pi.currentPage  -1 }"/>
															<c:param name="maName" value="${ loginMaster.maName }"/> 
															<c:param name="category" value="${ category }"/>
															<c:param name="keyword" value="${ keyword }"/>
														</c:url>
														<a href="${ before }" class="pageA">[이전]</a>
													</c:if>
													
													
													<!-- [페이지] -->
													<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
														<c:if test="${ p eq pi.currentPage }">
															<font color="black" size="3">[${ p }]</font>
														</c:if>
														<c:if test="${ p ne pi.currentPage }">
															<c:url var="pagination" value="messageLockerSearch.do">
																<c:param name="page" value="${ p }"/>
																<c:param name="maName" value="${ loginMaster.maName }"/> 
																<c:param name="category" value="${ category }"/>
																<c:param name="keyword" value="${ keyword }"/>
															</c:url>
															<a href="${ pagination }" class="pageA">[${ p }]</a>
														</c:if>
													</c:forEach>
													
													
													<!-- [다음] -->
													<c:if test="${ pi.currentPage >= pi.maxPage }">
														[다음]
													</c:if>
													<c:if test="${ pi.currentPage < pi.maxPage }">
														<c:url var="after" value="messageLockerSearch.do">
															<c:param name="page" value="${ pi.currentPage + 1 }"/>
															<c:param name="maName" value="${ loginMaster.maName }"/> 
															<c:param name="category" value="${ category }"/>
															<c:param name="keyword" value="${ keyword }"/>
														</c:url>
														<a href="${ after }" class="pageA">[다음]</a>
													</c:if>
												</td>
											</tr>
											</c:if>
											 
                                        </table>
                                        
                                        <br>
                                        
                                        <form action="messageLockerSearch.do" method="GET">
                                        <div class="col-sm-7 col-sm-offset-3" id="allSearchArea">
                                        <div class="col-sm-2" id="searchArea">
                                        <input type="hidden" name="maName" value="${ loginMaster.maName }">
                                        <select class="form-control">
                                            <option value="writer">작성자</option>
                                            <option value="content">내용</option>
                                         </select>
                                         </div>
                                         <div class="col-sm-7" id="searchArea">
                                         <input type="text" class="form-control" placeholder="검색어를 입력하세요." name="keyword">
                                         </div>
                                         <div class="col-sm-2" id="searchArea">
                                         <button class="btn btn-primary waves-effect waves-light" type="submit">검색</button>
                                         </div>
                                         </div>
                                         </form>
                                    </div>
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