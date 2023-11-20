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


<title>EMS | View UserCustomise Requirment</title>

<!-- favicon icon -->
<!-- Validation CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/userResource/css/jquery.toast.min.css">


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
			<div class="section-overlay"></div>
			<div class="title-box text-center">
				<div class="container">
					<div class="page-title-heading">
						<h1 class="title">User Customization Request</h1>
					</div>
					<div class="breadcrumb-wrapper">
						<div class="container">
							<span><a title="Homepage" href="index"><i
									class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span> <span
								class="ttm-bread-sep ttm-textcolor-white"> &nbsp;&nbsp;/</span>
							<span class="ttm-textcolor-white">&nbsp;&nbsp; Events</span><span
								class="ttm-bread-sep ttm-textcolor-white"> &nbsp;&nbsp;/</span>
							
							<span class="ttm-textcolor-white">&nbsp;&nbsp; Your Requirements</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--page-title END-->

		<!--site-main-->
		<div class="site-main">

			<!-- checkout-section -->
			<section
				class="ttm-row checkout-section ttm-bgcolor-grey break-991-colum clearfix">
				<div class="container">

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
					<f:form name="checkout" class="checkout row box-shadow1" modelAttribute="userCustomEventRequirmentVO" method="post" onsubmit="return userCustomization()" 
						action="saveCustomerRequirment" enctype="multipart/form-data">
						<div class="col-lg-12 col-6">
							<div class="billing-fields">
								<h3>Your Requirements</h3>




								<p class="checkout-form">
									<label>Event TYpe&nbsp;<abbr class="required"
										title="required">*</abbr></label> <f:select path="eventTypeVO.id"
												class="form-control form-select" id="eventType">
												<option value="default" selected>------Select------</option>
												<c:forEach items="${eventTypeList}" var="i">

													<f:option value="${i.id}">${i.eventtype}</f:option>


												</c:forEach>
											</f:select>
										

								</p>
								<p class="checkout-form">
									<label>Person&nbsp;<abbr class="required"
										title="required">*</abbr></label> <f:input type="number"
										class="input-tex" name="billing_first_name" id="person"
										placeholder="No. of person in party" path="person" value=""/>
								</p>
								<p class="checkout-form">
									<label>Meal&nbsp;<abbr class="required"
										title="required">*</abbr></label> <br> <input type="checkbox"
										class="input-tex" placeholder="" value="BreakFast" 
										name="meal1" />&nbsp;BreakFast <input type="checkbox"
										class="input-tex" placeholder="" value="lunch" name="meal1" />&nbsp;lunch
									<input type="checkbox" class="input-tex" placeholder=""
										value="dinner" name="meal1" />&nbsp;dinner <input
										type="checkbox" class="input-tex" placeholder=""
										value="snacks" name="meal1" />&nbsp;snacks <input type="checkbox" class="input-tex" placeholder=""
										value="dinner" name="meal1" />&nbsp; No Meal	 

								</p>
								<hr>
								<p class="checkout-form">
									<label>Expected Decoration<span style="color: red;">*</span></label>
									<input type="file" name="file" class="input-tex"
										multiple="multiple" id="file">

								</p>
								<hr>
								<p class="checkout-form">
									<label>Place/Hall<span style="color: red;">*</span></label> <input
										type="file" name="file1" class="input-tex" multiple="multiple"
										id="file">

								</p>
								<div class="additional-fields">
									<h3>Address</h3>
									<p class="checkout-form">
										<label>Street address&nbsp;<abbr class="required"
											title="required">*</abbr></label> <f:input type="text" id="address"
											class="input-text" placeholder="House number and street name" path="address"
											value=""/>
									</p>
								</div>


							</div>
						</div>
						<div class="col-lg-6"></div>



						<hidden path="id" />
						<div class="checkout-form place-order">

							<p>
								<button type="submit"
									class="button shape-round
								
								data-value="Placeorder">Get
									Quote</button>
							</p>
						</div>
					</f:form>
				</div>
			</section>
			<!-- checkout-section end -->

		</div>
		<!--site-main end-->

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
		src="<%=request.getContextPath()%>/userResource/js/jquery-validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/owl.carousel.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/jquery.prettyPhoto.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResource/js/numinate.min.js?ver=4.9.3"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/main.js"></script>
	
	<!-- Validation Js -->
		<script src="<%=request.getContextPath()%>/userResource/js/jquery.toast.min.js"></script>
		<script src="<%=request.getContextPath()%>/userResource/js/toaster.js"></script>
		<script src="<%=request.getContextPath()%>/userResource/js/validation/userCustomization.js"></script>
		<!-- -------------------------  -->
	<script type="text/javascript">
		function del(d) {
			var cartTableBody = document.getElementById("cartTableBody");
			var l = d.parentNode.parentNode;
			cartTableBody.deleteRow(l.rowIndex);
			grandTotal()
		}
	</script>

</body>
</html>
