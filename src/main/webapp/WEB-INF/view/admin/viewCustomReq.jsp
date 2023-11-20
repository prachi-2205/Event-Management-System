<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin | Customise Events </title>
<!-- General CSS Files -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/custom.css">

<!-- favicon icon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/userResource/image/favicon-16x16.png" />
</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>


			<jsp:include page="header.jsp"></jsp:include>


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h4>Customise Event Details</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>No</th>
														<th>UserName</th>
														<th>EventType</th>
														<th>Person</th>
														<th>Adress</th>
														<th>Meal</th>
														<th>Decoration</th>
														<th>Place</th>
														<th>Acception</th>
														
													</tr>
												</thead>
												<tbody>
													<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
													<c:forEach items="${customiseList}" var="i" varStatus="j">

														<tr>
															<td>${j.count }</td>
															<td>${i.loginVO.username}</td>
															<td>${i.eventTypeVO.eventtype }</td>
															<td>${i.person }</td>
															<td>${i.address }</td>
															<td>${i.meal }</td>
															<td><a href="javascript:void(0)"
																onclick="showPhotos(${i.id},'decoration')">View</a></td>
															<td><a href="javascript:void(0)"
																onclick="showPhotos(${i.id},'places')"> View</a></td>
															<!-- <td><span class="badge badge-success" onclick="$('#status').val('Confirm')">Confirm</span>
																<span class="badge badge-success">Cancel</span></td>
																<td> -->
																
															
															
															<td> <c:if test="${i.status eq 'confirm'}">
																	<span class="badge badge-success">Accepted</span>
																	
																</c:if> 
																
																
																
																	<c:if test="${i.status eq 'Pending'}">
																	
																	<a href="sendmail1?id=${i.id}"><span class="badge badge-success" >Accepted</span></a><br>
																	
																<a href="cancelCustomisebooking?id=${i.id}"><span class="badge badge-success" style="margin-top:10px">Rejected</span></a>
																</c:if> 
															
														
						</td>									
																
																
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
				</section>

				<jsp:include page="footer.jsp"></jsp:include>

			</div>
		</div>


		<div class="modal fade" id="basicModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalTitle">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body" id="modalBody"></div>
					<div class="modal-footer bg-whitesmoke br">
						<button type="button" class="btn btn-primary">Save
							changes</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>



		<script type="text/javascript">
		
		function showPhotos(id,type){
			
			  const xhttp = new XMLHttpRequest();
		
			  xhttp.onreadystatechange = function() {
			  
				  if(xhttp.readyState === 4){
					  
					  var jsn = JSON.parse(xhttp.responseText);
					  
					  var data = "<div class='row'>";
					  
					 if(jsn && jsn.length > 0){
						 
						 for(var i  = 0 ; i < jsn.length ; i ++){
							 data  = data + '<div class="col-md-6"><a href="/documents/decoration/'+jsn[i].fileName+'" target="_blank"><img style="height:100px;width:200px;" src="/documents/decoration/'+jsn[i].fileName+'"></a></div>';
						 }
					 }
					 
					 
					 $('#modalTitle').html(" Images of " + type.toUpperCase());
					 $('#modalBody').html(data);
					 $('#basicModal').modal('show');
					 
					 console.log(data);
				  }
				  
			  }
			  
			  xhttp.open("GET", "showPhotos?type="+type+"&id="+id, true);
			  xhttp.send();
					
		}
		
		</script>

		<!-- General JS Scripts -->
		<script
			src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
		<!-- JS Libraies -->
		<!-- Page Specific JS File -->
		<script
			src="<%=request.getContextPath()%>/adminResources/js/datatables.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/buttons.flash.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/datatables.js"></script>
		<!-- Template JS File -->
		<script
			src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
		<!-- Custom JS File -->
		<script
			src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
</body>

</html>