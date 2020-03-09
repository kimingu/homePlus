<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>SimpleAdmin - Responsive Admin Dashboard Template</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="shortcut icon" href="resources/assets/images/favicon.ico">
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/assets/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/assets/css/metismenu.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/assets/css/style.css" rel="stylesheet" type="text/css" />
<script src="resources/assets/js/modernizr.min.js"></script>

<style>
#left {
	margin-left: 10px;
	height: 400px;
}

#right {
	text-align: right;
}

#picturearea {
	height: 150px; 
	<c:if test='${list.bb_rename!=null}'> 
      background-image: url("resources/bulluploadFiles/${list.bb_rename}.jpg");
   </c:if> 
	<c:if test='${list.bb_rename==null}'> 
		background-image: url("resources/facility/images/notfound.png"); 
	</c:if> 
	background-repeat : no-repeat;
	background-size: contain;
	background-position: center;
	background-repeat: no-repeat;
}

#hei100 {
	height: 90%;
}

#he70 {
	height: 60%;
}

#he30 {
	height: 30%;
}

#he80 {
	height: 80%;
}

#he20 {
	height: 10%;
}
</style>
</head>
<body>
	<div id="wrapper">
		<div class="content">
			<div class="m-t-30">
				<ul class="nav nav-tabs tabs-bordered">
					<li class="nav-item"><a href="#home-b1" data-toggle="tab"
						aria-expanded="false" class="nav-link active"> 문의내용 </a></li>
					<li class="nav-item"><a href="#profile-b1" data-toggle="tab"
						aria-expanded="true" class="nav-link"> 답변하기 </a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="home-b1">
						<div class="row">
							<div class="col-md-3" id="left">
								<!-- Personal-Information -->
								<div class="panel panel-default panel-fill" id="hei100">
									<div class="panel-heading">
										<h3 class="panel-title">문의내용</h3>
									</div>
									<div class="panel-body">
										<div class="m-b-20">
											<strong>입주자</strong> <br>
											<p class="text-muted">${list.m_name}</p>
										</div>
										<hr>
										<div class="m-b-20">
											<strong>문의제목</strong> <br>
											<p class="text-muted">${list.bb_title }</p>
										</div>
										<hr>
										<div class="about-info-p m-b-0">
											<strong>문의 장소</strong> <br>
											<p class="text-muted">${list.bb_dcategory }</p>
										</div>
									</div>
								</div>

							</div>
							<div class="col-md-8">
								<!-- Personal-Information -->
								<div class="panel panel-default panel-fill" id="he70">
									<div class="panel-heading">
										<h3 class="panel-title">현장사진</h3>
									</div>
									<div class="panel-body" id="picturearea"></div>
								</div>
								<div class="panel panel-default panel-fill" id="he30">
									<div class="panel-heading">
										<h3 class="panel-title">문의내용</h3>
									</div>
									<div class="panel-body">
										<p class="text-muted">${list.bb_content}</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="profile-b1">
						<div class="row">
							<div class="col-md-3" id="left">
								<!-- Personal-Information -->
								<div class="panel panel-default panel-fill" id="hei100">
									<div class="panel-heading">
										<h3 class="panel-title">답변작성</h3>
									</div>

									<div class="panel-body">

										<div class="m-b-20">
											<strong>관리자</strong> <br>
											<p class="text-muted">${loginUser.aName}</p>
										</div>
										<hr>
										<div class="m-b-20">
											<strong>부서</strong> <br>
											<p class="text-muted">
													${loginUser.aDepartment}시설관리
											</p>
										</div>
										<hr>
										<div class="about-info-p m-b-0">
											<strong>문의 장소</strong> <br>
											<p class="text-muted">${list.bb_dcategory }</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<div class="panel panel-default panel-fill" id="hei80">
									<div class="panel-heading">
										<h3 class="panel-title">답변작성</h3>
									</div>
									<div class="panel-body" id="right">
										<form action="facanswer.do" method="post">
											<input type="text" name="bb_code" value="${list.bb_code}" style="display:none;">
											<input type="text" name="dcate" value="${list.bb_dcategory}" style="display:none;">
											<textarea name="answer" id="facanswer" cols="70" rows="12"
												style="resize: none;"></textarea>
											<label>회사 선택 : </label>
											<select name="company">
												<option value="0">전체</option>
												<c:forEach var="c" items="${comlist}">
													<option value="${c.comCode}">${c.comName}</option>
												</c:forEach>
											</select>
											<input type="submit" value="완료">
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- Personal-Information -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/popper.min.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/metisMenu.min.js"></script>
	<script src="resources/assets/js/waves.js"></script>
	<script src="resources/assets/js/jquery.slimscroll.js"></script>
	<script src="resources/assets/js/jquery.core.js"></script>
	<script src="resources/assets/js/jquery.app.js"></script>

</body>
</html>
