
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Planwey &#8211; Event planner &amp; celebration html Template" />
<meta name="author" content="https://www.themetechmount.com/" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>EMS | Static Event</title>

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
        <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
        <c:forEach items="${cityEventList}" var="i">
        <div class="ttm-page-title-row text-center">
            <div class="section-overlay"></div>
            <div class="title-box text-center">
                <div class="container">
                    <div class="page-title-heading">
                        <h1 class="title">${i.eventType}</h1>
                    </div>
                    <div class="breadcrumb-wrapper">
                       <div class="container">
							<span><a title="Homepage" href="index.html"><i
									class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span>
									 <span
								class="ttm-bread-sep ttm-textcolor-white"> &nbsp;&nbsp;/</span>
								 <span class="ttm-textcolor-white">${i.eventType}</span>
								<span class="ttm-textcolor-white">&nbsp;&nbsp; Event</span>
						
							
                           
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <!--page-title end-->

        <!--site-main-->
        <div class="site-main">
            <section class="ttm-row portfolio-section-3 clearfix ttm-bgcolor-dark-grey">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-12 ttm-pf-single-content-wrapper ttm-pf-view-top-image">
                            <div class="ttm-pf-single-content-wrapper-innerbox">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="ttm-featured-wrapper ttm-portfolio-featured-wrapper">
                                            <!-- <iframe width="847" height="476" src="https://www.youtube.com/embed/HkyVTxH2fIM?feature=oembed" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe> -->
                                       		
                                      		<img class="img-fluid" 
											src="<%=request.getContextPath()%>/documents/cityEvent/${i.fileName}"
											alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-7 col-lg-7 ttm-pf-single-content-area">
                                        <div class="ttm-portfolio-description">
                                            <h4>${i.eventType}</h4>
                                           
                                          <p>${i.cityEventdescription }</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 ttm-pf-single-details-area">
                                        <div class="ttm-pf-single-detail-box">
                                            <div class="ttm-pf-detailbox">
                                                <div class="ttm-pf-detailbox-inner">
                                                    <ul class="ttm-pf-detailbox-list">
                                                        <li class="ttm-pf-details-date">
                                                            <span class="ttm-pf-left-details">Date</span>
                                                            <span class="ttm-pf-right-details">${i.cityeventDate }</span>
                                                        </li>
                                                        <li class="ttm-pf-details-date">
                                                            <span class="ttm-pf-left-details">Time</span>
                                                            <span class="ttm-pf-right-details">${i.cityeventtime }</span>
                                                        </li>
                                                        <!-- <li class="ttm-pf-details-date">
                                                            <span class="ttm-pf-left-details">Day</span>
                                                            <span class="ttm-pf-right-details"></span>
                                                        </li> -->
                                                        <li class="ttm-pf-details-date">
                                                            <span class="ttm-pf-left-details">Address</span>
                                                            <span class="ttm-pf-right-details">${i.areaVO.areaname},${i.areaVO.cityVO.cityname }
														</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-12">
                                        <div class="ttm-post-prev-buttons clearfix mb-0">
                                            <a class="ttm-btn ttm-btn-size-sm ttm-btn-style-fill ttm-icon-btn-left ttm-btn-color-skincolor shape-round" href="portfolio-details-03.html"><i class="ti ti-angle-left"></i>Previous</a>
                                            <a class="ttm-btn ttm-btn-size-sm ttm-btn-style-fill ttm-icon-btn-right ttm-btn-color-skincolor  shape-round float-right" href="portfolio-details-03.html"><i class="ti ti-angle-right"></i>Next</a>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div><!-- site-main end --> 
</c:forEach>
         <!--footer--> 
        <jsp:include page="footer.jsp"></jsp:include>  
        <!--footer-END-->

</div><!-- page end -->

    <!--back-to-top start-->
    <a id="totop" href="#top">
        <i class="fa fa-angle-up"></i>
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