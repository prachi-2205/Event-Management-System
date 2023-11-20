<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description"
	content="Planwey &#8211; Event planner &amp; celebration html Template" />
<meta name="author" content="https://www.themetechmount.com/" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Event Managment System</title>

<!-- favicon icon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/userResource/image/favicon-16x16.png" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/bootstrap.min.css" />

<!-- animate -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/animate.css" />

<!-- owl-carousel -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/owl.carousel.css">

<!-- fontawesome -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/font-awesome.css" />

<!-- themify -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/themify-icons.css" />

<!-- flaticon -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/flaticon.css" />

<!-- REVOLUTION LAYERS STYLES -->

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/layers.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/settings.css">

<!-- prettyphoto -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/prettyPhoto.css">

<!-- shortcodes -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/shortcodes.css" />

<!-- main -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/main.css" />

<!-- responsive -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/responsive.css" />
	
	<!-- Validation CSS Files -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/jquery.toast.min.css" />

</head>

<body>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<!--page start-->
	<div class="page">



		<!--syte-main start-->

		<!--contact-intro-section-end-->
		<section
			class="ttm-row contact-form-section2 bg-layer break-991-colum clearfix">
			<div class="container">
				<div class="row res-1199-mlr-15">
					<div class="col-md-6 col-lg-6">
						<!-- col-bg-img-three -->
						<div class="col-bg-img-three ttm-col-bgimage-yes ttm-bg">
							<div class="ttm-col-wrapper-bg-layer ttm-bg-layer"></div>
							<div class="layer-content"></div>
						</div>
						<!-- col-bg-img-three end-->
						<img
							src="<%=request.getContextPath()%>/userResource/image/team-img1.jpg"
							class="ttm-equal-height-image" alt="bg-image">
					</div>
					<div class="col-md-6 col-lg-6">
						<div class="padding-12 box-shadow">
							<!-- section title -->
							<div class="section-title clearfix mb-30">
								<h3 class="title">New Registration</h3>
								<p>Register Yourself and take maximum benefits of our Event management system (EMS)
									services!! CReate An Account!</p>
							</div>
							<!-- section title end -->
							<f:form onsubmit="return registration()" id="contactform" class="row contactform wrap-form clearfix"
								method="post" action="saveUserReg" novalidate="novalidate" modelAttribute="UserVO">
								<label class="col-md-6"> <i class="ti ti-user"></i> 
									<span class="ttm-form-control">
										<f:input class="text-input" path="userfullname"
										name="name" type="text" value="" placeholder="Your Name:*"
										required="required"/>
									</span>
								</label>
										
								<label class="col-md-6"> <i class="ti ti-mobile"></i> 
									<span class="ttm-form-control">
									<f:input class="text-input" path="userphonenumber"
										name="phone" type="number" value="" placeholder="Your Number:*"
										required="required"/>
									</span>
								</label> 
								<label class="col-md-12"> <i class="ti ti-comment"></i>
									<span class="ttm-form-control">
									<f:textarea path="useraddress"
											class="text-area" name="Address" placeholder="Your Address:*"
											required="required"></f:textarea>
									</span>
								</label>
								<label class="col-md-6"> <i class="ti ti-email"></i> 
									<span class="ttm-form-control">
										<f:input class="text-input" id="username" path="loginvo.username"
										name="email" type="text" value=""
										placeholder="Your email-id:*" required="required"/>
									</span>
								</label> 
								
								<label class="col-md-6"> <i class="ti ti-key"></i> 
									<span class="ttm-form-control">
									<f:input class="text-input" id="password" path="loginvo.password"
										name="password" type="password" value="" placeholder="Password:*"
								required="required"/>
									</span>
								</label> 
								<input name="submit" type="submit" value="Submit"
									class="ttm-btn ttm-btn-size-md ttm-btn-shape-round ttm-btn-style-fill ttm-btn-color-skincolor mt-20"
									id="submit" title="Submit">
								
								<label class="col-md-12" style="text-align: end">
								 Have an account?
									<a href="/login">login</a>
								</label>
								<f:hidden path="id"/>
						</f:form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!--back-to-top start-->
	<a id="totop" href="#top"> <i class="fa fa-angle-up"></i>
	</a>
	<!--back-to-top end-->



	<!-- Javascript -->

	<script
		src="<%=request.getContextPath()%>/userResource/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/tether.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/jquery.easing.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/jquery-validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/jquery-waypoints.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/owl.carousel.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/jquery.prettyPhoto.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/main.js"></script>

<!-- Validation Js -->
	<script
		src="<%=request.getContextPath()%>/userResource/js/jquery.toast.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/validation/registration.js"></script>
	<!-- -------------------------  -->
</body>
</html>
