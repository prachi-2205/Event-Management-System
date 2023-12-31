<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin Manage User</title>
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
										<h4>User Details</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
													<tr>
														<th>NO</th>
														
														<th>User Name</th>
														<th>Full Name</th>
														<th>Address</th>
														<th>Phone No </th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${userList}" var="i" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td>${i.loginvo.username }</td> 
														<td>${i.userfullname}</td>
														<td>${i.useraddress}</td>
														<td>${i.userphonenumber}</td>
														

														<td><c:if test="${i.loginvo.enabled eq '1'}"><a href="changeAccountStatus?flag=0&id=${i.loginvo.loginId}">
														<span class="btn btn-outline-success">Activate</span></a>
															</c:if>
															<c:if test="${i.loginvo.enabled eq '0'}"><a href="changeAccountStatus?flag=1&id=${i.loginvo.loginId}">
															<span class="btn btn-outline-danger">Deactivate</span></a>
															</c:if></td>
					
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