<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel=" shortcut icon" href="resources/dolomia/img/homeplus_icon.png">
		<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
		<title>홈플러스 | HOMEPLUS</title>
       <script type="text/javascript"
   src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f3f351b25f32b8d45c2ce8051c5fb86"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
       <style>
       	.page-wrap, #page-content, #footer	{
       		display:relative;
       	}
       	#introImg{
       		width:100%;
       		height:100%;
       	}
       	  #map {
		      width:100%;
		      height:600px;
	   }

     </style>
    </head>
    <body>
	<jsp:include page="../common/introbar.jsp"/>
				<br><br><br>
                <div id="flexslider" class="fullpage-wrap small">
                    <img id="introImg" src="${ contextPath }/resources/maUploadFiles/${ la.laPicture1 }">
                    <img id="introImg" src="resources/dolomia/img/intro1.jpg">
                    <img id="introImg" src="resources/dolomia/img/intro2.jpg">
                    <img id="introImg" src="resources/dolomia/img/intro3.jpg">
                    <img id="introImg" src="resources/dolomia/img/intro4.jpg">
                    
                    <iframe width="100%" height="600px" src="${ la.laYoutube }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" ></iframe>
                    
                    <img id="introImg" src="resources/dolomia/img/intro5.jpg">
                    <img id="introImg" src="resources/dolomia/img/intro6.jpg">
                    <img id="introImg" src="resources/dolomia/img/intro7.jpg">
                    
                    
                    <img id="introImg" src="${ contextPath }/resources/maUploadFiles/${ la.laPicture2 }">
                </div>
                
                
                <!--  END Slider  -->
                <div id="page-wrap" class="content-section fullpage-wrap">
                    <div class="row margin-leftright-null">
                        <div class="container">
                            <!--  Contact Info  -->
                            <div class="col-md-6 padding-leftright-null">
                                <div class="text">
                                    <h2 class="margin-bottom-null title line left">상담 신청하기</h2>
                                    <p class="heading center grey margin-bottom-null">홈플러스와 함께하는 스마트 홈라이프를 원하시나요?</p>
                                    <div class="padding-onlytop-md">
                                        <p class="margin-bottom">상담은 접수순으로부터 순차적으로 진행되며, 작성해주신 휴대폰 번호로 발신자 부담 통화로 진행됩니다. 1차 전화상담, 2차 방문상담의 형태로 진행되며 최종 상담 완료시 계정이 발급됩니다.</p>
                                        <p><span class="contact-info">Address <em>서울특별시 강남구 테헤란로10길 그랑빌딩
                                            </em></span><br><span class="contact-info">Phone <em>010 2504 4661</em></span><br><span class="contact-info">Email <a href="#"><em>homeplus22222@gmail.com</em></a></span></p>
                                        <p class="margin-md-bottom-null"><span class="contact-info">Monday to Friday <em>오전9시 - 오후 7시</em></span><br><span class="contact-info">Saturday from <em>오전10시 - 오후1시</em></span></p>
                                    </div>
                                </div>
                            </div>
                            <!--  END Contact Info -->
                            <!--  Input Form  -->
                            <div class="col-md-6 padding-leftright-null">
                                <div class="text padding-onlybottom-sm padding-md-top-null">
                                    <form id="contact-form" class="padding-onlytop-md padding-md-topbottom-null" action="masterApply.do" method="POST">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <input class="form-field" name="appName" id="name" type="text" placeholder="상호명">
                                            </div>
                                            <div class="col-md-12">
                                                <input class="form-field" name="appPhone" id="mail" type="text" placeholder="연락처">
                                            </div>
                                            <div class="col-md-12">
                                                <input class="form-field" name="appManager" id="subjectForm" type="text" placeholder="담당자">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <textarea class="form-field" name="appContent" id="messageForm" rows="6" placeholder="세부내용"></textarea>
                                                <div class="submit-area padding-onlytop-sm">
                                                    <input type="submit" id="submit-contact" class="btn-alt" value="문의 요청하기">
                                                    <div id="msg" class="message"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!--  END Input Form  -->
                        </div>
                    </div>
                </div>
                
                
                
                
   <div id="wrap">
   <div id="map" class="come"></div>
   </div>
   <script>
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
      var iwContent = '<div style="padding:5px">주식회사 홈플러스<br><a href="https://map.kakao.com/link/map/주식회사 홈플러스,37.498493, 127.032551" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/주식회사 홈플러스,37.498493, 127.032551" style="color:blue" target="_blank">길찾기</a></div>',
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
                
                
                
                

			
            <!--  END Page Content, class footer-fixed if footer is fixed  -->
        <!--  Main Wrap  -->
        <div id="footer">
       	<jsp:include page="../common/introFooter.jsp"/>
       	</div>
    </body>
</html>