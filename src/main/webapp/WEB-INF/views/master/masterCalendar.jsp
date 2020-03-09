<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon"
	href="resources/dolomia/img/homeplus_icon.png">
<link rel="icon" href="resources/dolomia/img/homeplus_icon.png">
<title>홈플러스 | HOMEPLUS</title>

<meta charset="UTF-8">
<link
	href="resources/administrator/plugins/fullcalendar/css/fullcalendar.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/masterMenubar.jsp" />


	<div id="page-right-content">

                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <h4 class="header-title m-t-0">일정 관리</h4>
                            </div>
                        </div> <!-- end row -->

                        <div class="row">
                            <div class="col-lg-12">

                                <div class="m-t-10">
                                    <div class="row m-b-30">
                                        <div class="col-md-12">
                                            <div id="calendar"></div>
                                        </div> <!-- end col -->
                                    </div>  <!-- end row -->
                                </div>

                                <!-- BEGIN MODAL -->
                                <div class="modal fade none-border" id="event-modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title">Add New Event</h4>
                                            </div>
                                            <div class="modal-body p-20"></div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                                                <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal Add Category -->
                                <div class="modal fade none-border" id="add-category">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title">Add a category</h4>
                                            </div>
                                            <div class="modal-body p-20">
                                                <form role="form">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label class="control-label">Category Name</label>
                                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name"/>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="control-label">Choose Category Color</label>
                                                            <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                                <option value="success">Success</option>
                                                                <option value="danger">Danger</option>
                                                                <option value="info">Info</option>
                                                                <option value="primary">Primary</option>
                                                                <option value="warning">Warning</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END MODAL -->
                            </div>
                            <!-- end col-12 -->
                        </div> <!-- end row -->

                    </div>
                </div>
   <jsp:include page="../common/masterFooter.jsp" />

   <script src="resources/administrator/js/jquery-2.1.4.min.js"></script>
   <script src="resources/administrator/js/bootstrap.min.js"></script>
   <script src="resources/administrator/js/metisMenu.min.js"></script>
   <script src="resources/administrator/js/jquery.slimscroll.min.js"></script>

   <!-- Jquery-Ui -->
   <script
      src="resources/administrator/plugins/jquery-ui/jquery-ui.min.js"></script>


   <!-- BEGIN PAGE SCRIPTS -->
   <script src="resources/administrator/plugins/moment/moment.js"></script>
   <script
      src='resources/administrator/plugins/fullcalendar/js/fullcalendar.min.js'></script>
	<script>
	 $(document).ready(function(){
		    $('#calendar').fullCalendar({
		     year: 2012,
		  month: 1,
		  date: 25,
		  header: {
		   left: 'prev,next',
		      center: 'title',
		         right: 'today'
		     },
		     buttonText: {
		         today: 'today',
		     },
		     height: 600,
		     selectable: true,
		  selectHelper: true,
		     events: function (start, end, timezone, callback) {
		         $.ajax({
		          url: '/calendar.do',
		          type: "GET",
		          async:false,
		          datatype: 'json',
		          data: {calendarDate:$('#calendar').fullCalendar('getDate').format('YYYYMMDD')},
		          success: function(data){
		              var json = data.calendarList;
		              var events = [];
		             
		              $.each(json, function(i, obj) {
		               var titleStr;
		               if(obj.code == "1"){
		                titleStr = "1.업무준비 [" + obj.title + "]건";
		               }else if(obj.code == "2"){
		                titleStr = "2.업무중 [" + obj.title + "]건";
		               }else if(obj.code == "3"){
		                titleStr = "3.업무완료 [" + obj.title + "]건";
		               }else if(obj.code == "4"){
		                titleStr = "4.업무마감 [" + obj.title + "]건";
		               }else{
		                titleStr = obj.title;
		                $("td[data-date='"+obj.start+"']").addClass('holiday');
		                $("td[data-date='"+obj.start+"']").children().css("color","red");
		               }
		               events.push({id: i+1, title: titleStr, start: obj.start, end: obj.end, color:'#'+obj.color, allDay: true});
		           });
		              callback(events);
		          },
		         });
		     },
		     eventAfterRender: function (event, element, view) {
		     },
		     dayClick: function(date, jsEvent, view) {
		      return false;
		     },
		     eventClick: function(calEvent, jsEvent, view) {
		      return false;
		  },
		    });
	</script>

   <!-- App Js -->
   <script src="resources/administrator/js/jquery.app.js"></script>


</body>
</html>