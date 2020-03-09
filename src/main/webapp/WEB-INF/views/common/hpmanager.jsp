<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

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


        <div id="page-wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="" id="logoImage">
                        <a href="alogin.do" class="logo">
                            <img src="resources/administrator/images/H_Logo_4.png" alt="logo" class="logo-lg" />
                            <img src="resources/administrator/images/H_Logo_5.png" alt="logo" class="logo-sm hidden" />
                        </a>
                    </div>
                </div>

                <!-- Top navbar -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container" id="menuColor">
                        <div class="">

                            <div class="pull-left">
                                <button type="button" class="button-menu-mobile visible-xs visible-sm">
                                    <i class="fa fa-bars"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>
                            <ul class="nav navbar-nav navbar-right top-navbar-items-right pull-right">
                               <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="dropdown" aria-expanded="true">
                                        <i class="mdi">인력관리</i>
                                    </a>
                                    <ul class="dropdown-menu p-0 dropdown-menu-lg">
                                        <li class="list-group notification-list" style="height: 267px;">
                                           <div class="slimscroll">
                                               <!-- list item-->
                                               <a href="clist.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">계약 업체 정보</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="wlist.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-building bg-warning"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">근무자 정보</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="rlist.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-asterisk bg-custom"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">신고 처리 현황</h5>
                                                     </div>
                                                  </div>                   
                                               </a>
                                               <a href="elist.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-calendar bg-danger"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">재무</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               
	                                    </div>                           
                                        </li>
                                        
                                    </ul>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="dropdown" aria-expanded="true">
                                        <i class="mdi">시설관리</i>
                                    </a>
                                    <ul class="dropdown-menu p-0 dropdown-menu-lg">
                                        <li class="list-group notification-list" style="height: 267px;">
                                           <div class="slimscroll">
                                               <!-- list item-->
                                               <a href="facilitymain.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">신고 내역 조회</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="apartmentmain.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-building bg-warning"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">아파트 시설</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="convientmain.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-asterisk bg-custom"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">편의 시설</h5>
                                                     </div>
                                                  </div>                   
                                               </a>
                                               <a href="trafficmain.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-calendar bg-danger"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">교통 시설</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               
	                                    </div>                           
                                        </li>
                                        
                                    </ul>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="dropdown" aria-expanded="true">
                                        <i class="mdi">실무자업무</i>
                                    </a>
                                    <ul class="dropdown-menu p-0 dropdown-menu-lg">
                                        <li class="list-group notification-list" style="height: 267px;">
                                           <div class="slimscroll">
                                               <!-- list item-->
                                               <a href="praMain.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">실무자 업무페이지</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-building bg-warning"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">순찰 관리/일지</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="praCarDb.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-asterisk bg-custom"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">입주자 차량</h5>
                                                     </div>
                                                  </div>                   
                                               </a>
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-calendar bg-danger"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">경비실 택배</h5>
                                                     </div>
                                                  </div>
                                               </a>                                              
	                                    </div>                           
                                        </li>
                                    </ul>
                                </li>                    
                                <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="dropdown" aria-expanded="true">
                                        <i class="mdi">편의시설관리</i>
                                    </a>
                                    <ul class="dropdown-menu p-0 dropdown-menu-lg">
                                        <li class="list-group notification-list" style="height: 267px;">
                                           <div class="slimscroll">
                                               <!-- list item-->
                                               <a href="adReading.do" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">독서실</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-building bg-warning"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">헬스장</h5>
                                                     </div>
                                                  </div>
                                               </a>
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-asterisk bg-custom"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">게스트룸</h5>
                                                     </div>
                                                  </div>                   
                                               </a>
	                                    </div>                           
                                        </li>
                                        
                                    </ul>
                                </li>
                                

                                <li class="dropdown top-menu-item-xs">
                                    <a href="" class="dropdown-toggle menu-right-item profile" data-toggle="dropdown" aria-expanded="true"><img src="resources/administrator/images/adminImage.jpg" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="ti-image m-r-10"></i> 사진 변경</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-email m-r-10"></i> 메세지 </a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-lock m-r-10"></i> 화면 잠금 </a></li>
                                        <li class="divider"></li>
                                        <li><a href="javascript:void(0)"><i class="ti-power-off m-r-10"></i> 로그아웃</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div> <!-- end container -->
                </div> <!-- end navbar -->
            </div>

            <!-- Top Bar End -->

            <div class="page-contentbar">
                <aside class="sidebar-navigation">
					<div class="scrollbar-wrapper">
						<div>
							<button type="button"
								class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
								<i class="mdi mdi-close"></i>
							</button>
							<div class="user-details">
								<div class="pull-left">
									<img src="resources/administrator/images/adminImage.jpg" alt=""
										class="thumb-md img-circle">
								</div>
								<div class="user-info">
									<a href="#">인력관리자</a>
									<p class="text-muted m-0">Administrator</p>
								</div>
							</div>
							<ul class="metisMenu nav" id="side-menu">
								
								<li><a href="clist.do"><i
										class="ti-pencil-alt"></i>계약 업체 정보<span class="fa arrow"></span></a>

								</li>

								<li><a href="wlist.do" aria-expanded="true"><i
										class="ti-menu-alt"></i>근무자 정보<span class="fa arrow"></span></a>
									<!-- <ul class="nav-second-level nav" aria-expanded="true">
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
									</ul> --></li>

								<li><a href="rlist.do" aria-expanded="true"><i
										class="ti-light-bulb"></i>신고 처리 현황<span class="fa arrow"></span></a>
									<ul class="nav-second-level nav" aria-expanded="true">
										<li><a href="#">근무자 신고</a></li>
										<li><a href="#">시설 신고</a></li>
									</ul></li>

								<li><a href="elist.do" aria-expanded="true"><i
										class="ti-user"></i>재무 <span class="fa arrow"></span></a>
									<!-- <ul class="nav-second-level nav" aria-expanded="true">
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
									</ul> --></li>


							</ul>
						</div>
					</div>
				</aside>

	</div>


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="resources/administrator/js/jquery-2.1.4.min.js"></script>
        <script src="resources/administrator/js/bootstrap.min.js"></script>
        <script src="resources/administrator/js/metisMenu.min.js"></script>
        <script src="resources/administrator/js/jquery.slimscroll.min.js"></script>

        <!--Morris Chart-->
		<script src="resources/administrator/plugins/morris/morris.min.js"></script>
		<script src="resources/administrator/plugins/raphael/raphael-min.js"></script>

        <!-- Dashboard init -->
		<script src="resources/administrator/pages/jquery.dashboard.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>

    </body>
</html>