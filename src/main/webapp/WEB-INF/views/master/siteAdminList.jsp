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
	  <link href="resources/administrator/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>
        
        <!-- Bootstrap core CSS -->
        <link href="resources/administrator/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/administrator/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="resources/administrator/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/administrator/css/style.css" rel="stylesheet">
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
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />


	<div id="page-right-content">

                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <h4 class="header-title m-t-0 m-b-20">사이트 관리자</h4>
                            </div>
                        </div> <!-- end row -->


                        <div class="row">
                        	<div class="col-md-4">
                        		<div class="text-center card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <h3 class="m-0 text-muted"><i class="mdi mdi-dots-horizontal"></i></h3>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="member-card">
                                            <img  style="height:200px" src="${ contextPath }/resources/maUploadFiles/${ maList[0].maRenameFilename }" class="img-thumbnail" alt="profile-image">
                                        <div class="">
                                            <h4 class="m-b-5">${ maList[0].maName }</h4>
                                            <p class="text-muted">${ maList[0].maLevel }<span> | </span> <span> <a href="#" class="text-pink">@${ maList[0].maId }</a> </span></p>
                                        </div>

                                        <p class="text-muted font-13">
                                            지난번과는 다른 분야의 내용으로 프로젝트를 작성할 수 있어서 <br>
                                            경험을 넓힐 수 있었고 대규모 인원이 하는 프로젝트에 대한 <br> 
                                            경험을 얻을 수 있는 좋은 기회였다고 생각합니다
                                        </p>
										<c:url var="msg" value="resendMessage.do">
											<c:param name="forWho" value="${ maList[0].maName }"/>
										</c:url>
                                        <button type="button" class="btn btn-default btn-sm m-t-10" onclick="window.open('${ msg }', '메세지 보내기','width=700,height=700, left=500, top=150')">메세지 보내기</button>

                                        <ul class="social-links list-inline m-t-30">
                                            <li>
                                                <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="praMain.do" data-original-title="실무자 페이지"><i class="fa fa-firefox"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div> <!-- end col -->

                            <div class="col-md-4">
                        		<div class="text-center card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <h3 class="m-0 text-muted"><i class="mdi mdi-dots-horizontal"></i></h3>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                     <div class="member-card">
                                            <img style="height:200px" src="${ contextPath }/resources/maUploadFiles/${ maList[1].maRenameFilename }" class="img-thumbnail" alt="profile-image">

                                        <div class="">
                                            <h4 class="m-b-5">${ maList[1].maName }</h4>
                                            <p class="text-muted">${ maList[1].maLevel }<span> | </span> <span> <a href="#" class="text-pink">@${ maList[1].maId }</a> </span></p>
                                        </div>

                                        <p class="text-muted font-13">
                                            프로젝트가 큰 일 없이 끝나서 좋고, 처음에는 여러 기능들을 구현하고<br>
                                            도전하고 싶었는데 지금은 많은 기능들보다 적은 페이지를 만들더라도<br>
                                            효율적인 코드를 쓰면서 만들어보면 어땠을까 라는 생각합니다.<br>
                                        </p>

										<c:url var="msg" value="resendMessage.do">
											<c:param name="forWho" value="${ maList[1].maName }"/>
										</c:url>
                                        <button type="button" class="btn btn-default btn-sm m-t-10" onclick="window.open('${ msg }', '메세지 보내기','width=700,height=700, left=500, top=150')">메세지 보내기</button>
                                        <ul class="social-links list-inline m-t-30">
                                            <li>
                                                <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="편의시설 페이지"><i class="fa fa-firefox"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div> <!-- end col -->

                            <div class="col-md-4">
                        		<div class="text-center card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <h3 class="m-0 text-muted"><i class="mdi mdi-dots-horizontal"></i></h3>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                     <div class="member-card">
                                            <img style="height:200px" src="${ contextPath }/resources/maUploadFiles/${ maList[2].maRenameFilename }" class="img-thumbnail" alt="profile-image">

                                        <div class="">
                                            <h4 class="m-b-5">${ maList[2].maName }</h4>
                                            <p class="text-muted">${ maList[2].maLevel }<span> | </span> <span> <a href="#" class="text-pink">@${ maList[2].maId }</a> </span></p>
                                        </div>

                                        <p class="text-muted font-13">
                                           파이널 프로젝트를 하면서 조원들끼리는 협동성도 중요하지만, <br>
                                           많은 커뮤니케이션이 오가야 된다는 것을 느꼈고<br>
                                           재밌는 소재를 통해 즐겁게 작업할 수 있었습니다.
                                        </p>

										<c:url var="msg" value="resendMessage.do">
											<c:param name="forWho" value="${ maList[2].maName }"/>
										</c:url>
                                        <button type="button" class="btn btn-default btn-sm m-t-10" onclick="window.open('${ msg }', '메세지 보내기','width=700,height=700, left=500, top=150')">메세지 보내기</button>
                                        <ul class="social-links list-inline m-t-30">
                                            <li>
                                                <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="clist.do" data-original-title="인력관리 페이지"><i class="fa fa-firefox"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->



                        <div class="row">
                        	<div class="col-md-4">
                        		<div class="text-center card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <h3 class="m-0 text-muted"><i class="mdi mdi-dots-horizontal"></i></h3>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                     <div class="member-card">
                                            <img style="height:200px" src="${ contextPath }/resources/maUploadFiles/${ maList[3].maRenameFilename }" class="img-thumbnail" alt="profile-image">

                                        <div class="">
                                            <h4 class="m-b-5">${ maList[3].maName }</h4>
                                            <p class="text-muted">${ maList[3].maLevel }<span> | </span> <span> <a href="#" class="text-pink">@${ maList[3].maId }</a> </span></p>
                                        </div>

                                        <p class="text-muted font-13">
                                            갑작스러운 팀원 변경으로 초반 분위기가 어수선 했지만, <br>
                                            팀원들과 함께 역할 분담을 잘 나눠 프로젝트를 별탈 없이 <br>
                                            마무리 할수있어서 좋았고 마지막 프로젝트라 아쉬웠습니다.
                                        </p>

										<c:url var="msg" value="resendMessage.do">
											<c:param name="forWho" value="${ maList[3].maName }"/>
										</c:url>
                                        <button type="button" class="btn btn-default btn-sm m-t-10" onclick="window.open('${ msg }', '메세지 보내기','width=700,height=700, left=500, top=150')">메세지 보내기</button>
                                        <ul class="social-links list-inline m-t-30">
                                            <li>
                                                <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="boardList.do" data-original-title="커뮤니티 페이지"><i class="fa fa-firefox"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div> <!-- end col -->

                            <div class="col-md-4">
                        		<div class="text-center card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <h3 class="m-0 text-muted"><i class="mdi mdi-dots-horizontal"></i></h3>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="member-card">
                                            <img style="height:200px" src="${ contextPath }/resources/maUploadFiles/${ maList[4].maRenameFilename }" class="img-thumbnail" alt="profile-image">

                                        <div class="">
                                            <h4 class="m-b-5">${ maList[4].maName }</h4>
                                            <p class="text-muted">${ maList[4].maLevel }<span> | </span> <span> <a href="#" class="text-pink">@${ maList[4].maId }</a> </span></p>
                                        </div>

                                        <p class="text-muted font-13">
                                            여러 기능을 구현하는데에 욕심을 부려 <br>
                                            전체적으로 어중간한 기능이 된 것 같습니다.<br>
                                            초기 기능 기획의 중요성을 다시 한 번 느낄 수 있었습니다<br>
                                        </p>

										<c:url var="msg" value="resendMessage.do">
											<c:param name="forWho" value="${ maList[4].maName }"/>
										</c:url>
                                        <button type="button" class="btn btn-default btn-sm m-t-10" onclick="window.open('${ msg }', '메세지 보내기','width=700,height=700, left=500, top=150')">메세지 보내기</button>
                                        <ul class="social-links list-inline m-t-30">
                                            <li>
                                                <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="myPage.do" data-original-title="마이 페이지"><i class="fa fa-firefox"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div> <!-- end col -->

                            <div class="col-md-4">
                        		<div class="text-center card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <h3 class="m-0 text-muted"><i class="mdi mdi-dots-horizontal"></i></h3>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                     <div class="member-card">
                                            <img style="height:200px" src="${ contextPath }/resources/maUploadFiles/${ maList[5].maRenameFilename }" class="img-thumbnail" alt="profile-image">

                                        <div class="">
                                            <h4 class="m-b-5">${ maList[5].maName }</h4>
                                            <p class="text-muted">${ maList[5].maLevel }<span> | </span> <span> <a href="#" class="text-pink">@${ maList[5].maId }</a> </span></p>
                                        </div>

                                        <p class="text-muted font-13">
                                            8개월 간의 교육 과정을 거쳐 많은 것을 경험하게 되었고, <br>
                                            파이널 프로젝트를 통해 부족하지만 한 단계 성장할 수 있었습니다. <br>
                                            미래가 기대되는, 일 잘하는 개발자가 되겠습니다.
                                            
                                        </p>

										<c:url var="msg" value="resendMessage.do">
											<c:param name="forWho" value="${ maList[5].maName }"/>
										</c:url>
                                        <button type="button" class="btn btn-default btn-sm m-t-10" onclick="window.open('${ msg }', '메세지 보내기','width=700,height=700, left=500, top=150')">메세지 보내기</button>
                                        <ul class="social-links list-inline m-t-30">
                                            <li>
                                                <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="masterMainPage.do" data-original-title="관리자 페이지"><i class="fa fa-firefox"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
						
                                                    <div class="col-md-4">
                        		<div class="text-center card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <h3 class="m-0 text-muted"><i class="mdi mdi-dots-horizontal"></i></h3>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="member-card">
                                            <img style="height:200px"src="${ contextPath }/resources/maUploadFiles/${ maList[6].maRenameFilename }" class="img-thumbnail" alt="profile-image">
                                        <div class="">
                                            <h4 class="m-b-5">${ maList[6].maName }</h4>
                                            <p class="text-muted">${ maList[6].maLevel }<span> | </span> <span> <a href="#" class="text-pink">@${ maList[6].maId }</a> </span></p>
                                        </div>

                                        <p class="text-muted font-13">
                                            원래 생각한 페이지보다 퀄리티가 떨어지는 형태로 <br>
                                            제작되어서 아쉬었고 다음번에는 다른 기술을 접목해 원하는 대로 <br> 
                                            만들수 있는 기회가 있었으면 좋겠다고 생각합니다.
                                        </p>

										<c:url var="msg" value="resendMessage.do">
											<c:param name="forWho" value="${ maList[6].maName }"/>
										</c:url>
                                        <button type="button" class="btn btn-default btn-sm m-t-10" onclick="window.open('${ msg }', '메세지 보내기','width=700,height=700, left=500, top=150')">메세지 보내기</button>
                                        
                                        <ul class="social-links list-inline m-t-30">
                                            <li>
                                                <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="facilitymain.do" data-original-title="시설 관리 페이지"><i class="fa fa-firefox"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                </div>
	
	<!-- Datatable js -->
        <script src="resources/administrator/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/administrator/plugins/datatables/jszip.min.js"></script>
        <script src="resources/administrator/plugins/datatables/pdfmake.min.js"></script>
        <script src="resources/administrator/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/administrator/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.colVis.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.fixedColumns.min.js"></script>

        <!-- init -->
        <script src="resources/administrator/pages/jquery.datatables.init.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>
        <!-- Dashboard init -->
		<script src="resources/administrator/pages/jquery.dashboard.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>
	<jsp:include page="../common/masterFooter.jsp" />
</body>
</html>