<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Doccure - Transactions List Page</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="adminResources/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="adminResources/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet" href="adminResources/css/font-awesome.min.css">

<!-- Feathericon CSS -->
<link rel="stylesheet" href="adminResources/css/feathericon.min.css">

<!-- Datatables CSS -->
<link rel="stylesheet"
	href="adminResources/plugins/datatables/datatables.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="adminResources/css/style.css">

<!--[if lt IE 9]>
			<script src="adminResources/js/html5shiv.min.js"></script>
			<script src="adminResources/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- /Header -->

		<!-- Sidebar -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- /Sidebar -->

		<!-- Page Wrapper -->
		<div class="page-wrapper">
			<div class="content container-fluid">

				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<h3 class="page-title">Transactions</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Transactions</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="datatable table table-hover table-center mb-0">
										<thead>
											<tr>
												<th class="text-center">Id</th>
												<th class="text-center">User Name</th>
												<th class="text-center">Owner Name</th>
												<th class="text-center">Phone Number</th>
												<th class="text-center">City</th>
											
												<th class="text-right">Actions</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>

												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

												<c:forEach items="${ownerDetailsList}" var="i" varStatus="j">
													<tr>
														<td class="text-center">${j.count}</td>
														<td class="text-center">${i.username}</td>
														<td class="text-center">${i.ownername}</td>
														<td class="text-center">${i.phone}</td>
														<td class="text-center">${i.city}</td>
														
														<td ><a class="btn btn-sm bg-success-light"
															href="acceptOwnerReuest?id=${i.id}"> Accept </a></td>
														<td ><a class="btn btn-sm bg-danger-light"
															href="deleteOwnerReuest?id=${i.id}"> Delete</a></td>
													</tr>
												</c:forEach>

												<!-- <td><a href="invoice.html">#IN0001</td>
												<td>#PT001</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient1.jpg"
															alt="User Image"></a> <a href="profile.html">Charlene
															Reed </a>
													</h2>
												</td>
												<td>$100.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td> -->
											</tr>
											<!-- <tr>
												<td><a href="invoice.html">#IN0002</td>
												<td>#PT002</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient2.jpg"
															alt="User Image"></a> <a href="profile.html">Travis
															Trimble </a>
													</h2>
												</td>
												<td>$200.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0003</td>
												<td>#PT003</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient3.jpg"
															alt="User Image"></a> <a href="profile.html">Carl
															Kelly</a>
													</h2>
												</td>
												<td>$250.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0004</td>
												<td>#PT004</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient4.jpg"
															alt="User Image"></a> <a href="profile.html">
															Michelle Fairfax</a>
													</h2>
												</td>
												<td>$150.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0005</td>
												<td>#PT005</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient5.jpg"
															alt="User Image"></a> <a href="profile.html">Gina
															Moore</a>
													</h2>
												</td>
												<td>$350.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0006</td>
												<td>#PT006</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient6.jpg"
															alt="User Image"></a> <a href="profile.html">Elsie
															Gilley</a>
													</h2>
												</td>
												<td>$300.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0007</td>
												<td>#PT007</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient7.jpg"
															alt="User Image"></a> <a href="profile.html"> Joan
															Gardner</a>
													</h2>
												</td>
												<td>$250.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0008</td>
												<td>#PT008</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient8.jpg"
															alt="User Image"></a> <a href="profile.html">
															Daniel Griffing</a>
													</h2>
												</td>
												<td>$150.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0009</td>
												<td>#PT009</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient9.jpg"
															alt="User Image"></a> <a href="profile.html">Walter
															Roberson</a>
													</h2>
												</td>
												<td>$100.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr>
											<tr>
												<td><a href="invoice.html">#IN0010</td>
												<td>#PT010</td>
												<td>
													<h2 class="table-avatar">
														<a href="profile.html" class="avatar avatar-sm mr-2"><img
															class="avatar-img rounded-circle"
															src="adminResources/img/patients/patient10.jpg"
															alt="User Image"></a> <a href="profile.html">Robert
															Rhodes </a>
													</h2>
												</td>
												<td>$120.00</td>
												<td class="text-center"><span
													class="badge badge-pill bg-success inv-badge">Paid</span></td>
												<td class="text-right">
													<div class="actions">
														<a class="btn btn-sm bg-danger-light" data-toggle="modal"
															href="#delete_modal"> <i class="fe fe-trash"></i>
															Delete
														</a>
													</div>
												</td>
											</tr> -->
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Page Wrapper -->

		<!-- Delete Modal -->
		<div class="modal fade" id="delete_modal" aria-hidden="true"
			role="dialog">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<!--	<div class="modal-header">
							<h5 class="modal-title">Delete</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>-->
					<div class="modal-body">
						<div class="form-content p-2">
							<h4 class="modal-title">Delete</h4>
							<p class="mb-4">Are you sure want to delete?</p>
							<button type="button" class="btn btn-primary">Save</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Delete Modal -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="adminResources/js/jquery-3.2.1.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="adminResources/js/popper.min.js"></script>
	<script src="adminResources/js/bootstrap.min.js"></script>

	<!-- Slimscroll JS -->
	<script
		src="adminResources/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Datatables JS -->
	<script
		src="adminResources/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="adminResources/plugins/datatables/datatables.min.js"></script>

	<!-- Custom JS -->
	<script src="adminResources/js/script.js"></script>

</body>
</html>