<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel=" shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>홈플러스 | HOMEPLUS</title>
        <link rel="stylesheet" href="resources/dolomia/css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="resources/dolomia/css/bootstrap/bootstrap-theme.min.css">
        <link rel="stylesheet" href="resources/dolomia/css/style.css">
        <link rel="stylesheet" href="resources/dolomia/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/dolomia/css/ionicons.min.css">
        <link rel="stylesheet" href="resources/dolomia/css/puredesign.css">
        <link rel="stylesheet" href="resources/dolomia/css/flexslider.css">
        <link rel="stylesheet" href="resources/dolomia/css/owl.carousel.css">
        <link rel="stylesheet" href="resources/dolomia/css/magnific-popup.css">    
        <link rel="stylesheet" href="resources/dolomia/css/jquery.fullPage.css">
	
	<style>
	  .container {
	  	margin-left: auto;
	  	margin-right: auto;
	  }
	  body{
	  	width:100%;
	  }
	</style>

    </head>
    <body>
    	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
  
        <div id="myloader">
            <span class="loader">
                <div class="inner-loader"></div>
            </span>
        </div>
            <header id="header" class="fixed full-width">
                <div class="container">
                    <nav class="navbar navbar-default white">
                        <!--  Header Logo  -->
                        <div id="logo">
                            <a class="navbar-brand" href="home.do">
                                <img src="resources/dolomia/img/H_Logo_3.png" class="normal" alt="logo">
                                <img src="resources/dolomia/img/lH_Logo_3.png" class="retina" alt="logo">
                                <img src="resources/dolomia/img/H_Logo_3.png" class="normal white-logo" alt="logo">
                                <img src="resources/dolomia/img/H_Logo_3.png" class="retina white-logo" alt="logo">
                            </a>
                        </div>
                        <div id="menu-classic">
                            <div class="menu-holder">
                                <ul>
                                    <li class="submenu">
                                        <a href="home.do" class="formenu">Home</a>
                                    </li>
									<li class="submenu">
                                        <a href="javascript:void(0)">게시판</a>
                                        <ul class="sub-menu">
                                            <li><a href="noticeList.do">이벤트,공지사항</a></li>
                                            <li><a href="boardList.do">커뮤니티 게시판</a></li>
                                            <li><a href="marketList.do">아파트 장터</a></li>
                                            <li><a href="bchattingLogin.do">실시간 채팅</a></li>
                                        </ul>
                                    </li>
                                
                                    <li class="submenu">
                                        <a href="reading.do" >편의시설</a>
                                        <ul class="sub-menu">
                                            <li><a href="reading.do">독서실</a></li>
                                            <li><a href="mGym.do">헬스장</a></li>
                                            <li><a href="mGuestRoom.do">게스트룸</a></li>
                                        </ul>
                                    </li>
                                    <li class="submenu">
                                        <a href="bulletin.do" >건의신고함</a>
                                    </li>
                                    
                                    <li>
                                        <a href="myPage.do" class="formenu">마이페이지</a>
                                    </li>
                                    <li>
                                        <a href="logout.do" class="formenu">로그아웃</a>
                                    </li>
                                    
                                    <!-- <li class="search">
                                        <i class="icon ion-ios-search"></i>
                                    </li> -->
                                </ul>
                            </div>
                        </div>
                        <div id="menu-responsive-classic">
                            <div class="menu-button">
                                <span class="bar bar-1"></span>
                                <span class="bar bar-2"></span>
                                <span class="bar bar-3"></span>
                            </div>
                        </div>
                        <!--  END Button for Responsive Menu Classic  -->
                        <!--  Search Box  -->
                       <!--  <div id="search-box" class="full-width">
                            <form role="search" id="search-form" class="black big">
                                <div class="form-input">
                                    <input class="form-field black big" type="search" placeholder="Search...">
                                    <span class="form-button big">
                                        <button type="button">
                                            <i class="icon ion-ios-search"></i>
                                        </button>
                                    </span>
                                </div>
                            </form>
                            <button class="close-search-box">
                                <i class="icon ion-ios-close-empty"></i>
                            </button>
                        </div> -->
                    </nav>
                </div>
            </header>
            
        <!--  Main Wrap  -->
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="resources/dolomia/js/jquery.min.js"></script>
        <!-- All js library -->
        <script src="resources/dolomia/js/bootstrap/bootstrap.min.js"></script>
        <script src="resources/dolomia/js/jquery.flexslider-min.js"></script>
        <script src="resources/dolomia/js/jquery.fullPage.min.js"></script>
        <script src="resources/dolomia/js/owl.carousel.min.js"></script>
        <script src="resources/dolomia/js/isotope.min.js"></script>
        <script src="resources/dolomia/js/jquery.magnific-popup.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false"></script>
        <script src="resources/dolomia/js/jquery.scrollTo.min.js"></script>
        <script src="resources/dolomia/js/smooth.scroll.min.js"></script>
        <script src="resources/dolomia/js/jquery.appear.js"></script>
        <script src="resources/dolomia/js/jquery.countTo.js"></script>
        <script src="resources/dolomia/js/jquery.scrolly.js"></script>
        <script src="resources/dolomia/js/plugins-scroll.js"></script>
        <script src="resources/dolomia/js/imagesloaded.min.js"></script>
        <script src="resources/dolomia/js/pace.min.js"></script>
        <script src="resources/dolomia/js/main.js"></script>
    </body>
</html>