
<header onload="loadEvents()" id="masthead"
	class="header ttm-header-style-classic-overlay">
	<!-- ttm-header-wrap -->
	<div class="ttm-header-wrap">
		<!-- ttm-stickable-header-w -->
		<div id="ttm-stickable-header-w"
			class="ttm-stickable-header-w clearfix">
			<div id="site-header-menu" class="site-header-menu">


				<div class="site-header-menu-inner ttm-stickable-header">
					<div class="container">
						<!-- site-branding -->
						<div class="site-branding" style="line-height: 115px">
							<a class="home-link" href="index.html" title="Planwey" rel="home">
								<img id="logo-img" class="img-center"
								src="<%=request.getContextPath()%>/userResource/image/logo1.png"
								alt="logo-img">
							</a>
						</div>
						<!-- site-branding end -->
						<!-- header-icins -->
						<div class="ttm-header-icons">
							<span class="ttm-header-icon ttm-header-cart-link"> <!--  <a href="cart.html"><i class="fa fa-shopping-cart"></i>
                                            <span class="number-cart">0</span>
                                        </a> -->
							</span>

						</div>
						<!-- header-icons end -->
						<!--site-navigation -->
						<div id="site-navigation" class="site-navigation">
							<div class="ttm-menu-toggle">
								<input type="checkbox" id="menu-toggle-form" /> <label
									for="menu-toggle-form" class="ttm-menu-toggle-block"> <span
									class="toggle-block toggle-blocks-1"></span> <span
									class="toggle-block toggle-blocks-2"></span> <span
									class="toggle-block toggle-blocks-3"></span>
								</label>
							</div>
							<nav id="menu" class="menu">
								<ul class="dropdown">
									<li class="#"><a href="index">Home</a></li>
									<li><a href="viewEvent">Events</a></li>
									<li><a href="addon">Addons</a></li>
									<li><a href="viewCityEvent">City Events</a></li>

									<li><a href="viewComplain">Complaint</a>
									<li><a href="viewFeedback">Feedback</a>
									<li><a href="#">Profile</a>
										<ul>
											<li><a href="customiseBookingList1">Customise
													Booking </a>
											<li><a href="viewUserBooking">My Booking</a>
											<li><a href="/logout">Logout</a></li>
										</ul></li>



									<!-- 									<li><a href="other">Profile</a>
										<ul>
											<li><a href="portfolioclassic">Catalog</a>
											<li><a href="viewComplain">Get Help</a></li>
											<li><a href="viewFeedback">Feedback</a>
											<li><a href="aboutus">About Us</a></li>
											<li><a href="contactus">Contact Us</a></li>
										</ul></li>

 -->

								</ul>
							</nav>
						</div>
						<!-- site-navigation end-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--ttm-header-wrap end -->
</header>
<!--header end-->
<script type="text/javascript">
	function loadEvents() {

		console.log('data');
		const
		xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
		}
		xhttp.open("GET", "viewEventForMenu", true);
		xhttp.send();
	}
</script>