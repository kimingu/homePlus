<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
div.button
{
   text-align:center;
   
}

div.report{
	margin:auto;
	text-align:center;
	height: 100%;
	width:100%;
}
</style>
</head>
<body>
	<form action="bdInsert.do" method="POST">
			<input type="hidden" name="b_code" value="${b_code }">
			<input type="hidden" name="m_id" value="${loginUser.mId}">
		<div class="report">
			<br><br> 
			<label for="report">신고유형</label>
			<br><br> 
			<select class="form-control" name="bd_category">
				<option value="타인 비방/욕설">타인 비방/욕설</option>
				<option value="혐오 콘텐츠">혐오 콘텐츠</option>
				<option value="무단 광고">무단 광고</option>
				<option value="음담패설">음담패설</option>
				<option value="거래관련">거래관련</option>
			</select>
		</div>
		<br>
		<div class="report">
			<label for="report">신고 내용</label><br>
			<textarea class="form-control" name="bd_content"
				rows="8" style="width: 90%;"></textarea>
		</div>
		<br>
		<div class="button">
			<button id="submit" type="submit" onclick="close()">신고 등록</button>
		</div>
		
		<script>
		function close(){
			 window.open("about:blank","_self").close();
		}
		
		
		</script>
	</form>
</body>
</html>