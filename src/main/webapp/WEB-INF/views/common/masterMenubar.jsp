<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link href="resources/administrator/plugins/summernote/summernote.css" rel="stylesheet" />
	    <link href="resources/administrator/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
        <link rel="stylesheet" href="resources/administrator/plugins/switchery/switchery.min.css">
        <link href="resources/administrator/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/administrator/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/administrator/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="resources/administrator/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/administrator/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="resources/administrator/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		
        <link rel="shortcut icon" href="resources/administrator/images/favicon.ico">

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="resources/administrator/plugins/morris/morris.css">

        <!-- Bootstrap core CSS -->
        <link href="resources/administrator/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/administrator/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="resources/administrator/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/administrator/css/style.css" rel="stylesheet">


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="resources/administrator/js/jquery-2.1.4.min.js"></script>
        <script src="resources/administrator/js/metisMenu.min.js"></script>
        <script src="resources/administrator/js/jquery.slimscroll.min.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>


		
		
		<style>
			#menuColor{
				background:white;
				border-bottom:5px solid #F5F5F5;
			}
			#logoImage{
				padding-left:20px;
			}
			.sidebar-navigation{
				margin-top:5px;
			}
			#page-wrapper{
				width:100%;
			}
			#search{
				color:black;
				border:2px solid #F5F5F5;
			}
		</style>
    </head>


    <body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

        <div id="page-wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="" id="logoImage">
                        <a href="masterMain.do" class="logo">
                            <img src="resources/administrator/images/H_Logo_4.png" alt="logo" class="logo-lg" />
                            <img src="resources/administrator/images/H_Logo_5.png" alt="logo" class="logo-sm hidden" />
                        </a>
                    </div>
                </div>

                <!-- Top navbar -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container" id="menuColor">
                        <div class="">

                            <!-- Mobile menu button -->
                            <div class="pull-left">
                                <button type="button" class="button-menu-mobile visible-xs visible-sm">
                                    <i class="fa fa-bars"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>

<!--                             Top nav left menu
                            <ul class="nav navbar-nav hidden-sm hidden-xs top-navbar-items">
                                <li><a href="#">About</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul> -->

                            <!-- Top nav Right menu -->
                            <ul class="nav navbar-nav navbar-right top-navbar-items-right pull-right">

                                <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="dropdown" aria-expanded="true">
                                        <i class="mdi mdi-account-star-variant"></i>
                                    </a>
                                    <ul class="dropdown-menu p-0 dropdown-menu-lg">
                                        <li class="list-group notification-list" style="height: 267px;">
                                           <div class="slimscroll">
                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">${ loginMaster.maName }</h5>
                                                        <p class="m-0">
                                                            <small>관리자 이름</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>

                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-building bg-warning"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">${ loginMaster.maDept }</h5>
                                                        <p class="m-0">
                                                            <small>부서</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>

                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-asterisk bg-custom"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">${ loginMaster.maLevel }</h5>
                                                        <p class="m-0">
                                                            <small>직급</small>
                                                        </p>
                                                     </div>
                                                  </div>                   
                                               </a>
                                               
                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-calendar bg-danger"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">${ loginMaster.maHireDate }</h5>
                                                        <p class="m-0">
                                                            <small>입사일</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>
                                               
	                                    </div>                           
                                        </li>
                                    </ul>
                                </li>
                                <!-- 
                                   <c:url var="url" value="testPage.jsp">
								   <c:param name="pName" value="LG그램" />
								   <c:param name="pCount" value="30" />
								   <c:param name="option" value="ssd256G" />
								   <c:param name="option" value="ram16G" />
								   </c:url>
								   
								   <a href="${url }">클릭</a>
                                 -->
								<c:url var="goMsg" value="masterMessageForm.do">
									<c:param name="maName" value="${ loginMaster.maName }"/>
								</c:url>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="" class="dropdown-toggle menu-right-item profile" data-toggle="dropdown" aria-expanded="true"><img src="${ contextPath }/resources/maUploadFiles/${ loginMaster.maRenameFilename }" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="masterInsertPicture.do"><i class="ti-image m-r-10"></i> 사진 변경</a></li>
                                        <li><a href="${ goMsg }"><i class="ti-email m-r-10"></i> 메세지 </a></li>
                                        <li><a data-toggle="modal" data-target=".bs-example-modal-sm"><i class="ti-lock m-r-10"></i> 화면 잠금 </a></li>
                                        <li class="divider"></li>
                                        <li><a href="masterLogout.do"><i class="ti-power-off m-r-10"></i> 로그아웃</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div> <!-- end container -->
                </div> <!-- end navbar -->
            </div>
				<div class="modal fade bs-example-modal-sm" id="screenLockModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;" data-keyboard="false", data-backdrop="static">
					<div class="modal-dialog modal-sm" >
						<div class="modal-content" >
							<div class="modal-header">
								<h4 class="modal-title" id="mySmallModalLabel">화면잠금 상태입니다.</h4>
							</div>
							<div class="modal-body"><input id="modalPwd" type="password" placeholder="Password" required class="form-control"></div>
							<button type="button" id="modalCloseBtn" class="close" data-dismiss="modal" aria-hidden="true" hidden>X</button>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
			</div><!-- /.modal -->
			<script>
				$("#modalPwd").keypress(function(e){
					var modalPwd = $("#modalPwd").val();
					var masterPwd = '${ loginMaster.maPwd }';
					if(modalPwd == masterPwd){
						$("#modalCloseBtn").trigger("click");
						$("#modalPwd").val("");
					}
				});
			</script>
            <!-- Top Bar End -->

            <!-- Page content start -->
            <div class="page-contentbar">

                <!--left navigation start-->
                <aside class="sidebar-navigation">
                    <div class="scrollbar-wrapper">
                        <div>
                            <button type="button" class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
                                <i class="mdi mdi-close"></i>
                            </button>
                            <!-- User Detail box -->
                            <div class="user-details">
                                <div class="pull-left">
                                    <img src="${ contextPath }/resources/maUploadFiles/${ loginMaster.maRenameFilename }" alt="" class="thumb-md img-circle">
                                </div>
                                <div class="user-info">
                                    <a href="#">${ loginMaster.maName }</a>
                                    <p class="text-muted m-0">${ loginMaster.maDept } / ${ loginMaster.maLevel }</p>
                                </div>
                            </div>
                            <!--- End User Detail box -->

                            <!-- Left Menu Start -->
                            <ul class="metisMenu nav" id="side-menu">
                                <li><a href="masterMain.do"><i class="ti-home"></i> 대시보드 </a></li>
                                
                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-pie-chart"></i> 통계관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav" aria-expanded="true">
                                        <li><a href="incomeChart.do">수익 통계</a></li>
                                        <li><a href="boardChart.do">게시글 통계</a></li>
                                        <li><a href="memberChart.do">회원 통계</a></li>
                                    </ul>
                                </li>
                                
                               <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-user"></i> 회원 관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav" aria-expanded="true">
                                        <li><a href="adminManage.do">관리자 회원</a></li>
                                        <li><a href="memberManage.do">입주자 회원</a></li>
                                        <li><a href="siteAdminList.do">사이트 관리자</a></li>
                                    </ul>
                                </li>
                                                 
                                 <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-light-bulb"></i> 요청 관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav" aria-expanded="true">
                                        <li><a href="masterApplyList.do">문의 요청</a></li>
                                         <li><a href="adminInsertCheck.do">관리자 가입 요청</a></li>
                                         <li><a href="userInsertCheck.do">입주자 가입 요청</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-menu-alt"></i> 게시글 관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav" aria-expanded="true">
                                        <li><a href="reportMaster.do">신고 관리</a></li>
                                        <li><a href="boardMaster.do">게시글 관리</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-pencil-alt"></i> 아파트 관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav" aria-expanded="true">
                                        <li><a href="goApartmentInsertForm.do">아파트 등록</a></li>
                                        <li><a href="apartmentList.do">등록된 아파트 목록</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-files"></i> 소개 페이지 관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav" aria-expanded="true">
                                        <li><a href="masterChangeYoutube.do">소개 페이지 영상 수정</a></li>
                                        <li><a href="masterChangeLaPicture.do"> 첫번째 이미지 수정</a></li>
                                        <li><a href="masterChangeLaPicture2.do"> 두번째 이미지 수정</a></li>
                                    </ul>
                                </li>
                                
<!--                               <li><a href="masterCalendar.do"><i class="ti-calendar"></i> 일정 관리 </a></li>
 -->                                                             
                              <li><a href="masterSendMail.do"><i class="ti-email"></i> 회원메일 발송 </a></li>
                                
                       			<li><a href="masterMap.do"><i class="ti-location-pin"></i> 제휴 업체 위치 </a></li>

                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-share"></i> 페이지 이동 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav" aria-expanded="true">
                                        <li><a href="intro.do">둘러보기 페이지</a></li>
                                        <li><a href="javascript: void(0);" aria-expanded="true">이용자 페이지<span class="fa arrow"></span></a>
                                            <ul class="nav-third-level nav" aria-expanded="true">
                                                <li><a href="clist.do">관리자 페이지</a></li>
                                                <li><a href="home.do">입주자 페이지</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div><!--Scrollbar wrapper-->
                </aside>
                <!--left navigation end-->




        <!-- js placed at the end of the document so the pages load faster -->
        <script src="resources/administrator/js/bootstrap.min.js"></script>
        <script src="resources/administrator/js/metisMenu.min.js"></script>
        <script src="resources/administrator/js/jquery.slimscroll.min.js"></script>
		<script src="resources/administrator/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <!--Morris Chart-->
		<script src="resources/administrator/plugins/morris/morris.min.js"></script>
		<script src="resources/administrator/plugins/raphael/raphael-min.js"></script>
		<script src="resources/administrator/pages/jquery.morris.init.js"></script>

        <script src="resources/administrator/plugins/flot-chart/jquery.flot.min.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.time.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.resize.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.pie.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.selection.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.stack.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.orderBars.min.js"></script>
        <script src="resources/administrator/plugins/flot-chart/jquery.flot.crosshair.js"></script>
        <script src="resources/administrator/pages/jquery.flot.init.js"></script>

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


    </body>
</html>