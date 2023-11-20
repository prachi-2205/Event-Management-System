<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description"
	content="Planwey &#8211; Event planner &amp; celebration html Template" />
<meta name="author" content="https://www.themetechmount.com/" />
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>EMS | Customise Booking</title>

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
						<h1 class="title">User Customization Form</h1>
					</div>
					<div class="breadcrumb-wrapper">
						<div class="container">
							<span><a title="Homepage" href="index.html"><i
									class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span> <span
								class="ttm-bread-sep ttm-textcolor-white"> &nbsp;&nbsp;/</span>
							<span class="ttm-textcolor-white">&nbsp;&nbsp;User Customization  </span>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!--page-title END-->
		<div id="order_review" class="checkout-review-order">
			<table class="shop_table checkout-review-order-table">
				<thead>
					<tr>

						<th class="product-name">No</th>
						<th class="product-total">UserName</th>
						<th class="product-total">Event Type</th>
						<!-- <th class="product-name">Firstname</th>
						<th>Last Name</th> -->
						<th class="product-name">Address</th>

						<th class="product-name">Person</th>
						<th class="product-total">Meal</th>
						<th class="product-total">Price</th>

						<th class="product-name">Action</th>



					</tr>
				</thead>
				<tbody>
					<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
					<c:forEach items="${bookingList}" var="i" varStatus="j">

						<tr class="cart_item">
							<strong><td class="product-name">${j.count}</td></strong>
							<td class="product-name">${i.loginVO.username}</strong>
							</td>

							<td class="product-name">${i.eventTypeVO.eventtype}</strong>
							</td>
							<td class="product-name">${i.address}</strong>
							</td>

							<td class="product-name">${i.meal}</strong>
							</td>

							<td class="product-name">${i.person}</strong>
							</td>

							<c:if test="${i.status eq 'confirm'}">
								<td class="product-name">${i.price}</strong>
								</td>
								<td><span class="badge badge-success">confirm</span></td>

							</c:if>

							<c:if test="${i.status eq 'Pending'}">

								<td>---</td>
								<td><span class="badge badge-success">Pending</span>
							</c:if>
							</td>





							<%-- <td class="product-name"><span class="Price-currencySymbol"><i class="fa fa-inr"></i></span>${i.eventPrice}</strong>
							</td>
							<td class="product-name"><span class="Price-currencySymbol"><i class="fa fa-inr"></i></span>${i.catalogPrice}</strong>
							</td> --%>






						</tr>

					</c:forEach>
			</table>



			<jsp:include page="footer.jsp"></jsp:include>

		</div>






		<!--footer-->
		<!--footer-END-->




	</div>

	<!--back-to-top start-->
	<a id="totop" href="#top"> <i class="fa fa-angle-up"></i>
	</a>
	<!--back-to-top end-->

</body>
</html>