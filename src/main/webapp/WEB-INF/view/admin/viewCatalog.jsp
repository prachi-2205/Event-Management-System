<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<title>Admin | View Catalog</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
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
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h4>Catalog Details</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>No</th>
														<th>Event Type</th>
														<th>Catalog Price</th>
														<th>Images</th>
														
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${catalogList}" var="i" varStatus="j">
														<tr>
															<td>${j.count}</td>
														
															<td>${i.eventTypeVO.eventtype}</td>
															<td>${i.catalogPrice}</td>
															<td><div id="myImg">
																	<c:forEach items="${catalogFileList}" var="k">
																		<c:if test="${k.catalogVO.id eq i.id }">
																			<img style="height: 50px; width: 50px;"
																				src="<%=request.getContextPath()%>/documents/catalog/${k.fileName}"
																				alt="image small" onclick="fn(this)">
																		</c:if>
																		<c:set var="p" scope="application" value="${k.id}"></c:set>
																	</c:forEach>
																</div></td>
															<%-- <td>${i.catalogdescrption}</td> --%>
															<td><a href="editCatalog?id=${i.id}"><i
																	class="fa fa-edit" style="font-size: 20px;"></i></a> <%-- <a
																href="deleteCatalog?id=${i.id}&id1=${p}"><i
																	class="fas fa-trash-alt"
																	style="color: red; font-size: 20px; margin-left: 15px;"></i></a> --%></td>
														</tr>
													</c:forEach>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>

			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>


	<!-- The Modal -->
	<div id="myModal" class="modal">
		<span class="close" onclick="fn1()">&times;</span> <img
			class="modal-content" id="img01">
		<div id="caption"></div>
	</div>


	<!-- General JS Scripts -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/datatables.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.flash.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/datatables.js"></script>
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
	<!-- Onclick Image Preview -->
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