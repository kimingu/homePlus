<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
   
        <link href="resources/administrator/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/administrator/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>
        
        <!-- Bootstrap core CSS -->
        <link href="resources/administrator/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/administrator/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="resources/administrator/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/administrator/css/style.css" rel="stylesheet">
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
	   #inputName{
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
					<h4 class="header-title m-t-0 m-b-20">가입자 수 통계 보기</h4>
				</div>
				<div class="col-lg-12">
					<div class="card-box">
						<h4 class="m-t-0">년별 가입 수 비교</h4>
						<div class="text-center">
							<ul class="list-inline chart-detail-list">
								<li>
									<h5 class="font-normal">
										<i class="m-r-10"><img src="resources/administrator/images/deepBlue.png" width="15px"></i>입주자 가입 수
									</h5>
								</li>
								<li>
									<h5 class="font-normal">
										<i class="m-r-10"><img src="resources/administrator/images/deepGray.png" width="15px"></i>관리자 가입 수
									</h5>
								</li>
							</ul>
						</div>
						<div id="morris-line-example" style="height: 300px;"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
                                 <div class="row p-t-50">
                            <div class="col-12">
                                <div class="table-responsive">
                                    <h4 class="font-14">모든 입주자 보기</h4>

                                    <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>주소</th>
                                            <th>가입 일</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="m" items="${ mList }">
                                        <tr>
                                            <td>${ m.mId }</td>
                                            <td>${ m.mName }</td>
                                            <td>${ m.mAddress }</td>
                                            <td><fmt:formatDate value="${ m.mEnrollDate }" pattern="yyyy년 MM월 dd일"/></td>
                                        </tr>
                                        </c:forEach>  
                                        </tbody>
                                    </table>                                
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="row p-t-50">
                            <div class="col-12">
                                <div class="table-responsive">
                                    <h4 class="font-14">모든 관리자 보기</h4>

                                   <table id="datatable-keytable" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>주소</th>
                                            <th>연락처</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="a" items="${ aList }">
                                        <tr>
                                            <td>${ a.aId }</td>
                                            <td>${ a.aName }</td>
                                            <td>${ a.aAddress }</td>
                                            <td>${ a.aPhone }</td>
                                        </tr>
                                        </c:forEach>  
                                        </tbody>
                                    </table>                                
                                </div>
                            </div>
                        </div>
                        
		</div>
		
		
	</div>
	


	<jsp:include page="../common/masterFooter.jsp"/>

											<input type="hidden" id="mcMember17" value="${ mc.mcMember17 }">
											<input type="hidden" id="mcMember18" value="${ mc.mcMember18 }">
											<input type="hidden" id="mcMember19" value="${ mc.mcMember19 }">
											<input type="hidden" id="mcMember20" value="${ mc.mcMember20 }">
											<input type="hidden" id="mcAdmin17" value="${ mc.mcAdmin17 }">
											<input type="hidden" id="mcAdmin18" value="${ mc.mcAdmin18 }">
											<input type="hidden" id="mcAdmin19" value="${ mc.mcAdmin19 }">
											<input type="hidden" id="mcAdmin20" value="${ mc.mcAdmin20 }">

	<script type="text/javascript">
	Morris.Line({
		  element: 'morris-line-example',
		  data: [
		    { y: '2017년', a:$("#mcMember17").val(), b:$("#mcAdmin17").val() },
		    { y: '2018년', a:$("#mcMember18").val(), b:$("#mcAdmin18").val() },
		    { y: '2019년', a:$("#mcMember19").val(), b:$("#mcAdmin19").val() },
		    { y: '2020년', a:$("#mcMember20").val(), b:$("#mcAdmin20").val() }
		  ],
		  xkey: 'y',
		  ykeys: ['a', 'b'],
		  labels: ['입주민 가입 수', '관리자 가입 수']
		});
	</script>



	
         <script type="text/javascript">
            $(document).ready(function() {

                // Default Datatable
                $('#datatable').DataTable();

                //Buttons examples
                var table = $('#datatable-buttons').DataTable({
                    lengthChange: false,
                    buttons: ['copy', 'excel', 'pdf']
                });

                // Key Tables

                $('#key-table').DataTable({
                    keys: true
                });

                // Responsive Datatable
                $('#responsive-datatable').DataTable();

                // Multi Selection Datatable
                $('#selection-datatable').DataTable({
                    select: {
                        style: 'multi'
                    }
                });

                table.buttons().container()
                        .appendTo('#datatable-buttons_wrapper .col-md-6:eq(0)');
            } );
            
            ('#dataTable').dataTable({
                "bServerSide": true,
                ....
                "bDestroy": true
            });
        </script>
        
                <!-- Datatable js -->
        <script src="resources/administrator/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/administrator/plugins/datatables/jszip.min.js"></script>
        <script src="resources/administrator/plugins/datatables/pdfmake.min.js"></script>
        <script src="resources/administrator/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/administrator/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/administrator/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.colVis.js"></script>
        <script src="resources/administrator/plugins/datatables/dataTables.fixedColumns.min.js"></script>

        <!-- init -->
        <script src="resources/administrator/pages/jquery.datatables.init.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>
        <!-- Dashboard init -->
		<script src="resources/administrator/pages/jquery.dashboard.js"></script>

        <!-- App Js -->
        <script src="resources/administrator/js/jquery.app.js"></script>
</body>
</html>