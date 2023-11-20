<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Admin | Add Catalog</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- Validation CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom/customModal.css">

<!-- favicon icon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/userResource/image/favicon-16x16.png" />
</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>

			<jsp:include page="header.jsp"></jsp:include>


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- Main Content -->
			<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
			<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-12">
								<div class="card">
									<f:form action="saveCatalog" modelAttribute="CatalogVO"
										method="post" id="catalogForm" onsubmit="return addCatalog()"
										enctype="multipart/form-data">
										<div class="card-header">
											<h4>${type} Catalog</h4>
										</div>
										<div class="card-body">


											<div class="form-group">
												<label>Catalog Type<span style="color: red;">*</span></label>
												<f:select path="eventTypeVO.id"
													class="form-control form-select" id="eventType">
													<option value="default" selected>------Select------</option>
													<c:forEach items="${eventTypeList}" var="i">

														<f:option value="${i.id}">${i.eventtype}</f:option>


													</c:forEach>
												</f:select>
											</div>
											
											<div class="form-group mb-0">
												<label>Catalog Price<span style="color: red;">*</span></label>
												<f:input path="catalogPrice"
													name="catalogPrice" id="catalogPrice" type="text"
													class="form-control" required=""/>
											</div>
											
											
											<%-- <div class="form-group mb-0">
												<label>Description<span style="color: red;">*</span></label>
												<f:textarea path="catalogdescrption"
													name="catalogdescrption" id="catalogdescrption" type="text"
													class="form-control" required=""></f:textarea>
											</div> --%>
											
											<div class="form-group">
												<label>Attachments<span style="color: red;">*</span></label>
												<input type="file" name="file" class="form-control"
													multiple="multiple" id="file">
											</div>
											<c:if test="${type eq 'Edit' }">
												<div id="myImg" class="mb-0">
													<c:forEach items="${catalogFileList}" var="k">
														<img style="height: 50px; width: 50px;"
															src="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"
															alt="${k.fileName}" onclick="fn(this)">
														<c:set var="p" scope="application" value="${k.id}"></c:set>
													</c:forEach>
												</div>
											
											<div style="margin-top: 20px;">
											<input type="checkbox" name="isRemoveAll" value="true"> <label>Remove All</label>
											</div>
											
											</c:if>
											
											
										</div>
										<f:hidden path="id" />
										<div class="card-footer text-left">
											<button class="btn btn-secondary">${button}</button>
										</div>
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
	
	<div id="myModal" class="modal">
		<span class="close" onclick="fn1()">&times;</span> <img
			class="modal-content" id="img01">
		<div id="caption"></div>
	</div>
	
	<!-- General JS Scripts -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
	<!-- Validation Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/validation/addCatalog.js"></script>
	<!-- -------------------------  -->
	<script>
		$(document).ready(function() {
			iziToast.error({
				title : 'Hello, world!',
				message : 'This awesome plugin is made by iziToast',
				position : 'topRight'
			});
		});
	</script>
		<script type="text/javascript">
		var span = document.getElementsByClassName("close");
		var modal = document.getElementById("myModal");

		function fn(x) {
			var img = document.getElementById("myImg");
			var modalImg = document.getElementById("img01");
			var captionText = document.getElementById("caption");
			modal.style.display = "block";
			
			modalImg.src = x.src;
			captionText.innerHTML = x.alt;
		}
		function fn1() {
			modal.style.display = "none";
		}
	</script>
	
</body>

</html>