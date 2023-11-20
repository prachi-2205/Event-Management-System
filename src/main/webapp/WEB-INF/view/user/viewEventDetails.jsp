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
<title>EMS | User | EventDetails</title>



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
	<div class="page sidebar-true">

		<!--header start-->

		<jsp:include page="header.jsp"></jsp:include>

		<!--header end-->
		<!--page-title start-->
		<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
		<c:forEach items="${eventTypeList}" var="i">
			<div class="ttm-page-title-row text-center">
				<div class="section-overlay"></div>
				<div class="title-box text-center">
					<div class="container">

						<div class="page-title-heading">
							<h1 class="title">${i.eventTypeVO.eventtype}</h1>
						</div>
						<div class="breadcrumb-wrapper">
							<div class="container">
								<span><a title="Homepage" href="index.html"><i
										class="fa fa-home"></i>&nbsp;Home</a></span> <span
									class="ttm-bread-sep ttm-textcolor-white"> /„ </span> <span
									class="ttm-textcolor-white">${i.eventTypeVO.eventtype}</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--page-title end-->
			<!--site-main-->
			<div class="site-main">

				<section class="tt	m-sidebar clearfix ttm-bgcolor-dark-grey">
					<div class="container">
						<!-- row -->
						<div class="row ttm-sidebar-left">
							<div class="col-lg-12 content-area">
								<div class="row">
									<div class="col-md-6 pt-3">
										<div class="ttm_single_image-wrapper mb-20">
											<img class="img-fluid"
												src="<%=request.getContextPath()%>/documents/eventType/${i.eventTypeVO.fileName}"
												alt="img">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mt-10 mb-35 ttm-service-description">
											<h3>${i.eventTypeVO.eventtype }</h3>
											<p>${i.eventTypeVO.eventtypedescription}</p>
											<a
												class="ttm-btn ttm-btn-size-md ttm-btn-shape-round ttm-btn-style-fill ttm-btn-color-skincolor ml-30 mt-20"
												style="float: right;" href="viewCustomReq1" title="">Customise
												Your Events</a>
										</div>
									</div>

								</div>




								<div
									class="ttm-row client-section style2 ttm-bgcolor-white clearfix">
									<div class="container">
										<!-- row -->

										<div class="row text-center">
											<div class="col-md-12">
												<!-- ttm-client -->
												<div
													class="ttm-client clients-logo owl-carousel owl-theme owl-loaded"
													data-item="5" data-nav="false" data-dots="false"
													data-auto="true">

													<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
													<c:forEach items="${catalogList}" var="i">
														<c:forEach items="${catalogFileList}" var="k">
															<c:if test="${k.catalogVO.id eq i.id}">
																<div class="client">
																	<div class="ttm-client-logo-tooltip">
																		<a
																			href="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"><img
																			src="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"
																			alt="image" style="height: 100px"></a> <br><input
																			type="radio" name="catalogselect"
																			onclick="$('#catalogPriceTotal').html(${i.catalogPrice}),grandTotal(),$('#catalogFinalPrice').val('${i.catalogPrice}'),$('#catalogId').val('${i.id}')">
																		<span>RS.${i.catalogPrice}</span>
																	</div>
																</div>
															</c:if>
														</c:forEach>
													</c:forEach>
												</div>


											</div>
											<!-- ttm-client end -->
										</div>
									</div>
									<!-- row end -->
								</div>
							</div>
							<c:forEach items="${eventTypeList}" var="i">

								<c:set var="withoutMeal" value="${i.withoutMealPrice}"></c:set>

								<c:set var="withMeal" value="${i.withMealPrice}"></c:set>

								<div class="col-lg-12">
									<div class="mt-10 mb-35 ttm-service-description">
										<h3>Details</h3>
										<p>${i.eventdescrption}</p>
									</div>
									<div
										class="featured-box padding-6 col-md-12 ttm-bgcolor-white box-shadow">
										<div class="row">
											<div class="col-md-6 col-lg-6">
												<ul
													class="ttm-list ttm-list-style-icon ttm-textcolor-skincolor">
													<li><i class="fa fa-check"></i><span
														class="ttm-list-li-content">Person :
															${i.eventperson} </span></li>
													<li><i class="fa fa-check"></i><span
														class="ttm-list-li-content">WithoutMealPrice
															:${i.withoutMealPrice} </span></li>
													<li><i class="fa fa-check"></i><span
														class="ttm-list-li-content">With MealPrice
															:${i.withMealPrice } </span></li>
												</ul>
											</div>
											<div class="col-md-6 col-lg-6">
												<ul
													class="ttm-list ttm-list-style-icon ttm-textcolor-skincolor">
													<li><i class="fa fa-check"></i><span
														class="ttm-list-li-content">Event strategy &amp;
															planning</span></li>
													<li><i class="fa fa-check"></i><span
														class="ttm-list-li-content">Delegate journey</span></li>
													<li><i class="fa fa-check"></i><span
														class="ttm-list-li-content">Catalog Selection & Also Customise Catalog Selection</span></li>
												</ul>
											</div>
										</div>
									</div>
								</div>

							</c:forEach>
						</div>
					</div>
					<!-- row end -->
				</section>

				<section class="ttm-sidebar clearfix pt-3 ttm-bgcolor-dark-grey">
					<div class="container">
						<div class="mt-10 mb-35 ttm-service-description">
							<h3>You can also add addons</h3>
						</div>

						<div class="row ttm-sidebar-left">
							<c:forEach items="${addonList}" var="i">
								<div class="col-md-2 col-lg-2 mb-30">
									<div
										class="featured-imagebox ttm-box-view-top-image featured-imagebox-post-details">
										<div class="featured-thumbnail">
											<img class="img-fluid"
												src="<%=request.getContextPath()%>/documents/addon/${i.fileName}"
												alt="img" height="100%" width="100%">
										</div>

										<div
											class="featured-bottom-content text-left position-relative">
											<div
												class="ttm-box-post-date shape-rounded ttm-bgcolor-skincolor"
												style="width: 60px; height: 60px; top: -35px; left: 10px">
												<span class="ttm-entry-date text-white"
													style="font-size: 20px"> <span
													class="entry-month entry-year" style="line-height: 15px"><i
														class="fa fa-inr"></i></span> ${i.addonprice }
												</span>
											</div>

											<div class="featured-title">
												<h6>${i.addonwork}</h6>
											</div>

											<div class="featured-desc" style="font-size: 11px">
												<p>${i.addondescription }</p>
											</div>

											<div class="post-desc-footer">
												<button style="font-size: 10px"
													class="ttm-btn btn-inline ttm-icon-btn-right ttm-btncolor-black"
													onclick="addCart('<%=request.getContextPath()%>/documents/addon/${i.fileName}','${i.addonwork}','${i.addonprice }','${i.id}')">
													Add to your package<i class="ti ti-arrow-right"></i>
												</button>
											</div>
										</div>
									</div>
									<!-- featured-imagebox -->
								</div>
							</c:forEach>
						</div>
					</div>
				</section>

				<!-- ###################### Cart Table #################### -->
				<form action="saveEventBooking" method="post">
					<section
						class="cart-section ttm-bgcolor-dark-grey break-991-colum clearfix mb-3">
						<div class="container">
							<!-- row -->
							<div class="row">
								<div class="col-lg-12">
									<!-- ttm-cart-form -->
									<h3>Your Addons Table</h3>
									<table class="shop_table shop_table_responsive"
										id="cartTableBody">
										<thead>
											<tr>
												<th class="product-remove">&nbsp;</th>
												<th class="product-thumbnail">&nbsp;</th>
												<th class="product-name">Product</th>
												<th class="product-price">Price</th>
												<th class="product-quantity">Quantity</th>
												<th class="product-subtotal">Total</th>
											</tr>
										</thead>
										<tbody id="tbody"></tbody>
									</table>
									<!-- ttm-cart-form end -->
									<!-- cart-collaterals -->
									<div class="cart-collaterals">
										<div class="cart_totals ">
											<h3>Cart totals</h3>
											<h5>Want To Add Meal</h5>
											<input type="radio" name="withMeal" id="withmeal"
												onclick="$('#eventPriceTotal').html(${withMeal}),grandTotal(),$('#eventFinalPrice').val('${withMeal}'),$('#type').val('with meal')">With
											Meal <input type="radio" name="withMeal" id="withmeal"
												onclick="$('#eventPriceTotal').html(${withoutMeal}),grandTotal(),$('#eventFinalPrice').val('${withoutMeal}'),$('#type').val('withOut meal')">Without
											Meal

											<table class="shop_table shop_table_responsive">
												<tbody>
													<tr class="order-total">
														<th>Catalog Price</th>
														<td data-title="Total"><strong><span
																class="Price-amount"> <span
																	class="Price-currencySymbol"><i
																		class="fa fa-inr"></i><span id="catalogPriceTotal">00</span></span>
															</span> </strong></td>
													</tr>

													<tr class="order-total">
														<th>Event Price</th>
														<td data-title="Total"><strong><span
																class="Price-amount"> <span
																	class="Price-currencySymbol"><i
																		class="fa fa-inr"></i><span id="eventPriceTotal">00</span></span>
															</span> </strong></td>
													</tr>
													<tr class="order-total">
														<th>Addons Price</th>
														<td data-title="Total"><strong><span
																class="Price-amount"> <span
																	class="Price-currencySymbol"><i
																		class="fa fa-inr"></i><span id="grandTotal">00</span></span>
															</span> </strong></td>
													</tr>
													<tr class="order-total">
														<th>Total</th>
														<td data-title="Total"><strong><span
																class="Price-amount"> <span
																	class="Price-currencySymbol"><i
																		class="fa fa-inr"></i><span id="totalGrandTotal">00</span></span>
															</span> </strong></td>
													</tr>
												</tbody>
											</table>
											<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


											<c:forEach items="${eventTypeList}" var="i">
												<input type="hidden" name="eventId" value="${i.id}">
												<input type="hidden" name="eventFinalPrice"
													id="eventFinalPrice">
												<!-- <input type="hidden" name="totalGrandTotal"
													id="totalGrandTotal"> -->
												<input type="hidden" name="catalogFinalPrice"
													id="catalogFinalPrice">
												<input type="hidden" name="catalogId" id="catalogId">
												<input type="hidden" name="dbGrandTotal" id="dbGrandTotal" value="">
												<input type="hidden" name="type" id="type">
											</c:forEach>
											<div class="proceed-to-checkout">
												<input name="submit" type="submit" id="submit"
													class="submit ttm-btn ttm-btn-color-skincolor ttm-btn-style-fill ttm-btn-shape-round"
													value="Proceed to checkout">
											</div>
										</div>
									</div>
									<!-- cart-collaterals end-->
								</div>
							</div>
						</div>
					</section>
				</form>
			</div>
		</c:forEach>
	</div>
	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--footer-END-->

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

	<script
		src="<%=request.getContextPath()%>/userResource/js/viewEventDetails.js"></script>

</body>
</html>