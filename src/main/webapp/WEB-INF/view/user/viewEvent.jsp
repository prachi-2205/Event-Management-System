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
<title>EMS | User | Event</title>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


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

</head>

<body>

	<!--page start-->
	<div class="page">

		<!--header start-->

		<jsp:include page="header.jsp"></jsp:include>

		<!--header end-->
		<!--page-title start-->
		<div class="ttm-page-title-row text-center">
			<div class="title-box text-center">
				<div class="container">
					<div class="page-title-heading">
						<h1 class="title">OUR GREAT SERVICES</h1>
						<p class="ttm-textcolor-white">We Here You Want A Party?</p>
					</div>
					<div class="breadcrumb-wrapper">
						<div class="container">
							<span><a title="Homepage" href="index.html"><i
									class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span> <span
								class="ttm-bread-sep ttm-textcolor-white"> &nbsp;&nbsp;/</span>
							<span class="ttm-textcolor-white">&nbsp;&nbsp; Services</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--page-title end-->
		<!--site-main-->
		<div class="site-main">



			<section class="ttm-row service-section3 clearfix">
				<div class="container">
					<div class="row text-center">
						<div class="col-lg-12">
							<div class=" section-title clearfix">
								<h4>GREAT PROVIDE PLANWEY</h4>
								<h2 class="title">Provide Best Services</h2>
								<div class="title-img">
									<img
										src="<%=request.getContextPath()%>/userResource/image/ds-1.png"
										alt="underline-img">
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<c:forEach var="i" items="${eventTypeList}">
							<div class="col-md-6 col-lg-4">
								<a href="viewEventDetails?id=${i.id}">
								<div class="featured-imagebox static-title mb-45">
									<div class="featured-thumbnail">
									<img class="img-fluid" 
											src="<%=request.getContextPath()%>/documents/eventType/${i.fileName}"
											alt="">
									</div>
									<div class="featured-content">
										<div class="featured-title">
											<h5>
												<a href="viewEventDetails?id=${i.id}">${i.eventtype}</a>
											</h5>
										</div>
									</div>

								</div>
								</a>
							</div>
						</c:forEach>
					</div>
					
				</div>
			</section>








			<!--footer-->
			<jsp:include page="footer.jsp"></jsp:include>
			<!--footer-END-->

		</div>
		<!-- page end -->

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
			src="<%=request.getContextPath()%>/userResource/js/jquery-waypoints.js"></script>
		<script
			src="<%=request.getContextPath()%>/userResource/js/owl.carousel.js"></script>
		<script
			src="<%=request.getContextPath()%>/userResource/js/jquery.prettyPhoto.js"></script>
		<script
			src="<%=request.getContextPath()%>/userResource/js/numinate.min.js?ver=4.9.3"></script>
		<script src="<%=request.getContextPath()%>/userResource/js/main.js"></script>
</body>
</html>