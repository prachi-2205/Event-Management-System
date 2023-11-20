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


<title>EMS | Booking</title>


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
						<h1 class="title">CHECKOUT</h1>
					</div>
					<div class="breadcrumb-wrapper">
						<div class="container">
							<span><a title="Homepage" href="index.html"><i
									class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span> <span
								class="ttm-bread-sep ttm-textcolor-white"> &nbsp; ⁄
								&nbsp;</span> <span><a title="Homepage" href="shop.html">&nbsp;&nbsp;Shop</a></span>
							<span class="ttm-bread-sep ttm-textcolor-white"> &nbsp;
								⁄ &nbsp;</span> <span class="ttm-textcolor-white">Checkout</span>
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
					<!-- row -->
					<div class="row">
						<div class="col-lg-12">
							<div class="coupon_toggle">
								<div class="coupon_code">


									<div class="featured-thumbnail">
										<p class="checkout-form">
											<label>Addons&nbsp;</label>
										</p>
										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
										<c:forEach items="${bookingList}" var="i">
											<a href="<%=request.getContextPath()%>/documents/addon/${i.addonvo.fileName}"><img class="img-fluid"
												src="<%=request.getContextPath()%>/documents/addon/${i.addonvo.fileName}"
												alt="img" height="100%" width="100%"
												style="height: 50px; width: 50px;"></a>
										</c:forEach>
									</div>

								</div>
								<div class="coupon_code">


									<div class="featured-thumbnail">
									<p class="checkout-form">
											<label>Catalog&nbsp;</label>
										</p>
										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
										<c:forEach items="${bookingList}" var="i" varStatus="j">
												<c:if test="${j.count lt '2'}">
											<c:forEach items="${catalogFileList}" var="k">
											<c:if test="${k.catalogVO.id eq i.bookingVO.catalogVO.id}">
											<img class="img-fluid"
												src="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"
												alt="img" height="100%" width="100%"
												style="height: 50px; width: 50px;">
												</c:if>
												</c:forEach>
												</c:if>
										</c:forEach>
									</div>

								</div>
							</div>
							<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
							<f:form name="checkout" method="post"
								class="checkout row box-shadow1" action="saveBookingDetails" modelAttribute="bookingVO" onsubmit="return booking()">
								<div class="col-lg-6">
									<div class="billing-fields">
										<h3>Billing details</h3>
										<p class="checkout-form">
											<label>First name&nbsp;<abbr class="required"
												title="required">*</abbr></label> <f:input type="text" id="FirstName"
												class="input-tex" name="billing_first_name" placeholder="Enter Your FirstName" path="FirstName"
												value=""/>
										</p>
										<p class="checkout-form">
											<label>Last name&nbsp;<abbr class="required"
												title="required">*</abbr></label> <f:input type="text" id="LastName"
												class="input-text " name="billing_last_name" placeholder="Enter Your LastName" path="LastName"
												value=""/>
										</p>
										
										<p class="checkout-form">
											<label>Street address&nbsp;<abbr class="required"
												title="required">*</abbr></label> <input type="text" 
												class="input-text" name="billing_address_1"
												placeholder="House number and street name" value="">
										</p>
										<p class="checkout-form">
											<label>Apartment, suite, or unit.&nbsp; <span
												class="optional">(optional)</span>
											</label> <input type="text" class="input-text "
												name="billing_address_2"
												placeholder="Apartment, suite, unit etc. (optional)"
												value="">
										</p>
										<p class="checkout-form">
											<label>Town / City&nbsp;<abbr class="required"
												title="required">*</abbr></label> <input type="text"
												class="input-text " name="billing_city" placeholder=""
												value="">
										</p>
										
										<p class="checkout-form">
											<label>Postcode / ZIP&nbsp;<abbr class="required"
												title="required">*</abbr></label> <input type="text"
												class="input-text " name="billing_postcode" placeholder=""
												value="">
										</p>
										<p class="checkout-form">
											<label>Phone&nbsp;<span class="optional"></span></label>
											<f:input type="tel" class="input-text " name="billing_phone" id="phoneNo"
												placeholder="Enter Your PhoneNo"  path="phonerNo" value=""/>
										</p>
										<p class="checkout-form">
											<label>Email address&nbsp;<abbr class="required"
												title="required">*</abbr></label> <f:input type="email" path="EmailAddress" id="EmailAddress"
												class="input-text " name="billing_email" placeholder="Enter Email Address"
												value=""/>
										</p>
									</div>
								</div>
								<div class="col-lg-6" style="margin-top: 52px;">
									
									
									
									
									<p class="checkout-form">
										<label>Event Type&nbsp;<abbr class="required"
											title="required">*</abbr></label> <input type="text"
											class="input-tex" placeholder="" value=""/>
									</p>
									<p class="checkout-form">
										<label>Event Date&nbsp;<abbr class="required"
											title="required">*</abbr></label> <f:input type="date" id="date_picker"
											class="input-tex" placeholder="" value="" path="eventDate"/>
									</p>
									<p class="checkout-form">
										<label>Event Time&nbsp;<abbr class="required"
											title="required">*</abbr></label> <f:input type="time" id="eventTime"
											class="input-tex" placeholder="" value="" path="eventTime"/>
									</p>
									<p class="checkout-form">
										<label>Event Venue&nbsp;<abbr class="required"
											title="required">*</abbr></label> <f:input type="text" id="eventVenue"
											class="input-tex" placeholder="" value="" path="eventVenue"/>
									</p>
									<br>
									<div class="additional-fields">
										<h3>Events Details</h3>
										<div class="additional-fields-wrapper">
											<p class="checkout-form" id="order_comments_field">
												<label>Order notes&nbsp;<span class="optional">(optional)</span></label>
												<textarea name="order_comments" class="input-text "
													id="order_comments"
													placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
											</p>
										</div>
									</div>
								</div>
								<div class="col-lg-12">
									<h3 id="order_review_heading">Your order</h3>
									<div id="order_review" class="checkout-review-order">
										<table class="shop_table checkout-review-order-table">
											<thead>
												<tr>
													
													<th class="product-name">Product</th>
													<th class="product-total">Total</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach items="${bookingList}" var="i" >
												
												<tr class="cart_item">
													
													<td class="product-name">${i.addonvo.addonwork}&nbsp; <strong
														class="product-quantity">${i.addonQuantity }</strong>
													</td>
													<td class="product-total"><span class="Price-amount">
															<span class="Price-currencySymbol"><i
														class="fa fa-inr"></i></span>${i.addonvo.addonprice}
													</span></td>
													
												</tr>
												
											</c:forEach>
												<c:forEach items="${bookingList}" var="k" varStatus="j">
													<c:if test="${j.count lt '2'}">
												<tr>
												
													<td>
													
														<span class="Price-currencySymbol">Event Price</span>
													</td>
													<td>
													
														<span class="Price-currencySymbol"><i
														class="fa fa-inr"></i></span>${k.bookingVO.eventPrice}
													</td>
												
												</tr>
												<tr>
													
												<td>
													
														<span class="Price-currencySymbol">Catalog Price</span>
													</td>
													<td>
													
														<span class="Price-currencySymbol"><i
														class="fa fa-inr"></i></span>${k.bookingVO.catalogPrice}
													</td>
													
												</tr>
												
												<tr class="order-total">
												
													<th>Total</th>
													<td><strong><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol"><i
														class="fa fa-inr"></i></span>${k.bookingVO.totalPrice}</span></strong>
													</td>
												</tr>
											</tfoot>
											</tbody>
												</c:if>
												
												<tfoot>
												
												
												
												
											
										</c:forEach>
										
										</table>
										<f:hidden path="catalogPrice"/>
									
									<f:hidden path="currentDate"/>
									<f:hidden path="eventPrice"/>
									<f:hidden path="eventMeal"/>
									<f:hidden path="eventVO.id"/>
									<f:hidden path="loginVo.loginId"/>
									<f:hidden path="totalPrice"/>
									<f:hidden path="catalogVO.id"/>
									<f:hidden path="id"/>
											<div class="checkout-form place-order">
												
												<button type="submit" class="button shape-round"
													name="checkout_place_order" id="place_order"
													value="Place order" data-value="Place order">Confirm The Event</button>
											</div>
										</div>
									</div>
								</div>
							</f:form>
						</div>
					</div>
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
		<script src="<%=request.getContextPath()%>/userResource/js/validation/booking.js"></script>
		<!-- -------------------------  -->
	
	<script type="text/javascript">
	
	function del(d) {
		var cartTableBody = document.getElementById("cartTableBody");
		var l = d.parentNode.parentNode;
		cartTableBody.deleteRow(l.rowIndex);
		grandTotal()
		
	}
	
     var today = new Date();
     var dd = String(today.getDate()).padStart(2, '0');
     var mm = String(today.getMonth() + 1).padStart(2, '0');
     var yyyy = today.getFullYear();

     today = yyyy + '-' + mm + '-' + dd;
     $('#date_picker').attr('min',today);
 
	</script>

</body>
</html>