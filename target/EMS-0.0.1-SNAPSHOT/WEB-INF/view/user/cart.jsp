<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Planwey &#8211; Event planner &amp; celebration html Template" />
<meta name="author" content="https://www.themetechmount.com/" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Planwey &#8211; Event planner &amp; celebration html Template</title>

<!-- favicon icon -->
<link rel="shortcut icon" href="userResource/image/favicon.png" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css" href="userResource/css/bootstrap.min.css"/>

<!-- animate -->
<link rel="stylesheet" type="text/css" href="userResource/css/animate.css"/>

<!-- owl-carousel -->
<link rel="stylesheet" type="text/css" href="userResource/css/owl.carousel.css">

<!-- fontawesome -->
<link rel="stylesheet" type="text/css" href="userResource/css/font-awesome.css"/>

<!-- themify -->
<link rel="stylesheet" type="text/css" href="userResource/css/themify-icons.css"/>

<!-- flaticon -->
<link rel="stylesheet" type="text/css" href="userResource/css/flaticon.css"/>

<!-- REVOLUTION LAYERS STYLES -->

<link rel="stylesheet" type="text/css" href="userResource/css/layers.css">

<link rel="stylesheet" type="text/css" href="userResource/css/settings.css">

<!-- prettyphoto -->
<link rel="stylesheet" type="text/css"             
href="userResource/css/prettyPhoto.css">

<!-- shortcodes -->
<link rel="stylesheet" type="text/css" href="userResource/css/shortcodes.css"/>

<!-- main -->
<link rel="stylesheet" type="text/css" href="userResource/css/main.css"/>

<!-- responsive -->
<link rel="stylesheet" type="text/css" href="userResource/css/responsive.css"/>

</head>

<body>

    <!--page start-->
    <div class="page">

       <!--header start-->
        
                        <jsp:include page="header.jsp"></jsp:include> 
           
        <!--header end-->

        <div class="ttm-page-title-row text-center">
            <div class="section-overlay"></div>
            <div class="title-box text-center">
                <div class="container">
                    <div class="page-title-heading">
                        <h1 class="title">CART</h1>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <span><a title="Homepage" href="index.html"><i class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span>
                            <span class="ttm-bread-sep ttm-textcolor-white"> &nbsp; ⁄ &nbsp;</span>
                            <span><a title="" href="shop.html">&nbsp;&nbsp;Shop</a></span>
                            <span class="ttm-bread-sep ttm-textcolor-white"> &nbsp; ⁄ &nbsp;</span>
                            <span class="ttm-textcolor-white">Cart</span>
                        </div>
                    </div>
                </div> 
            </div>
        </div>


        <!--site-main-->
        <div class="site-main">

            <!-- cart-section -->
            <section class="ttm-row cart-section ttm-bgcolor-dark-grey break-991-colum clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- ttm-cart-form -->
                            <form class="ttm-cart-form" action="#" method="post">
                                <table class="shop_table shop_table_responsive">
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
                                    <tbody>
                                        <tr class="cart_item">
                                            <td class="product-remove">
                                                <a href="#" class="remove">×</a>
                                            </td>
                                            <td class="product-thumbnail">
                                                <a href="product-details.html">
                                                    <img class="img-fluid" src="userResource/image/product-two.jpg" alt="product-img">
                                                </a>
                                            </td>
                                            <td class="product-name" data-title="Product">
                                                <a href="product-details.html">Cake</a>
                                            </td>
                                            <td class="product-price" data-title="Price">
                                                <span class="Price-amount">
                                                    <span class="Price-currencySymbol">$</span>1500.00
                                                </span>
                                            </td>
                                            <td class="product-quantity" data-title="Quantity">
                                                <div class="quantity">
                                                    <input type="number" class="input-text" value="1" min="0" title="Qty" size="4">
                                                </div>
                                            </td>
                                            <td class="product-subtotal" data-title="Total">
                                                <span class="Price-amount">
                                                    <span class="Price-currencySymbol">$</span>1500.00
                                                </span>
                                            </td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-remove">
                                                <a href="#" class="remove">×</a>
                                            </td>
                                            <td class="product-thumbnail">
                                                <a href="product-details.html">
                                                    <img class="img-fluid" src="userResource/image/product-four.jpg" alt="product-img">
                                                </a>
                                            </td>
                                            <td class="product-name" data-title="Product">
                                                <a href="product-details.html">Cake Candles</a>
                                            </td>
                                            <td class="product-price">
                                                <span class="Price-amount" data-title="Price">
                                                    <span class="Price-currencySymbol">$</span>20.00
                                                </span>
                                            </td>
                                            <td class="product-quantity" data-title="Quantity">
                                                <div class="quantity">
                                                    <input type="number" class="input-text" value="1" min="0" title="Qty" size="4">
                                                </div>
                                            </td>
                                            <td class="product-subtotal" data-title="Total">
                                                <span class="Price-amount">
                                                    <span class="Price-currencySymbol">$</span>20.00
                                                </span>
                                            </td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-remove">
                                                <a href="product-details.html" class="remove">×</a>
                                            </td>
                                            <td class="product-thumbnail">
                                                <a href="product-details.html">
                                                    <img class="img-fluid" src="userResource/image/product-seven.jpg" alt="product-img">
                                                </a>
                                            </td>
                                            <td class="product-name" data-title="Product">
                                                <a href="product-details.html">Red Roses</a>
                                            </td>
                                            <td class="product-price" data-title="Price">
                                                <span class="Price-amount">
                                                    <span class="Price-currencySymbol">$</span>90.00
                                                </span>
                                            </td>
                                            <td class="product-quantity" data-title="Quantity">
                                                <div class="quantity">
                                                    <label class="screen-reader-text">Quantity</label>
                                                    <input type="number" class="input-text" value="1" min="0" title="Qty" size="4">
                                                </div>
                                            </td>
                                            <td class="product-subtotal" data-title="Total">
                                                <span class="Price-amount">
                                                    <span class="Price-currencySymbol">$</span>90.00
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="actions">
                                                <div class="coupon">
                                                    <input type="text" name="coupon_code" class="input-text" value="" placeholder="Coupon code">
                                                    <button type="submit" class="button shape-round" name="apply_coupon" value="Apply coupon">Apply coupon</button>
                                                </div>
                                                <button type="submit" class="button shape-round" name="update_cart" value="Update cart" disabled="disabled">Update cart</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form><!-- ttm-cart-form end -->
                            <!-- cart-collaterals -->
                            <div class="cart-collaterals">
                                <div class="cart_totals ">
                                    <h3>Cart totals</h3>
                                    <table class="shop_table shop_table_responsive">
                                        <tbody>
                                            <tr class="cart-subtotal">
                                                <th>Subtotal</th>
                                                <td data-title="Subtotal">
                                                    <span class="Price-amount">
                                                        <span class="Price-currencySymbol">$</span>128.00
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr class="order-total">
                                                <th>Total</th>
                                                <td data-title="Total">
                                                    <strong><span class="Price-amount">
                                                        <span class="Price-currencySymbol">$</span>128.00</span>
                                                    </strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="proceed-to-checkout">
                                        <a href="checkout.html" class="checkout-button button shape-round">Proceed to checkout</a>
                                    </div>
                                </div>
                            </div><!-- cart-collaterals end-->
                        </div>
                    </div>
                </div>
            </section>
            <!-- cart-section end-->
        
        </div><!--site-main end-->

        <!--footer--> 
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- footer End -->


</div><!-- page end -->

    <!--back-to-top start-->
    <a id="totop" href="#top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!--back-to-top end-->



    <!-- Javascript -->

    <script src="userResource/js/jquery.min.js"></script>
    <script src="userResource/js/tether.min.js"></script>
    <script src="userResource/js/bootstrap.min.js"></script> 
    <script src="userResource/js/jquery.easing.js"></script>    
    <script src="userResource/js/jquery-waypoints.js"></script>    
    <script src="userResource/js/jquery-validate.js"></script> 
    <script src="userResource/js/owl.carousel.js"></script>
    <script src="userResource/js/jquery.prettyPhoto.js"></script>
    <script src="userResource/js/numinate.min.js?ver=4.9.3"></script>
    <script src="userResource/js/main.js"></script>


</body>
</html>