/**
 * 
 */

$("#map").children().mouseenter(function(){
                //console.log($(this).children().val());
            if($(this).children().is(":checked")){
            $(this).children().parent(".top").css("background-image","url('resources/readingRoom/images/top/hover-top.png')");
            $(this).children().parent(".left").css("background-image","url('resources/readingRoom/images/left/hover-left.png')");
            $(this).children().parent(".right").css("background-image","url('resources/readingRoom/images/right/hover-right.png')");
            $(this).children().parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/hover-bottom.png')");
            }
            });

        $("#map").children().mouseleave(function(){
            if($(this).children().is(":checked")){
            	 $(this).children().parent(".top").css("background-image","url('resources/readingRoom/images/top/off-top.png')");
                 $(this).children().parent(".left").css("background-image","url('resources/readingRoom/images/left/off-left.png')");
                 $(this).children().parent(".right").css("background-image","url('resources/readingRoom/images/right/off-right.png')");
                 $(this).children().parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/off-bottom.png')");
            }
            });
       
        $("#map").children().click(function(){
          var seatNo = $(this).children().val();
          console.log(seatNo);
           if($(this).children().is(":checked")){
            if(confirm(seatNo+"번 좌석을 예약하시겠습니까?")){            	
            	/*window.open('popup2.html','팝업창','width=400, height=300, left=300, top=150');*/
   
            	$(this).children().parent(".top").css("background-image","url('resources/readingRoom/images/top/on-top.png')");
                $(this).children().parent(".left").css("background-image","url('resources/readingRoom/images/left/on-left.png')");
                $(this).children().parent(".right").css("background-image","url('resources/readingRoom/images/right/on-right.png')");
                $(this).children().parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/on-bottom.png')");
                $(this).children().prop("checked",false);  
           } else {
                $(this).children().prop("checked", true);
           }
        }else {
        	 var seatNo = $(this).children().val();
             console.log(seatNo);
            if(confirm(seatNo+"번 좌석을 예약을 취소하시겠습니까?")){
            	$(this).children().parent(".top").css("background-image","url('resources/readingRoom/images/top/off-top.png')");
                $(this).children().parent(".left").css("background-image","url('resources/readingRoom/images/left/off-left.png')");
                $(this).children().parent(".right").css("background-image","url('resources/readingRoom/images/right/off-right.png')");
                $(this).children().parent(".bottom").css("background-image","url('resources/readingRoom/images/bottom/off-bottom.png')");
                $(this).children().prop("checked", true);
           } else { 
                $(this).children().prop("checked",false);
           }
        }
            });
        


