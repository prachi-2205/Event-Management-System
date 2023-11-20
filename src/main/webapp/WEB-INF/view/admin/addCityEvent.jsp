<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin | Add City Event</title>
<!-- General CSS Files -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/custom.css">

<!-- favicon icon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/userResource/image/favicon-16x16.png" />
	
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">
	
</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>

			<jsp:include page="header.jsp"></jsp:include>


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-12">
								<div class="card">
								<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
								<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
									<f:form modelAttribute="CityEventVO" method="post" action="saveCityEvent" enctype="multipart/form-data" onsubmit="return addCityEvent()">
										<div class="card-header" >
											<h4>${type} City Event</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<!-- <label>City Name</label> <select
													class="form-control form-select" >
													<option>Option 1</option>
													<option>Option 2</option>
													<option>Option 3</option>
												</select> -->
												<label>City Name<span style="color: red;">*</span></label>
												<f:select path="cityVO.id" onchange="getArea()"
													class="form-control form-select" id="cityname">
													<option value="default" selected>----- Select
														-----</option>
													<c:forEach items="${cityList}" var="i">
														<f:option value="${i.id}">${i.cityname}</f:option>

													</c:forEach>
												</f:select> 
											</div>
											<div class="form-group">
												<label>Area Name</label> 
												<f:select path="areaVO.id"
													class="form-control form-select" id="areaname">
													<option value="default" selected>----- Select
														-----</option>
												</f:select>
											</div>

											<div class="form-group">
												<label>Event Type</label> 
												<f:select class="form-control form-select" path="eventType" id="eventType"> 
													<f:option value="Music">Music</f:option>
													<f:option value="Exchibtion">Exhibition</f:option>
													<f:option value="Inogration">Inogration</f:option>
													<f:option value="Product launch">Product Launch</f:option>
												</f:select>
											</div> 

											<div class="form-group">
												<label>Date</label> <f:input type="date" class="form-control" path="cityeventDate" id="cityeventDate"/>
											</div>

											<div class="form-group">
												<label>Time</label> <f:input type="text" class="form-control"
													required="" path="cityeventtime" PlaceHolder="11 AM to 3 AM" id="cityeventtime" /> 
											</div>

											<div class="form-group">
												<label>From Day</label> <f:select
													class="form-control form-select" path="cityeventfromday" id="cityeventfromday">
													<option>Sunday</option>
													<option>Monday</option>
													<option>Tuesday</option>
													<option>Wednesday</option>
													<option>Thursday</option>
													<option>Friday</option>
													<option>Saturday</option>
												</f:select>
											</div>

											<div class="form-group">
												<label>To Day</label> <f:select
												path="cityeventtoday" class="form-control form-select" id="cityeventtoday">
													<option>Sunday</option>
													<option>Monday</option>
													<option>Tuesday</option>
													<option>Wednesday</option>
													<option>Thursday</option>
													<option>Friday</option>
													<option>Saturday</option>
												</f:select>
											</div>



											<div class="form-group mb-0">
												<label>Description</label>
												<f:textarea class="form-control" path="cityEventdescription" required="" id="cityEventdescription"></f:textarea>
											</div>
											<div class="form-group">
												<label>Attachments<span style="color: red;" >*</span></label>
												<input type="file" name="file" class="form-control" id="file">
											</div>
											<c:if test="${type eq 'Edit' }">
												<div><a
														href="<%=request.getContextPath()%>/documents/cityEvent/${CityEventVO.fileName}"
														target="_blank"> <img
														src="<%=request.getContextPath()%>/documents/cityEvent/${CityEventVO.fileName}"
														alt="${EventTypeVO.fileName}" height="50px" width="50px">
													</a>
												</div>
											</c:if> 
										</div>
										<div class="card-footer text-left">
											<button class="btn btn-secondary">${button}</button>
										</div>
										<f:hidden path="id"/>
									</f:form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>

			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<!-- General JS Scripts -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
	
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/validation/addCityEvent.js"></script>
	
	<script>
		$(document).ready(function() {
			iziToast.error({
				title : 'Hello, world!',
				message : 'This awesome plugin is made by iziToast',
				position : 'topRight'
			});
		});
		
		
		function getArea(){
			
			var id = $('#cityname').val();
			var area = document.getElementById('areaname');
			
			  const xhttp = new XMLHttpRequest();
		
			  xhttp.onreadystatechange = function() {
			  
				  area.innerHTML = '';
				  
				  if(xhttp.readyState === 4){
					  
					  var jsn = JSON.parse(xhttp.responseText);
					  
					  
					  
					  
					 if(jsn && jsn.length > 0){
						 
						 for(var i  = 0 ; i < jsn.length ; i ++){
					
							 var opn = document.createElement('option');
							 
							 opn.text = jsn[i].areaname;
							 opn.value = jsn[i].id;
				
							 area.options.add(opn);
							 
						 }
					 }
				  }
				  
			  }
			  
			  xhttp.open("GET", "viewCityDetails?id="+id, true);
			  xhttp.send();

			
			
			
		}
		
	</script>
</body>

</html>