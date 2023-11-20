<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Otika - Admin Dashboard Template</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='adminResources/image/favicon.ico' />
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
														<th> Booking Date</th>
														<th>User Name</th>
														<th>Event_type</th>
														<th>Event Date</th>
														<th>Event Time</th>
														<th>Catalog</th>
														<th>Add Ons</th>
														<th>Venue </th>
														<th>Person</th>
														<th>Description</th>

														<th>Status</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>15/12/21</td>
														<td>xyz@gmail.com</td>
														<td>Birthday</td>
														<td>15/01/2022</td>
														<td>9.00 PM</td>
														<td><img alt="" src="adminResources/image/1.png"
															style="height: 30px; border-radius: 4px"> <img
															alt="" src="adminResources/image/1.png"
															style="height: 30px; border-radius: 4px"> <img
															alt="" src="adminResources/image/1.png"
															style="height: 30px; border-radius: 4px"></td>
														<td>Anchor</td>
														<td>Dinnerbell</td>
														<td>200</td>
														<td>*****</td>
														<!-- <a href="addFeedbackReply.jsp" class="btn btn-outline-info">Reply</a> -->
														<td><span class="badge badge-success">Confirm</span>
															<span class="badge badge-success">Cancle</span></td>
														<td><a href="#"><i class="fas fa-trash-alt"
																style="color: red; font-size: 20px; margin-left: 15px;"></i></a></td>
													</tr>

													
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
	<script src="adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<script src="adminResources/js/datatables.min.js"></script>
	<script src="adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script src="adminResources/js/dataTables.buttons.min.js"></script>
	<script src="adminResources/js/buttons.flash.min.js"></script>
	<script src="adminResources/js/jszip.min.js"></script>
	<script src="adminResources/js/pdfmake.min.js"></script>
	<script src="adminResources/js/vfs_fonts.js"></script>
	<script src="adminResources/js/buttons.print.min.js"></script>
	<script src="adminResources/js/datatables.js"></script>
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
</body>

</html>