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
							<div class="col-12 col-md-12 col-lg-12">
								<div class="card">
									<form>
										<div class="card-header">
											<h4>Add Events Menu</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Event Type</label> <select
													class="form-control form-select">
													<option selected disabled>Select Event Type</option>
													<option>Option 1</option>
													<option>Option 2</option>
												</select>
											</div>
											<div class="form-group">
												<label>Person</label> <input type="text"
													class="form-control" required="">
											</div>
											<div class="form-group">
												<label>Price</label> <input type="text" class="form-control"
													required="">
											</div>

											<div class="form-group">

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														id="inlineradio1" value="option1" name="meal"> <label
														class="form-check-label" for="inlineradio1">With
														Meal</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														id="inlineradio2" value="option2" name="meal"> <label
														class="form-check-label" for="inlineradio2">Without
														Meal</label>
												</div>
												
							
												<!-- <div class="custom-control custom-radio">
													<input type="radio" id="customRadio1" name="customRadio"
														class="custom-control-input"> <label
														class="custom-control-label" for="customRadio1">Toggle
														this custom radio</label>
												</div>
												<div class="custom-control custom-radio">
													<input type="radio" id="customRadio4" name="customRadio"
														class="custom-control-input"> <label
														class="custom-control-label" for="customRadio4">Or
														toggle this other custom radio</label>
												</div> -->
												<br>
											</div>




										</div>

										<div class="form-group mb-0">
											<label>Description</label>
											<textarea class="form-control" required=""></textarea>
										</div>
								</div>
								<div class="card-footer text-left">
									<button class="btn btn-primary">Add</button>
								</div>
								</form>
							</div>
						</div>
						<div class="col-12 col-md-6 col-lg-6"></div>
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
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
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