<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                        <a href="master.do" class="logo">
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
                                    <a href="clist.do" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="#" aria-expanded="true">
                                        <i class="mdi">인력관리</i>
                                    </a>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="facilitymain.do" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="#" aria-expanded="true">
                                        <i class="mdi">시설관리</i>
                                    </a>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="praMain.do" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="#" aria-expanded="true">
                                        <i class="mdi">실무자업무</i>
                                    </a>
                                </li>                    
                                <li class="dropdown top-menu-item-xs">
                                    <a href="rclist.do" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="#" aria-expanded="true">
                                        <i class="mdi">편의시설관리</i>
                                    </a>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="" class="dropdown-toggle menu-right-item profile" data-toggle="dropdown" aria-expanded="true">
										<img src="resources/administrator/images/member_man.png" alt=""
										class="thumb-md img-circle">
									</a>
									<c:url var="goMsg" value="conMessageForm.do">
									<c:param name="aName" value="${loginUser.aName}"/>
									</c:url>
									<c:url var="updateac" value="conupdateadmin.do">
									<c:param name="aName" value="${loginUser.aName}"/>
									</c:url>
                                    <ul class="dropdown-menu">
 	                                    <li><a href="${ updateac }"><i class="mdi mdi-account-settings-variant m-r-10"></i>회원정보변경</a></li>
                                        <li><a href="${ goMsg }"><i class="ti-email m-r-10"></i>메세지</a></li>
                                        <li class="divider"></li>
                                        <li><a href="alogout.do"><i class="ti-power-off m-r-10"></i> 로그아웃</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
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
								<a href="#">${loginUser.aDepartment}관리자</a>
								<p class="text-muted m-0">${loginUser.aName}님안녕하세요!</p>
							</div>
							<br><br><br>
							<ul class="metisMenu nav" id="side-menu">
								
								<li><a href="rclist.do"><i
										class="ti-pencil-alt"></i> 건의신고함<span class="fa arrow"></span></a>

								</li>

								<li><a href="#" aria-expanded="true"><i
										class="ti-menu-alt"></i>독서실 <span class="fa arrow"></span></a>
									<ul class="nav-second-level nav" aria-expanded="true">
										<li><a href="adReading.do">현황</a></li>
										<li><a href="#">정지</a></li>
									</ul></li>

								<li><a href="#" aria-expanded="true"><i
										class="ti-light-bulb"></i>헬스장<span class="fa arrow"></span></a>
									<ul class="nav-second-level nav" aria-expanded="true">
										<li><a href="#">정지</a></li>
										
									</ul></li>

								<li><a href="#" aria-expanded="true"><i
										class="ti-user"></i>게스트 룸<span class="fa arrow"></span></a>
									<ul class="nav-second-level nav" aria-expanded="true">
										<li><a href="adGuestRoom.do">현황</a></li>
										<li><a href="#">정지</a></li>
									</ul></li>


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