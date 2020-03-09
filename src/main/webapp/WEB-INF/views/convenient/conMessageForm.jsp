<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon"
	href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<title>홈플러스 | HOMEPLUS</title>

<meta charset="UTF-8">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
#mainText {
	margin-left: 1%;
}

#changeButton {
	float: right;
}

#newImage {
	visibility: hidden;
}

#msgMenu {
	font-size: 16px;
	color: black;
}

#msgWriter {
	width: 10%;
}

#msgContent {
	width: 70%;
}

#msgDate {
	width: 10%;
}

#msgStatus {
	width: 5%;
}

#searchArea {
	float: left;
}

.allSearchArea {
	margin: auto;
}

.etcBtn {
	display: inline-block;
	width: 100%;
}

.btnBtn {
	display: inline-block;
	float: right;
}

#msgMenuSelected {
	font-size: 16px;
}

#titleLabel {
	margin-left: 10px;
}

#pageTable:hover {
	color: black;
	background-color: white;
}

.pageA {
	color: black;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/conmanager.jsp" />
	<div id="page-right-content">
		<div id="">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="card-box widget-inline">
							<div class="row" height="80px">
								<div class="col-lg-3 col-sm-6">
									<div class="widget-inline-box text-center" id="receivedMsg">
										<c:url var="goMsg" value="pMessageForm.do">
											<c:param name="aName" value="${ loginUser.aName }" />
										</c:url>
										<c:url var="goSended" value="pSendedForm.do">
											<c:param name="aName" value="${ loginUser.aName }" />
										</c:url>
										<c:url var="goLocker" value="pLockerForm.do">
											<c:param name="aName" value="${ loginUser.aName }" />
										</c:url>
										<a href="${ goMsg }" id="msgMenuSelected"><i
											class="mdi mdi-package-down"></i> 받은 메세지</a>
									</div>
								</div>

								<div class="col-lg-3 col-sm-6">
									<div class="widget-inline-box text-center" id="sendedMsg">
										<a href="${ goSended }" id="msgMenu"><i
											class="mdi mdi-package-up"></i> 보낸 메세지</a>
									</div>
								</div>

								<div class="col-lg-3 col-sm-6">
									<div class="widget-inline-box text-center" id="trashMsg">
										<a href="${ goLocker }" id="msgMenu"><i
											class="mdi mdi-star"></i> 보관함</a>
									</div>
								</div>

								<div class="col-lg-3 col-sm-6">
									<div class="widget-inline-box text-center b-0" id="writeMsg">
										<a href="pMsgSendForm.do" id="msgMenu"><i
											class="mdi mdi-pencil-box"></i> 메세지 작성</a>
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
									<label id="titleLabel">받은 메세지함</label>
									<div class="btnBtn"></div>
								</div>
								<div class="table-responsive">
									<table
										class="table table-hover mails m-0 table table-actions-bar">
										<thead>
											<tr>
												<th style="min-width: 95px;">보낸사람</th>
												<th>내용</th>
												<th>날짜</th>
												<th>읽음</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="me" items="${ meList }">
												<tr>
													<td id="msgWriter">${ me.meWriter }</td>
													<c:url var="meReceiveDetail" value="pReceiveDetail.do">
														<c:param name="meCode" value="${ me.meCode }" />
													</c:url>
													<td id="msgContent"><a href="${meReceiveDetail}"
														class="text-muted">${ me.meContent }</a></td>

													<td id="msgDate"><a href="#" class="text-dark"> <fmt:formatDate
																value="${ me.meWriteDate }" pattern="yy-MM-dd [HH:mm]" />
													</a></td>

													<td id="msgStatus">${ me.meStatus }</td>
												</tr>
											</c:forEach>
										</tbody>


										<!-- 페이징 처리 노 검색 -->
										<c:if test="${ keyword == null }">
											<div class="pagination pagination-split">
												<tr align="center" height="20" id="pageTable">
													<td colspan="6">
														<!-- [이전] --> <c:if test="${ pi.currentPage <= 1 }">
														[이전] &nbsp;
													</c:if> <c:if test="${ pi.currentPage > 1 }">
															<c:url var="before" value="pMessageForm.do">
																<c:param name="page" value="${ pi.currentPage  -1 }" />
																<c:param name="maName" value="${ loginUser.aName }" />
															</c:url>
															<a href="${ before }" class="pageA">[이전]</a>
														</c:if> <!-- [페이지] --> <c:forEach var="p"
															begin="${ pi.startPage }" end="${ pi.endPage }">
															<c:if test="${ p eq pi.currentPage }">
																<font color="black" size="3">[${ p }]</font>
															</c:if>
															<c:if test="${ p ne pi.currentPage }">
																<c:choose>
																	<c:when test="${p eq '0'}">
																	</c:when>
																	<c:otherwise>
																		<c:url var="pagination" value="pMessageForm.do">
																			<c:param name="page" value="${ p }" />
																			<c:param name="maName" value="${ loginUser.aName }" />
																		</c:url>
																		<a href="${ pagination }" class="pageA">[${ p }]</a>
																	</c:otherwise>
																</c:choose>
															</c:if>
														</c:forEach> <!-- [다음] --> <c:if
															test="${ pi.currentPage >= pi.maxPage }">
														[다음]
													</c:if> <c:if test="${ pi.currentPage < pi.maxPage }">
															<c:url var="after" value="pMessageForm.do">
																<c:param name="page" value="${ pi.currentPage + 1 }" />
																<c:param name="maName" value="${ loginUser.aName }" />
															</c:url>
															<a href="${ after }" class="pageA">[다음]</a>
														</c:if>
													</td>
												</tr>
											</div>
										</c:if>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
</body>
</html>