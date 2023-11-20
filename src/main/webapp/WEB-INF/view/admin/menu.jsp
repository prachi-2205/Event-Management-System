<div class="main-sidebar sidebar-style-2">
	<aside id="sidebar-wrapper">
		<div class="sidebar-brand">
			<a href="index.html"> <img alt="image"
				src="<%=request.getContextPath()%>/adminResources/image/logo1.png"
				class="header-logo" /> <span class="logo-name"></span>
			</a>
		</div>
		<ul class="sidebar-menu">

			<li class="dropdown "><a href="index" class="nav-link"><i
					class="fa fa-home"></i><span>Home</span></a></li>

			<li><a class="nav-link" href="viewUser1"><i
					class="fas fa-users"></i><span>Manage User</span></a></li>
					
					<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fa fa-address-book
				"></i><span>Manage City Events</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addCityEvent">Add  City Events </a></li>
					<li><a class="nav-link" href="viewCityEvent">View City Events</a></li>

				</ul></li>


			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="far fa-list-alt"></i><span>Manage Event Types</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addEventType">Add Event Type</a></li>
					<li><a class="nav-link" href="viewEventType">View Event
							Type</a></li>

				</ul></li>

			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="far fa-calendar-check"></i><span>Manage Events </span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addEvent">Add Events</a></li>
					<li><a class="nav-link" href="viewEvent">View Events </a></li>

				</ul></li>

			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fas fa-puzzle-piece"></i><span>Manage Addon</span></a>
				<ul class="dropdown-menu">
					<li><a href="addAddon">Add Addon</a></li>
					<li><a class="nav-link" href="viewAddon">View Addon</a></li>
				</ul></li>

			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fas fa-building"></i><span>Manage City</span></a>
				<ul class="dropdown-menu">
					<li><a href="addCity">Add City</a></li>
					<li><a href="viewCity">View City</a></li>

				</ul></li>
			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fas fa-map-marked"></i><span>Manage Area</span></a>
				<ul class="dropdown-menu">
					<li><a href="addArea">Add Area</a></li>
					<li><a href="viewArea">View Area</a></li>

				</ul></li>


			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fas fa-images"></i><span>Manage Catalog</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addCatalog">Add Catalog</a></li>
					<li><a class="nav-link" href="viewCatalog">View Catalog</a></li>

				</ul></li>
				
				
				<li><a class="nav-link" href="viewCustomReq"><i
					class="fa fa-calendar"></i> <span>Customise Events</span></a></li>
				

			<li><a class="nav-link" href="viewBooking"><i
					class="fas fa-tags"></i> <span>Manage Booking</span></a></li>

			<li><a class="nav-link" href="viewComplaint"><i
					class="fas fa-headset"></i> <span>Manage Complaint</span></a></li>

			<li><a class="nav-link" href="viewFeedback"><i
					class="fas fa-thumbs-up"></i> <span>Feedback</span></a></li>

			<li><a class="nav-link" href="/logout"><i
					class="fas fa-sign-out-alt"></i> <span>Logout</span></a></li>





		</ul>
	</aside>
</div>
