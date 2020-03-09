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
<style>
</style>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />

	<div id="page-right-content" class="masterContents">
		<div class="container">
		<br><br>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="p-0 text-center">
                                    <div class="member-card">
                                        <div class="thumb-xl member-thumb m-b-10 center-block">
                                            <img src="${ contextPath }/resources/administrator/images/member_man.png" class="img-circle img-thumbnail" alt="profile-image">
                                            <i class="mdi mdi-star-circle member-star text-success" title="verified user"></i>
                                        </div>

                                        <div class="">
                                            <h4 class="m-b-5">${ m.mName }</h4>
                                            <p class="text-muted">@${ m.mId }</p>
                                        </div>

                                        <p class="text-muted m-t-10">
                                           ${ m.mEmail }
                                        </p>
										<form method="GET" name="form">
											<input type="hidden" name="mCode" value="${ m.mCode }">
										<c:if test="${ m.mStatus eq 'J'}">
											<input type="submit" value="승인하기"
												onclick="javascript: form.action='userJoinOk.do';"
												class="btn btn-primary m-t-10" /> <input type="submit"
												value="거절하기" onclick="javascript: form.action='userJoinFail.do';"
												class="btn btn-custom m-t-10" />
										</c:if>
										<c:if test="${ m.mStatus eq 'Y' }">
											<input type="submit" value="정지처리"
												onclick="javascript: form.action='userManageStop.do';"
												class="btn btn-primary m-t-10" /> <input type="submit"
												value="회원삭제" onclick="javascript: form.action='deleteFailList.do';"
												class="btn btn-custom m-t-10" />
										</c:if>
										<c:if test="${ m.mStatus eq 'B' }">
											<input type="submit" value="정지풀기"
												onclick="javascript: form.action='userJoinOk.do';"
												class="btn btn-primary m-t-10" /> <input type="submit"
												value="회원삭제" onclick="javascript: form.action='deleteFailList.do';"
												class="btn btn-custom m-t-10" />
										</c:if>
										
										</form>

                                        <button class="btn btn-dark m-t-10" onclick="history.go(-1)" type="reset">돌아가기</button>
                                    </div>

                                </div> <!-- end card-box -->

                            </div> <!-- end col -->
                        </div> <!-- end row -->

                        <div class="m-t-30">
                            <ul class="nav nav-tabs tabs-bordered">
                                <li class="active">
                                    <a href="#home-b1" data-toggle="tab" aria-expanded="true">
                                        세부 정보
                                    </a>
                                </li>                            
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="home-b1">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">개인 정보</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="m-b-20">
                                                        <strong>이름</strong>
                                                        <br>
                                                        <p class="text-muted">${ m.mName }</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>휴대폰</strong>
                                                        <br>
                                                        <p class="text-muted">${ m.mPhone }</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>Email</strong>
                                                        <br>
                                                        <p class="text-muted">${ m.mEmail }</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>지역</strong>
                                                        <br>
                                                        <p class="text-muted">${ m.mArea }</p>
                                                    </div>
                                                    <div class="about-info m-b-0">
                                                        <strong>생년월일</strong>
                                                        <br>
                                                        <p class="text-muted">${ m.mBirth }</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Personal-Information -->

                                            <!-- Social -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">기타정보</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="m-b-20">
                                                        <strong>세대주와의 관계</strong>
                                                        <br>                                                  
                                                        <p class="text-muted">${ m.mRelation }</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>아파트 주소</strong>
                                                        <br>                                                  
                                                        <p class="text-muted">${ m.apCode }</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>동 / 호</strong>
                                                        <br>                                                  
                                                        <p class="text-muted">${ m.mAddress }</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>이메일 수신 동의 여부</strong>
                                                        <br>                                                  
                                                        <p class="text-muted">${ m.mEmailStatus }</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>입력된 주민 코드</strong>
                                                        <br>                                                  
                                                        <p class="text-muted">${ m.mAddressCode }</p>
                                                    </div>
                                                     <div class="about-info-p m-b-0">
                                                        <strong>가입신청 일자</strong>
                                                        <br>                                            
                                                        <p class="text-muted"><fmt:formatDate value="${ m.mEnrollDate }"
											pattern="yyyy년 MM월 dd일" />  </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Social -->
                                        </div>


                                        <div class="col-md-8">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">첨부파일</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <img src="${ contextPath }/resources/muploadFiles/${ m.mRenameFilename }" width="100%">
                                                </div>
                                            </div>
		
	</div>


	<jsp:include page="../common/masterFooter.jsp" />


</body>
</html>