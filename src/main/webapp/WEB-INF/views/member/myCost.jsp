<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources/myPage/css/style.css">		
    
    <link rel="shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
    <link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
     <link rel="stylesheet" href="resources/datepicker/css/simplepicker.css">
     <link rel="stylesheet" href="resources/memberInsert/css/memberInsert.css">
     <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
     
    
	<title>홈플러스 | HOMEPLUS</title>
    

   <style>
   
   /*임시*/
   	
   		* {
   			box-sizing: border-box;
   		}
		#page-content {
			margin: 0 auto;
			margin-top: 80px;
			border: 1px solid red;
		}
		
		.testStyle {
			border: 1px solid #efefef;
			height: 50px;
		}		
		
		.testStyle2 {
			border: 1px solid red;
			height: 50px;
		}
		
		.testStylen {
			border: 1px solid #E2E2E2;
		}	
		
		.testStyle2n {
			border: 1px solid red;
		}
		
		
		.ingu {
			background: white;
			height: 100%;
			padding-left: 25px;
			padding-right: 25px;
			
			margin-top: 50px;
			margin-bottom: 200px;
			
     		border: 1px solid #efefef;
		}
		
		#headTitle {
			margin-top: 20px;
			margin-left: 10px;
			padding-top: 10px;
			border-bottom: 1px solid #E2E2E2;
		}
		
		#title {
			font-size: 25px;
		}
				
		#title1 {
			font-size: 14px;
		}
		
		.mistGray-Background {
			background-color: #fcfcfc;
		}
		
		#headTitle {
			text-align: left;
		}	
		
		#pwdHiddenP {
			width: 51%;
		}
	
		#pwdOk {
			display: none;
			margin: auto;
			margin-left: 43%;
		}
		
		#pwdNo {
			display: none;
			margin: auto;
			margin-left: 43%;
		}
		
		#pwdidentityP1 {
			margin-left: 43%;
		}
		
		#pwdidentityP2 {
			margin-left: 43%;
		}
		
		#chartDiv{
			height: 400px;
			width: 100%;
		}
		
   </style>
   
</head>
<body>	

	<div>
	   <jsp:include page="../common/menubar.jsp"/>
	</div>  
	 
   
	<div class="row mistGray-Background marginTop-80 full-width">
		<div class="col-md-offset-2 col-md-8">
			<div class="ingu">
				<div id="headTitle">
					<h4>
						<a href="javascript:location.reload()" id="title">내 관리비</a>
					</h4>
				</div>				
				<br>
				
				<div class="row">
					<div class="col-md-12">
						<div class="testStylen white-background padding-20 paddingLeftRgiht-35 marginBottom-20">	
							<c:set var="current" value="<%= new java.util.Date() %>" />
							<h5 class="fontWeight-600"><fmt:formatDate value='${current }' pattern='yyyy년MM월' /></h5>
							<br>
							<div id="chartDiv" class="col-md-12"></div>
							
							
							<div id="textDiv" class="margin-50">
								<h5 class="fontWeight-600">이번달 관리비는 
								<p class="display-inlnine-block"><fmt:formatNumber value="${myCost }" pattern="#,###" /></p>
								원 입니다</h5>
								
								<br>
								<h6 id="detailOption" class="fontWeight-600">상세보기 >></h6>
								<div id="detailText" class="margin-20" style="display:none;">
									<fmt:formatDate value='${current }' pattern='yy/MM' var="toMonth" />
									
									<c:forEach var="i" items="${apCostList }">
										<c:if test="${i.insertDate eq toMonth }">
											<h6 class="fontWeight-600"> 관리비 : 
											<p class="display-inlnine-block"><fmt:formatNumber value="${i.apCost }" pattern="#,###" /></p>
											 원</h6>
											<h6 class="fontWeight-600"> 전기세 : 
											<p class="display-inlnine-block"><fmt:formatNumber value="${i.electTax }" pattern="#,###" /></p>
											 원</h6>
											<h6 class="fontWeight-600"> 수도세 : 
											<p class="display-inlnine-block"><fmt:formatNumber value="${i.waterTax }" pattern="#,###" /></p>
											 원</h6>
											<h6 class="fontWeight-600"> 가스비 : 
											<p class="display-inlnine-block"><fmt:formatNumber value="${i.gasTax }" pattern="#,###" /></p>
											 원</h6>
								
											
										</c:if>
									</c:forEach>
								</div>
							</div>
								
						</div>	
					</div>				
				
				</div>

			
			</div>
		</div>
		
	</div>
      
	
      
	  
	<div>
		<jsp:include page="../common/footer.jsp"/>   
	</div>
  
	<script>
		$(function(){
			$("#detailOption").on("click", function(){		
				
				if($("#detailText").css("display") == "block") {
					$("#detailText").css("display", "none");
					$(this).text
				}else {					
					$("#detailText").css("display", "block");
				}
				 
			})
			
			

			var toDay = new Date();
			var toYear = toDay.getFullYear();
			var year2 = (toYear + "").substr(2, 2);
			
			var month1 = 0;
			var month2 = 0;
			var month3 = 0;
			var month4 = 0;
			var month5 = 0;
			var month6 = 0;
			var month7 = 0;
			var month8 = 0;
			var month9 = 0;
			var month10 = 0;
			var month11 = 0;
			var month12 = 0;
	 		
	 		<c:forEach items="${apCostList }" var="i">
	 			if("${i.insertDate }" == (year2 + "/01")) {
	 				month1 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/02")) {
	 				month2 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/03")) {
	 				month3 = "${i.gasTax + i.waterTax + i.electTax + apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/04")) {
	 				month4 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/05")) {
	 				month5 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/06")) {
	 				month6 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/07")) {
	 				month7 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/08")) {
	 				month8 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/09")) {
	 				month9 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/10")) {
	 				month10 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/11")) {
	 				month11 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 			
	 			if("${i.insertDate }" == (year2 + "/12")) {
	 				month12 = "${i.gasTax + i.waterTax + i.electTax + i.apCost }";
	 			}
	 		</c:forEach>
			
			
	   		new Morris.Bar({
				element: "chartDiv",
				data: [
					{year: toYear + "/01", value: month1},
					{year: toYear + "/02", value: month2},
					{year: toYear + "/03", value: month3},
					{year: toYear + "/04", value: month4},
					{year: toYear + "/05", value: month5},
					{year: toYear + "/06", value: month6},
					{year: toYear + "/07", value: month7},
					{year: toYear + "/08", value: month8},
					{year: toYear + "/09", value: month9},
					{year: toYear + "/10", value: month10},
					{year: toYear + "/11", value: month11},
					{year: toYear + "/12", value: month12}
				], 
				xkey: 'year',
				ykeys: ['value'],
				labels: ['value']		
			}); 
			

		})
		

		
	</script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

</body>
</html>