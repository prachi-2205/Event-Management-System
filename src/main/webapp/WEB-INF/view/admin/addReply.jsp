<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin | Complaint</title>
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
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
									<f:form modelAttribute="userCustomEventRequirmentVO" action="changevalue" method="post" >
										<div class="card-header">
											<h4>Conformation Reply</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
											<label>Event TYpe&nbsp;<abbr class="required"
												title="required">*</abbr></label>
											<f:select path="eventTypeVO.id"
												class="form-control form-select" id="eventType">
												<option value="default" selected>------Select------</option>
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
												<c:forEach items="${eventTypeList}" var="i">

													<f:option value="${i.id}">${i.eventtype}</f:option>


												</c:forEach>
											</f:select>
											</select>
										</div>
										
										
											<div class="form-group">
											<label>Person&nbsp;<abbr class="required"
												title="required">*</abbr></label>
											<f:input type="number" class="input-tex"
												name="billing_first_name" placeholder="Enter Your FirstName"
												path="person" value="" />
										</div>
											
										
											<div class="form-group mb-0">
												<label>Address</label>
												<f:textarea class="form-control"  path="address" readonly="" ></f:textarea>
											</div>
											<div class="form-group mb-0">
												<label>Price</label>
												<f:textarea class="form-control" required="" path="price"></f:textarea>
											</div>
											<%-- <div class="form-group">
												<label>Reply</label> <f:input type="text" path="complaindate"
													class="form-control" readonly=""/>
											</div> --%>
											
											
										</div>
										
										<div class="card-footer text-left">
											<button class="btn btn-secondary">Send Confirm Mail</button>
										</div>
										
										<f:hidden path="loginVO.loginId"/>
										<f:hidden path="id" name="id" id="id"/>
										<f:hidden path="meal" name="meal" id="meal"/>
									</f:form>
								</div>
							</div>
							<div class="col-12 col-md-6 col-lg-6">
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
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
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