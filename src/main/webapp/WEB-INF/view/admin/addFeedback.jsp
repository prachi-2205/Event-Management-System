<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin Add Feedback</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/adminResources/css/custom.css">

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
							<div class="col-12 col-md-12 col-lg-12">
								<div class="card">
									<form>
										<div class="card-header">
											<h4>Feedback Reply</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Subject</label> <input type="text"
													class="form-control" required="" readonly>
											</div>
											
											
											
											<div class="form-group mb-0">
												<label>Description</label>
												<textarea class="form-control" required="" readonly></textarea>
											</div>
											<div class="form-group mb-0">
												<label>Reply</label>
												<textarea class="form-control" required="" readonly></textarea>
											</div>
											
										</div>
										<div class="card-footer text-left">
											<button class="btn btn-secondary">Send</button>
										</div>
									</form>
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
	<script src="<%=request.getContextPath()%>/<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
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