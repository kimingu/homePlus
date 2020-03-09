<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>
<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
</head>
<style>
#test1 {
	margin: 0 auto;
	height:1200px;
	background-color: white;
}

#test2 {
	border: 1px solid;
	height: 1200px;
}

#sidebar-wrapper {
	position: fixed;
	width: 250px;
	height: 100%;
	margin-left: -250px;
	background: #000;
	overflow-x: hidden;
	overflow-y: auto;
}

#page-content-wrapper {
	width: 100%;
	padding: 20px;
}
/* 사이드바 스타일 */
.sidebar-nav {
	width: 250px;
	margin: 0;
	padding: 0;
	list-style: none;
}

.sidebar-nav li {
	text-indent: 1.5em;
	line-height: 2.8em;
}

.sidebar-nav li a {
	display: block;
	text-decoration: none;
	color: #999;
}

.sidebar-nav li a:hover {
	color: #fff;
	background: rgba(255, 255, 255, 0.2);
}

.sidebar-nav>.sidebar-brand {
	font-size: 1.3em;
	line-height: 3em;
}

.navi li ul {
	background: #999999;
	display: none;
}

.navi li ul li a {
	margin-left: 20%;
	text-indent: 1.2em;
	line-height: 2.3em;
	color: pink;
}

.navi li:hover ul {
	transition: all 1s;
	-ms-transitipm: all 1s;
	-webkit-transitipm: all 1s;
	-moz-transitipm: all 1s;
	transition: all 1s;
	display: block;
}

.sidebar-nav li ul a {
	display: block;
	text-decoration: none;
	color: white;
}

.navi li a {
	transition: all 1s;
	-ms-transitipm: all 1s;
	-webkit-transitipm: all 1s;
	-moz-transitipm: all 1s;
}

.ttable {
	width:1200px;
	height:550px;
	overflow-x: auto;
	margin-left:13%;
}

.table {
      border-collapse: collapse;
      border-top: 3px solid #168;
      text-align:center;
      height:500px;
    }  
    .table th {
      color: #168;
      background: #f0f6f9;
      text-align: center;
    }
    .table th, .table td {
      padding: 10px;
      border: 1px solid #ddd;
     }
    /* .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    } */
    .table td:nth-child(odd) {
    	background:lightgray;
    	font-size:20px;
    }
    
    .table td:nth-child(even) {
    	
    }
  

</style>
<body>
	<div>
		<jsp:include page="../common/hpmanager.jsp" />
	</div>

	<div id="test1" class="full-width">
		<div class="row" style="margin-left:240px;border-left: solid 5px #F2F2F2;">

			<div id="page-wrapper">
				<!-- 사이드바 -->
				<!-- 본문은 여기에만! -->
				<div style="margin-bottom:5%;">
					<br>
					<h2>시설 업체 정보 수정하기</h2>
					<br>
					<div class="ttable">					    
					    <table class="table">
					    	<tr><td>구분</td><td><input type="text" size="20"></td><td>이름</td><td><input type="text" size="20"></td></tr>
					    	<tr><td>근무 장소</td><td><input type="text" size="20"></td><td>소속업체</td><td><input type="text" size="20"></td></tr>
					    	<tr><td>연락처</td><td><input type="text" size="20"></td><td>계약기간</td><td><input type="text" size="20"></td></tr>
					    	<tr><td>주소</td><td><input type="text" size="20"></td><td>/</td><td></td></tr>
					    </table>   
					</div>
					<button onclick="location.href='wupdate.do'">수정</button>&nbsp;&nbsp;
					<input type="button" value="돌아가기" onclick="goBack();"/>
					<br>
					
					<script type="text/javascript">
						function goBack(){
							window.history.back();
						}
					</script>
					
					
				</div>



			</div>

		</div>
	</div>

</body>
</html>