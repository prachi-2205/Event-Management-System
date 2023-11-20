<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin View Booking</title>
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
										<h4>Booking Details</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>No</th>
														<th>Current Date</th>
														<th>User Name</th>
														<th>Event Type</th>
														<th>Event date</th>
														<th>Event Time</th>
														<th>Venue</th>
														<th>Catalog</th>

														<th>Action</th>
													</tr>

												</thead>
												<tbody>
													<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
													<c:forEach items="${bookingList}" var="i" varStatus="j">
														<tr>
															<td>${j.count }</td>
															<td>${i.currentDate }</td>
															<td>${i.loginVo.username }</td>
															<td>${i.eventVO.eventTypeVO.eventtype}</td>
															<td>${i.eventDate }</td>
															<td>${i.eventTime }</td>
															<td>${i.eventVenue}</td>
															<td><c:forEach items="${catalogFileList}" var="k">

																	<c:if test="${k.catalogVO.id eq i.catalogVO.id}">
																		<a
																			href="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"><img
																			class="img-fluid"
																			src="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"
																			alt="img" height="100%" width="100%"
																			style="height: 30px; border-radius: 4px"></a>
																	</c:if>
																</c:forEach> <%-- <td><div id="myImg">
																	<c:forEach items="${catalogFileList}" var="k">
																		<c:if test="${k.catalogVO.id eq i.id }">
																			<img style="height: 50px; width: 50px;"
																				src="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"
																				alt="image small" onclick="fn(this)">
																		</c:if>
																		<c:set var="p" scope="application" value="${k.id}"></c:set>
																	</c:forEach>
																</div></td> --%></td>



															<!-- ------MAil -->


															<td>
																<c:if test="${i.bookingStatus eq 'confirm'}">
																	<span class="badge badge-success">Accepted</span>
																</c:if>
																<c:if test="${i.bookingStatus eq 'cancel'}">
																	<span class="badge badge-danger">Rejected</span>
																</c:if>
																
																 <c:if test="${i.bookingStatus eq 'Pending'}">
																	<a href="finalbooking?id=${i.id}"><span
																		class="badge badge-success">Accept</span></a>
																	<a href="cancelbooking?id=${i.id}"><span
																		class="badge badge-success" style="margin-top:10px">Reject</span></a>
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

				<jsp:include page="footer.jsp"></jsp:include>

			</div>
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