<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>EMS | User | Feedback</title>
<%@taglib  prefix="f" uri="http://www.springframework.org/tags/form" %>

<!-- Validation CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">

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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/main.css" />

<!-- responsive -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResource/css/responsive.css" />

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/star.css">

</head>

<body>

	<!--page start-->
	<div class="page sidebar-true">


		<!--header start-->

		<jsp:include page="header.jsp"></jsp:include>

		<!--header end-->
		<!--page-title start-->
		<div class="ttm-page-title-row text-center">
			<div class="section-overlay"></div>
			<div class="title-box text-center">
				<div class="container">
					<div class="page-title-heading">
						<h1 class="title">FEEDBACK</h1>
					</div>
					<div class="breadcrumb-wrapper">
						<div class="container">
							<span> <a title="Homepage" href="index"> <i
									class="fa fa-home"></i> Home
							</a>
							</span> <span class="ttm-bread-sep ttm-textcolor-white">&nbsp;&nbsp;/</span>
							<span><a title="" href="single-blog.html">&nbsp;&nbsp;Feedback</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--page-title start-->
		<!--site-main-->
		<div class="site-main">
			<div
				class="ttm-sidebar ttm-bgcolor-dark-grey break-991-colum clearfix ttm-sidebar-section">
				<div class="container">
					<!-- row -->
					<div class="row ttm-sidebar-right">
						<div class="col-lg-12 content-area">
							<article class="post ttm-blog-classic">

								<div class="ttm-blog-classic-content single-blog">

									<div class="comment-respond">
										<h3 class="comment-reply-title">Give Your Feedback</h3>
										<f:form action="saveFeedback" method="post" id="commentform"
											class="comment-form" novalidate="" modelAttribute="FeedbackVO" onsubmit="return viewFeedback()">

<fieldset class="rating">
    <!-- <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label> -->

 <f:radiobutton  id="star5" name="rating" value="5" path="feedback_rating"/><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <f:radiobutton  id="star4" name="rating" value="4" path="feedback_rating"/><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <f:radiobutton  id="star3" name="rating" value="3" path="feedback_rating"/><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <f:radiobutton  id="star2" name="rating" value="2" path="feedback_rating"/><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <f:radiobutton  id="star1" name="rating" value="1" path="feedback_rating"/><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
 
 
 </fieldset>


											<p class="comment-form-comment">
												<f:textarea id="comment" placeholder="About Your Feedback"
													name="comment" cols="45" rows="8" aria-required="true" path="feedback"></f:textarea>
											</p>
											<p class="form-submit">
												<input name="submit" type="submit" id="submit"
													class="submit ttm-btn ttm-btn-color-skincolor ttm-btn-style-fill ttm-btn-shape-round"
													value="Post Your Feedback">
											</p>
										</f:form>
									</div>
								</div>
							</article>
						</div>
					</div>

					<div class="row ttm-sidebar-right">
						<div class="col-lg-12 content-area">
							<article class="post ttm-blog-classic">

								<div class="ttm-blog-classic-content single-blog">
									<div class="ttm-blog-classic-box-comment">
										<div id="comments" class="comments-area">
											<h2 class="comments-title">User's Feedback</h2>
											<ol class="comment-list">
											
											<!----------- Feedback for loop Star Here ------------->
											<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
											<c:forEach items="${FeedbackList}" var="i">
												<li>
											
													<div class="comment-body">
														<div class="comment-author vcard">
															
																<img src="<%=request.getContextPath()%>/userResource/image/avtaricon.png""
																class="avatar" alt="comment-img">
														</div>
														<div class="comment-box">
															<div class="comment-meta commentmetadata">
																<cite class="ttm-comment-owner">${i.loginvo.username}</cite> <a href="#">${i.feedbackdate}</a>
															</div>
															<div class="author-content-wrap">
																<p>${i.feedback}.</p>
															</div>
															<div class="reply">
																<span class="mr-3">
																
																<!----------- Feedback Stars loop Star Here ------------->
																<c:forEach begin="1" end="${i.feedback_rating}">
																	<i class="fa fa-star" style="color: #fd226a;"></i>
																</c:forEach>
																<!----------- Feedback Stars loop End Here ------------->
																
																</span>

															</div>
														</div>
													</div>
												</li>
											</c:forEach>
											<!----------- Feedback for loop End Here ------------->
											
											</ol>

										</div>
									</div>
								</div>
							</article>
						</div>
						<div class="col-lg-3 sidebar sidebar-right widget-area"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- site-main end -->

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

	<script src="<%=request.getContextPath()%>/userResource/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/tether.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/jquery.easing.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/jquery-waypoints.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/jquery.prettyPhoto.js"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/numinate.min.js?ver=4.9.3"></script>
	<script src="<%=request.getContextPath()%>/userResource/js/main.js"></script>
	<!-- Validation Js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
		<script src="<%=request.getContextPath()%>/userResource/js/validation/viewFeedback.js"></script>
		<!-- -------------------------  -->
</body>
</html>