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
					<h4 class="header-title m-t-0 m-b-20">수입 통계 보기</h4>
				</div>
				<div class="col-lg-12">
					<div class="card-box">
						<h4 class="m-t-0">년별 수입비교</h4>
						<div class="text-center">
							<ul class="list-inline chart-detail-list">
								<li>
									<h5 class="font-normal">
										<i class="m-r-10"><img src="resources/administrator/images/deepBlue.png" width="15px"></i>게시글 총 등록 수
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
                                    <h4 class="font-14">모든 게시글 보기</h4>

                                    <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>회사코드</th>
                                            <th>날짜</th>
                                            <th>금액</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="b" items="${ bList }">
                                        <tr>
                                            <td>${ b.b_code }</td>
                                            <td>${ b.m_id }</td>
                                            <td>${ b.b_title }</td>
                                            <td><fmt:formatDate value="${ b.b_create_date }" pattern="yyyy년 MM월 dd일"/></td>
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

											<input type="hidden" id="bcBoard17" value="${ bc.bcBoard17 }">
											<input type="hidden" id="bcBoard18" value="${ bc.bcBoard18 }">
											<input type="hidden" id="bcBoard19" value="${ bc.bcBoard19 }">
											<input type="hidden" id="bcBoard20" value="${ bc.bcBoard20 }">


	<script type="text/javascript">
	Morris.Line({
		  element: 'morris-line-example',
		  data: [
		    { y: '2016년', a:0 },
		    { y: '2017년', a:$("#bcBoard17").val() },
		    { y: '2018년', a:$("#bcBoard18").val() },
		    { y: '2019년', a:$("#bcBoard19").val() },
		    { y: '2020년', a:$("#bcBoard20").val() }
		  ],
		  xkey: 'y',
		  ykeys: ['a'],
		  labels: ['해당 해의 게시글 등록 수']
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