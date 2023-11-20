<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin | View Complaint</title>

<!-- Validation CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

<!-- favicon icon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/userResource/image/favicon-16x16.png" />
</head>

<body>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
										<h4>User's Complaint</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>No</th>
														<th>User Name</th>
														<th>Subject</th>
														<th>Description</th>
														<th>Status</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
											<%@taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt"%>
													<c:forEach items="${complainList}" var="i" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td>${i.loginVO.username}</td>
														<td>${i.complainsubject}</td>
														<td>${i.complaindescrption}</td>
														
														
															<td> <c:if test="${i.complainstatus eq 'Resolved\'}">
																	<span class="badge badge-success">Resloved</span>
																	
																</c:if> 
																 <c:if test="${i.complainstatus eq 'Pending'}">
																
																	<a href="addComplaintReply1?id=${i.id}" class="btn btn-outline-info">Reply</a>
																</c:if> 
															
														
														</td>
														<td><a href="deleteComplain?id=${i.id}"><i class="fas fa-trash-alt"
																style="color: red; font-size: 20px; margin-left: 15px;"></i></a></td>
													
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
			</div>

			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/datatables.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.flash.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/datatables.js"></script>
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
	<!-- Validation Js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/validation/viewComplaint.js"></script>
		<!-- -------------------------  -->
	
	
</body>

</html>