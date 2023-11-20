<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Event Management System</title>
<!-- General CSS Files -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css"">
<!-- Template CSS -->
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
					<div class="row ">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<img class="rounded mw-100" alt=""
													src="<%=request.getContextPath()%>/userResource/image/gallery-8.jpg">
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0 ">
												<h3 style="padding-left: 20px">Event Managment System</h3>
												<p class="text-muted text-justify"
													style="padding-left: 20px">We are dedicated to giving
													you the very best of events, with focus on three
													charactristics i.e., cusomers's choice, customer service
													and uniqueness. -Our vision and mission is to provide easy
													way to book events according to your choice of each any
													every thing -We have event services like Birthday events.
													Marrige functions, Casual Parties and Corporate events
													etc.Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book. It has survived not only five
													centuries, but also the leap into electronic typesetting,
													remaining essentially unchanged.</p>
											</div>
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
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/apexcharts.min.js"></script>
	<!-- Page Specific JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/index.js"></script>
	<!-- Template JS File -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
</body>

</html>