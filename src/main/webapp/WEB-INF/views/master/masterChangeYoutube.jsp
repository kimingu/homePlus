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
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f3f351b25f32b8d45c2ce8051c5fb86"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
<style>
</style>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />

	<div id="page-right-content" class="masterContents">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h4 class="header-title m-t-0 m-b-20">둘러보기 페이지 영상 수정</h4>
				</div>
			</div>
			<div class="col-lg-6">
		 <div class="card-box">
	        <label class="control-label">기존 광고영상</label>
	        
	        <input type="text" readonly="readonly" value="${ la.laYoutube }" class="form-control">
	        <br>
	        <iframe width="100%" height="400px" src="${ la.laYoutube }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>     
	     </div>
	     </div>
	     <form action="masterUpdateYoutube.do" method="POST" enctype="multipart/form-data">
	       <div class="col-lg-6">
	       <div class="card-box">    
	             <label class="control-label">변경할 광고영상 주소</label>
	              <input type="text" class="form-control" placeholder="ex) https://www.youtube.com/embed/KingGwakHuisu" name="newAddress">
	              <br>
	              <button class="btn btn-primary waves-effect waves-light" id="changeButton" type="submit">변경하기</button>
	             <br>
			</div>
	       </div>
	       </form>
		</div>
	</div>

	<jsp:include page="../common/masterFooter.jsp" />


</body>
</html>