<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel=" shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
	<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
	<title>홈플러스 | HOMEPLUS</title>

<meta charset="UTF-8">
<script type="text/javascript"
   src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	#mainText{
		margin-left:1%;
	}
	#changeButton{
		float:right;
	}
	#newImage{
		visibility:hidden;
	}

</style>
<script type="text/javascript">
        $(function() {
            $("#changeImage").on('change', function(){
                readURL(this);
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                    $('#newImage').attr('src', e.target.result);
                    $('#newImage').css("visibility","visible")
                }

              reader.readAsDataURL(input.files[0]);
            }
        }
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp"/>
	
	
	<div id="page-right-content" class="masterContents">
	<h4 id="mainText">프로필 사진 변경 페이지</h4>
	<br>
		 <div class="col-lg-6">
		 <div class="card-box">
	        	<label class="control-label">기존 프로필 사진</label>
	             <input type="text" readonly="readonly" value="${ loginMaster.maOriginalFilename }" class="form-control">
	             <br>
	             <img src="${ contextPath }/resources/maUploadFiles/${ loginMaster.maRenameFilename }" width="100%">    
	     </div>
	     </div>
	     <form action="masterchangePicture.do" method="POST" enctype="multipart/form-data">
	     <input type="hidden" value="${ loginMaster.maId }" name="maId">
	     <input type="hidden" value="${ loginMaster.maPwd }" name="maPwd">
	       <div class="col-lg-6">
	       <div class="card-box">    
	             <label class="control-label">변경할 프로필 사진</label>
	             <input type="file" class="filestyle" id="changeImage" name="uploadFile">
	             <br>
	             <img id="newImage" src="#" width="100%">
			</div>
	       </div>
	       <div class="col-sm-12">
				<button class="btn btn-primary waves-effect waves-light" id="changeButton" type="submit">변경하기</button>
	       </div>
	       </form>
	</div>
	<jsp:include page="../common/masterFooter.jsp"/>
</body>
</html>