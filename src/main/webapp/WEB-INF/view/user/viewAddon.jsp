<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Planwey &#8211; Event planner &amp; celebration html Template" />
<meta name="author" content="https://www.themetechmount.com/" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>EMS | View Addon</title>


<!-- favicon icon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/userResource/image/favicon-16x16.png" />
<!-- bootstrap -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/bootstrap.min.css"/>

<!-- animate -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/animate.css"/>

<!-- owl-carousel -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/owl.carousel.css">

<!-- fontawesome -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/font-awesome.css"/>

<!-- themify -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/themify-icons.css"/>

<!-- flaticon -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/flaticon.css"/>

<!-- REVOLUTION LAYERS STYLES -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/layers.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/settings.css">

<!-- prettyphoto -->
<link rel="stylesheet" type="text/css"             
href="<%=request.getContextPath()%>/userResource/css/prettyPhoto.css">

<!-- shortcodes -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/shortcodes.css"/>

<!-- main -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/main.css"/>

<!-- responsive -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResource/css/responsive.css"/>

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
                        <h1 class="title">PRODUCTS</h1>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <span><a title="Homepage" href="index"><i class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span>
                            <span class="ttm-bread-sep ttm-textcolor-white"> &nbsp;&nbsp;/</span>
                           
                            
                            <span class="ttm-textcolor-white">AddOn</span>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <!--page-title end-->
        <!--site-main-->
        <div class="site-main">
            <!-- intro-section -->
            <section class="ttm-sidebar ttm-bgcolor-grey clearfix shop-intro-section">
                <div class="container">
                    <!-- row -->
                    <div class="row ttm-sidebar-right">
                        <div class="col-lg-12 col-md-12 product-area">
                            
                            
                            <ul class="products row">
                                <!-- product -->
                                <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
                                <c:forEach items="${addonList}" var="i" varStatus="j">
                       
                                <li class="product col-md-3 col-sm-4 col-xs-12">
                                    <div class="ttm-product-box">
                                        <!-- ttm-product-box-inner -->
                                        <div class="ttm-product-box-inner">
                                            <!-- <div class="ttm-shop-icon">
                                                
                                             
                                                <div class="product-btn fav-btn"><a href="#" class="wishlist-btn"><i class="ti ti-heart"></i></a>
                                                </div>
                                            </div> -->
                                            <div class="ttm-product-image-box text-center">
                                                <img class="img-fluid" src="<%=request.getContextPath()%>/documents/addon/${i.fileName}" alt="">
                                            </div>
                                        </div><!-- ttm-product-box-inner end -->
                                        <div class="ttm-product-content">
                                            <h3><a href="product-details.html">${i.addondescription}</a></h3>
                                           
                                            <span class="price"><span class="product-Price-amount">
                                                <span class="product-Price-currencySymbol"></span> ${i.addonwork }</span>
                                            </span><br>
                                             <span class="product-Price-amount">
<span class="product-Price-currencySymbol">RS</span> ${i.addonprice }</span>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                                <!-- product end-->
                                     </ul>
                            
                        </div>
                        
                    </div><!-- row end -->
                </div>
            </section>
            <!-- intro-section end -->
        </div><!-- site-main end --> 

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

    <script src="<%=request.getContextPath()%>/userResource/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/userResource/js/tether.min.js"></script>
    <script src="<%=request.getContextPath()%>/userResource/js/bootstrap.min.js"></script> 
    <script src="<%=request.getContextPath()%>/userResource/js/jquery.easing.js"></script>    
    <script src="<%=request.getContextPath()%>/userResource/js/jquery-waypoints.js"></script>    
    <script src="<%=request.getContextPath()%>/userResource/js/owl.carousel.js"></script>
    <script src="<%=request.getContextPath()%>/userResource/js/jquery.prettyPhoto.js"></script>
    <script src="<%=request.getContextPath()%>/userResource/js/numinate.min.js?ver=4.9.3"></script>
    <script src="<%=request.getContextPath()%>/userResource/js/main.js"></script>


</body>
</html>