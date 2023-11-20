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
                            <span><a title="Homepage" href="index.html"><i class="fa fa-home"></i>&nbsp;&nbsp;Home</a></span>
                            <span class="ttm-bread-sep ttm-textcolor-white"> &nbsp; ⁄ &nbsp;</span>
                            <span><a title="Homepage" href="shop.html">&nbsp;&nbsp;Shop</a></span>
                            <span class="ttm-bread-sep ttm-textcolor-white"> &nbsp; ⁄ &nbsp;</span>
                            <span class="ttm-textcolor-white">Checkout</span>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <!--page-title END-->
        
        <!--site-main-->
        <div class="site-main">

            <!-- checkout-section -->
            <section class="ttm-row checkout-section ttm-bgcolor-grey break-991-colum clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="coupon_toggle">
                                <div class="coupon_code">
                                    Have a coupon? <a href="checkout.html">Click here to enter your code</a>
                                </div>
                            </div>
                            <form name="checkout" method="post" class="checkout row box-shadow1" action="#">
                                <div class="col-lg-6">
                                    <div class="billing-fields">
                                        <h3>Billing details</h3>
                                        <p class="checkout-form">
                                            <label>First name&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <input type="text" class="input-tex" name="billing_first_name" placeholder="" value="">
                                        </p>
                                        <p class="checkout-form">
                                            <label>Last name&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <input type="text" class="input-text " name="billing_last_name" placeholder="" value="">
                                        </p>
                                        <p class="checkout-form">
                                            <label>Company name&nbsp;<span class="optional">(optional)</span></label>
                                            <input type="text" class="input-text " name="billing_company" placeholder="" value="">
                                        </p>
                                        <p class="checkout-form">
                                            <label>Country&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <select name="billing_country" class="country_to_state country_select" tabindex="-1" aria-hidden="true">
                                                <option value="">Select a country…</option>
                                                <option value="AX">Åland Islands</option>
                                                <option value="AF">Afghanistan</option>
                                                <option value="AL">Albania</option>
                                                <option value="DZ">Algeria</option>
                                                <option value="AS">American Samoa</option>
                                                <option value="AD">Andorra</option>
                                            </select>
                                        </p>
                                        <p class="checkout-form">
                                            <label>Street address&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <input type="text" class="input-text" name="billing_address_1" placeholder="House number and street name" value="">
                                        </p>
                                        <p class="checkout-form">
                                            <label>Apartment, suite, or unit.&nbsp;
                                                <span class="optional">(optional)</span>
                                            </label>
                                            <input type="text" class="input-text " name="billing_address_2" placeholder="Apartment, suite, unit etc. (optional)" value="">
                                        </p>
                                        <p class="checkout-form">
                                            <label>Town / City&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <input type="text" class="input-text " name="billing_city" placeholder="" value="" >
                                        </p>
                                        <p class="checkout-form">
                                            <label>State / County&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <select name="billing_state" id="billing_state" class="state_select select2-hidden-accessible">
                                                <option value="">Select a state…</option>
                                                <option value="AP">Andhra Pradesh</option>
                                                <option value="AR">Arunachal Pradesh</option>
                                                <option value="AS">Assam</option>
                                                <option value="BR">Bihar</option>
                                            </select>
                                        </p>
                                        <p class="checkout-form">
                                            <label>Postcode / ZIP&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <input type="text" class="input-text " name="billing_postcode" placeholder="" value="">
                                        </p>
                                        <p class="checkout-form">
                                            <label>Phone&nbsp;<span class="optional">(optional)</span></label>
                                            <input type="tel" class="input-text " name="billing_phone" placeholder="" value="" >
                                        </p>
                                        <p class="checkout-form">
                                            <label>Email address&nbsp;<abbr class="required" title="required">*</abbr></label>
                                            <input type="email" class="input-text " name="billing_email" placeholder="" value="">
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="additional-fields">
                                        <h3>Additional information</h3>
                                        <div class="additional-fields-wrapper">
                                            <p class="checkout-form" id="order_comments_field">
                                                <label>Order notes&nbsp;<span class="optional">(optional)</span></label>
                                                <textarea name="order_comments" class="input-text " id="order_comments" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
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
                                                <tr class="cart_item">
                                                    <td class="product-name">Cack&nbsp;
                                                        <strong class="product-quantity">× 1</strong>
                                                    </td>
                                                    <td class="product-total">
                                                        <span class="Price-amount">
                                                            <span class="Price-currencySymbol">$</span>1500.00
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr class="cart_item">
                                                    <td class="product-name">Cack-Candals&nbsp;
                                                        <strong class="product-quantity">× 1</strong>
                                                    </td>
                                                    <td class="product-total">
                                                        <span class="Price-amount amount">
                                                            <span class="Price-currencySymbol">$</span>20.00
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr class="cart_item">
                                                    <td class="product-name">Red Roses&nbsp;
                                                        <strong class="product-quantity">× 1</strong>
                                                    </td>
                                                    <td class="product-total">
                                                        <span class="Price-amount">
                                                            <span class="Price-currencySymbol">$</span>90.00
                                                        </span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr class="cart-subtotal">
                                                    <th>Subtotal</th>
                                                    <td>
                                                        <span class="Price-amount amount">
                                                            <span class="Price-currencySymbol">$</span>1610.00
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr class="order-total">
                                                    <th>Total</th>
                                                    <td><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>1610.00</span></strong> </td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <div id="payment" class="checkout-payment">
                                            <ul class="payment_methods">
                                                <li class="payment_method_ppec_paypal">
                                                    <label>
                                                        PayPal <img src="userResource/image/paypal.png" alt="PayPal">
                                                    </label>
                                                    <div class="payment_box">
                                                        <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="checkout-form place-order">
                                                <p class="payment_policy">Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our <a href="#">Privecy policy</a> </p>
                                                <button type="submit" class="button shape-round" name="checkout_place_order" id="place_order" value="Place order" data-value="Place order">Continue to payment</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- checkout-section end -->
        
        </div><!--site-main end-->

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