<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin Add City</title>
<!-- Validation CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">

<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

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
			<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-12">
								<div class="card">
									<f:form action="saveCity" method="post" modelAttribute="CityVO"
										id="cityFrom" onsubmit="return addCity()">
										<div class="card-header">
											<h4>${add} City</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>City Name<span style="color:red;">*</span></label>
												<f:input type="text" path="cityname" name="cityname"
													id="cityname" class="form-control"/>
											</div>

											<div class="form-group mb-0">
												<label>Description<span style="color:red;">*</span></label>
												<f:textarea class="form-control" path="citydescription"
													name="citydescription" id="citydescription" required="" />
											</div>
										</div>
										<div class="card-footer text-left">
											<f:hidden path="id" />
											<button class="btn btn-secondary">${save}</button>
										</div>
									</f:form>
								</div>

							</div>

						</div>
					</div>
				</section>

				<jsp:include page="footer.jsp"></jsp:include>

			</div>
		</div>
		<!-- General JS Scripts -->
		<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
		<!-- JS Libraies -->
		<!-- Page Specific JS File -->
		<!-- Template JS File -->
		<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
		<!-- Validation Js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/validation/addCity.js"></script>
		<!-- -------------------------  -->

		<!-- Custom JS File -->
		<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
		<script>
			$(document).ready(function() {
				iziToast.error({
					title : 'Hello, world!',
					message : 'This awesome plugin is made by iziToast',
					position : 'topRight'
				});
			});
		</script>
</body>

</html>