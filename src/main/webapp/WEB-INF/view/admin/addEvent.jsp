<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<title>Admin | Add Event</title>
<!-- General CSS Files -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">

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
									<f:form action="saveEvent" modelAttribute="EventVO"
										method="post" id="eventForm" onsubmit="return addEvent()">
										<div class="card-header">
											<h4>${type}Event</h4>

										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Event Type<span style="color: red;">*</span></label>
												<f:select path="eventTypeVO.id"
													class="form-control form-select" id="eventType">
													<option value="default" selected>----- Select
														-----</option>
													<c:forEach items="${eventTypeList}" var="i">
														<f:option value="${i.id}">${i.eventtype}</f:option>

													</c:forEach>
												</f:select>
											</div>
											<div class="form-group">
												<label>Person<span style="color: red;">*</span></label>
												<f:input path="eventperson" name="eventperson"
													id="eventperson" type="text" class="form-control" />
											</div>
											<div class="form-group">
												<label> With Meal Price<span style="color: red;">*</span></label>
												<f:input path="WithMealPrice" name="WithMealPrice" 
													type="text" class="form-control" />
											</div>
											
											<div class="form-group">
												<label> Without Meal Price<span style="color: red;">*</span></label>
												<f:input  path="withoutMealPrice" name="withoutMealPrice" 
													type="text" class="form-control" />
											</div>
											

											


											<div class="form-group mb-0">
												<label>Description<span style="color: red;">*</span></label>
												<f:textarea path="eventdescrption" name="eventdescrption"
													id="eventdescrption" type="text" class="form-control"></f:textarea>
											</div>
										</div>
										<f:hidden path="id" />
										<div class="card-footer text-left">
											<button class="btn btn-secondary">${button}</button>
										</div>
									</f:form>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-6 col-lg-6"></div>
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
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
	<!-- Validation Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/validation/addEvent.js"></script>
	<!-- -------------------------  -->
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