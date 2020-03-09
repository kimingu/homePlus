<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel=" shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
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
	
		#map {
			margin-top:5%;
			 margin-left:0.3%;
		      width:98.5%;
		      height:800px;
	   }
	   #card-box1{
	   		margin-left:5%;
	   		margin-right:5%;
	   }
	   #card-box-man{
	   	width: 98%;
	   	margin-left: 1%;
	   }
	   #mmName{
	   width:92%;
	   	float:left;
	   }
	   #btnNameSearch{
	   margin-right:1.1%;
	   	float:right;
	   }

</style>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp"/>
	
	<div id="page-right-content" class="masterContents">
	<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h4 class="header-title m-t-0 m-b-20">협력업체 위치 검색</h4>

				</div>
			</div>
		</div>
		<div class="card-box" id="card-box-man">
		<div>
	             <label class="control-label">검색 할 협력업체 이름</label>
	             <br>
	             <form action="masterMapChange.do" method="GET">
                 <input type="text" class="form-control" placeholder="홈플러스" name="mmName" id="mmName" style="width:84%" readonly>
                 <button type="button" id="btnNameSelect" class="btn btn-default waves-effect m-l-5" style="float:left; margin-left:15px" onclick="selectLocation()">선택하기</button>
                 <button id="btnNameSearch" class="btn btn-primary" style="float:left; margin-left:15px">검색하기</button>	
                 </form>
		</div>
	<!-- 여기부터 카카오맵 -->
	<div id="wrap">
   <div id="map" class="come"></div>
   </div>
	</div>
	
	<jsp:include page="../common/masterFooter.jsp"/>
	
	   <script>
   		// 카카오맵 api 설명.. 복붙 한거라 자세한 내용은 구글에 카카오맵 api라고 검색하면 카카오에서 잘 설명해줌
      var container = document.getElementById('map');
      var options = {
         center : new kakao.maps.LatLng(37.498493, 127.032551),
         level : 2
      };
      var map = new kakao.maps.Map(container, options);
      var markerPosition = new kakao.maps.LatLng(37.498493, 127.032551);
      var marker = new kakao.maps.Marker({
         position : markerPosition
      });
      marker.setMap(map);
      var iwContent = '<div style="padding:10px">홈플러스<br><a href="https://map.kakao.com/link/map/홈플러스,37.498493, 127.032551" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/홈플러스,37.498493, 127.032551" style="color:blue" target="_blank">길찾기</a></div>',
      // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
      iwPosition = new kakao.maps.LatLng(37.498493, 127.032551); //인포윈도우 표시 위치입니다

      // 인포윈도우를 생성합니다
      var infowindow = new kakao.maps.InfoWindow({
         position : iwPosition,
         content : iwContent
      });

	  var position = map.getCenter();
	  kakao.maps.event.addListener(map, 'center_changed', function(){
		 map.setCenter(position);
		 position = map.getCenter();
	  });
      
      function relayout() {  
          // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
          // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
          // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
          map.relayout();
      }
      
      // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다?><
      infowindow.open(map, marker);
   </script>
   
   <script>
   function selectLocation(){
		window.open('LocationList.do','업체 선택 폼', 'width=450, height=450, left=500, top=150');
		elementId=id;
	}
   </script>
   
   </div>
	
</body>
</html>