<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈플러스 | HOMEPLUS</title>

<link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<style>
	.page-contentbar{
	height:100%;
	}
	#forright{
		text-align:right;
	}
</style>

</head>
<body>
	<jsp:include page="../common/facmanager.jsp"/>
			   <div id="page-right-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                    <h4 class="m-t-0">아파트 신고 내역</h4>
                                    <div id="forright">
                                    	<select id="cate" onchange="selchange()">
                                    		<option vlaue="#">--선택--</option>
                                    		<option value="101">101동</option>
                                    		<option value="102">102동</option>
                                    		<option value="103">103동</option>
                                    		<option value="104">104동</option>
                                    		<option value="105">105동</option>
                                    		<option value="106">106동</option>
                                    		<option value="107">107동</option>
                                    		<option value="108">108동</option>
                                    	</select>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-hover mails m-0 table table-actions-bar" id="aptable">
                                            <thead>
                                                <tr>
                                                    <th align="center">신고번호</th>
                                                    <th align="center">신고자</th>
                                                    <th align="center">신고제목</th>
                                                    <th align="center">신고일</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach var="b" items="${list}">
											<tr onclick="clickTr(${b.bb_code})">
												<td align="center">${b.bb_code}</td>
												<td align="center">${b.m_name}</td>
												<td align="center">${b.bb_title}</td>
												<td align="center">${b.bb_createdate}</td>
											</tr>
										</c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
                 <script>
                function clickTr(code){
                	window.open('facdetail.do?code='+code,'grmdetail','width=800px,height=400px,location=no,status=no,scrollbars=no');
                }
            	function selchange(){
                 		var sel = document.getElementById("cate").value;
                 		console.log(sel);
                 		$.ajax({
                 			url: "selAP.do",
                 			data: {sel:sel},
                 			datatype: "json",
                 			success:function(data){
                 				$tableBody = $("#aptable tbody");
                 				$tableBody.html("");
                 				if(data.length > 0){
                 					for(var i in data){
                 					$tr = $('<tr onclick="javascript:clickTr('+data[i].bb_code+')">');
                 					console.log("데이터 : " + data[i]);
                 					$bbcode = $("<td align='center'>").text(data[i].bb_code);
                 					$mname = $("<td align='center'>").text(data[i].m_name);
                 					$bbtitle = $("<td align='center'>").text(data[i].bb_title);
                 					$bbcreatedate = $("<td align='center'>").text(data[i].bb_createdate);
                 					
                 					$tr.append($bbcode);
                 					$tr.append($mname);
                 					$tr.append($bbtitle);
                 					$tr.append($bbcreatedate);
                 					
                 					$tableBody.append($tr);
                 					}
                 				}else{
                 					$tr = $("<tr align='center'>");
                 					$rContent = $("<td colspan='4'>").text("신고내역이 없습니다.");
                 					$tr.append($rContent);
                 					$tableBody.append($tr);
                 				}
                 			
                 			},
                 			error:function(){
                 				console.log("ajax 통신 실패!");
                 			}
                 		});
                 	}
                 </script>
</body>
</html>