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
<title>User | CityEvent</title>


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
		<div class="ttm-page-title-row text-center">
			<div class="title-box text-center">
				<div class="container">
					<div class="page-title-heading">
						<h1 class="title">OUR GREAT SERVICES</h1>
						<p class="ttm-textcolor-white">We Here You Want A Party?</p>
					</div>
					<div class="breadcrumb-wrapper">
						<div class="container">
							<span><a title="Homepage" href="index"><i
									class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span> <span
								class="ttm-bread-sep ttm-textcolor-white"> &nbsp;&nbsp;/</span>
							<span class="ttm-textcolor-white">&nbsp;&nbsp; City Events</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="ttm-row ttm-bgcolor-grey last-section clearfix">
			<div class="container">
				<div class="row text-center">
					<div class="col-lg-12">
						<div class="section-title clearfix">
							<h4>WORKING WITH EXCELLENT</h4>
							<h2 class="title">Our Latest Events/ Blog</h2>
							<div class="title-img">
								<img
									src="<%=request.getContextPath()%>/userResource/image/ds-1.png"
									alt="underline-img">
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
					<c:forEach items="${cityEventList}" var="i">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

							<div
								class="featured-imagebox featured-imagebox-post ttm-box-view-left-image box-shadow1 ttm-bgcolor-white mb-30">
								<div class="row row-equal-height">
									<div class="col-md-6 col-lg-6 ttm-featured-img-left">
										<div class="featured-thumbnail">
											<a href="single-blog.html"><img class="img-fluid"
												src="<%=request.getContextPath()%>/documents/cityEvent/${i.fileName}"
												alt="image"></a>
										</div>
									</div>
									<div class="col-md-6 col-lg-6 ttm-featured-content-right">
										<div class="featured-content featured-content-post">
											<div class="ttm-box-post-date">
												<span class="ttm-entry-date"> <time
														class="entry-date" datetime="2019-01-16T07:07:55+00:00">
														<span class="entry-month entry-year">${i.cityeventDate }</span>
													</time>
												</span>
											</div>
											<div class="featured-title ml-70">
												<h5>
													<a href="single-blog.html">${i.eventType}</a>
												</h5>
											</div>
											<div class="featured-desc"
												style="display: -webkit-box; overflow: hidden; text-overflow: ellipsis; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">
												<p>${i.cityEventdescription }</p>
											</div>
											<a
												class="ttm-btn ttm-btn-size-sm ttm-btn-shape-round ttm-btn-style-fill ttm-btn-color-black mt-20 mb-15"
												href="staticEvent?id=${i.id}" title="" style="float: right">Read
												More</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>

			</div>
		</section>

		<!--last-section end-->



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