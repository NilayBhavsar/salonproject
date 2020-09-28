<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Doccure - Pharmacy Dashboard</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="userResources/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="userResources/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="userResources/css/font-awesome.min.css">

<!-- Feathericon CSS -->
<link rel="stylesheet"
	href="userResources/css/feathericon.min.css">

<link rel="stylesheet"
	href="userResources/plugins/morris/morris.css">

<!-- Main CSS -->
<link rel="stylesheet" href="userResources/css/style.css">

<!--[if lt IE 9]>
			<script src="userResources/js/html5shiv.min.js"></script>
			<script src="userResources/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>

	<!-- Main Wrapper -->


	<!-- Header -->

	<div class="header">

		<!-- Logo -->
		<div class="header-left">
			<a href="index.html" class="logo"> <img
				src="userResources/img/logo.png" alt="Logo">
			</a> <a href="index.html" class="logo logo-small"> <img
				src="userResources/img/logo-small.png" alt="Logo" width="30"
				height="30">
			</a>
		</div>
		<!-- /Logo -->

		<!-- <a href="javascript:void(0);" id="toggle_btn">
					<i class="fe fe-text-align-left"></i>
				</a> -->

		<!-- <div class="top-nav-search">
					<form>
						<input type="text" class="form-control" placeholder="Search here">
						<button class="btn" type="submit"><i class="fa fa-search"></i></button>
					</form>
				</div> -->

		<!-- Mobile Menu Toggle -->
		<a class="mobile_btn" id="mobile_btn"> <i class="fa fa-bars"></i>
		</a>
		<!-- /Mobile Menu Toggle -->

		<!-- Header Right Menu -->
		<!-- <ul class="nav user-menu">

					Notifications
					<li class="nav-item dropdown noti-dropdown">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<i class="fe fe-bell"></i> <span class="badge badge-pill">3</span>
						</a>
						<div class="dropdown-menu notifications">
							<div class="topnav-dropdown-header">
								<span class="notification-title">Notifications</span>
								<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list">
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="userResources/img/doctors/doctor-thumb-01.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Dr. Ruby Perrin</span> Schedule <span class="noti-title">her appointment</span></p>
													<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="userResources/img/profiles/avatar-01.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Charlene Reed</span> has booked her appointment to <span class="noti-title">Dr. Ruby Perrin</span></p>
													<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="userResources/img/profiles/avatar-02.jpg">
												</span>
												<div class="media-body">
												<p class="noti-details"><span class="noti-title">Travis Trimble</span> sent a amount of $210 for his <span class="noti-title">appointment</span></p>
												<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="userResources/img/profiles/avatar-03.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Carl Kelly</span> send a message <span class="noti-title"> to his doctor</span></p>
													<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="#">View all Notifications</a>
							</div>
						</div>
					</li>
					/Notifications
					
					User Menu
					<li class="nav-item dropdown has-arrow">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<span class="user-img"><img class="rounded-circle" src="userResources/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									<img src="userResources/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
								</div>
								<div class="user-text">
									<h6>Ryan Taylor</h6>
									<p class="text-muted mb-0">Administrator</p>
								</div>
							</div>
							<a class="dropdown-item" href="profile.html">My Profile</a>
							<a class="dropdown-item" href="settings.html">Settings</a>
							<a class="dropdown-item" href="login.html">Logout</a>
						</div>
					</li>
					/User Menu
					
				</ul>-->
		<!-- /Header Right Menu -->

	</div>

	<!-- header   -->



	<div class="page">
		<div class="content container-fluid">

			<!-- Page Header -->
			<div class="page-header">
				<div class="row">
					<div class="col-sm-12">
						<h3 class="page-title">Add Product</h3>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
							<li class="breadcrumb-item active">Add Product</li>
						</ul>
					</div>
				</div>
			</div>



			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body custom-edit-service">


							<!-- Add Medicine -->
							<!-- <form method="post" enctype="multipart/form-data"
								autocomplete="off" id="update_service"
								action="https://doccure-html.dreamguystech.com/template/pharmacy/medicine.html"> -->
							<%@taglib prefix="form"
								uri="http://www.springframework.org/tags/form"%>
							<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

							<form:form action="/newOwner" id="update_service" method="post"
								modelAttribute="ownerDetails">
								<!-- <input type="hidden" name="csrf_token_name"
									value="0146f123a4c7ae94253b39bca6bd5a5e"> -->
								
								<form:hidden path="id"/>
							
								<div class="service-fields mb-3">
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">
												<label>Owner UserName<span class="text-danger">*</span>
													<span style="color: red;">${usernameExists}</span>
													</label>
												<!-- <input
											type="hidden" name="brand_name" id="brand_name" value="18"> -->
												<!-- <input class="form-control" type="text" name="brand_name"
													id="brand_name" value="" required=""> -->
												<form:input path="username" class="form-control"
													id="user_name" required="required" />
											</div>
										</div>
									</div>
								</div>

								<div class="service-fields mb-3">
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">

												<label>Owner Name<span class="text-danger">*</span>

												</label>
												<!-- <input
											type="hidden" name="brand_name" id="brand_name" value="18"> -->
												<!-- <input class="form-control" type="text" name="brand_name"
													id="brand_name" value="" required=""> -->
												<form:input path="ownername" class="form-control"
													id="owner_name" required="required" />
											</div>
										</div>



										<%-- <div class="col-lg-6">
											<div class="form-group">
												<label>Owner Email Id <span class="text-danger">*</span></label>

												<!-- <input class="form-control" type="text" name="Price"
													id="Price" required=""> -->
												<form:input path="email" class="form-control"
													id="email_name" required="required" />
											</div>
										</div> --%>


										<div class="col-lg-6">
											<div class="form-group">
												<label>Owner Contact Number <span
													class="text-danger">*</span></label>
												<!-- <input class="form-control"
													type="text" name="brand_name" id="brand_name" value=""
													required=""> -->
												<form:input path="phone" class="form-control"
													id="email_name" required="required" />
											</div>
										</div>






										<div class="col-lg-6">
											<div class="form-group">
												<label>City <span class="text-danger">*</span></label>
												<!-- <select
													class="form-control select" name="category" required="">
													<option value="Modasa">Modasa</option>
													<option value="Ahmedabad" selected="selected">Ahmedabad</option>

												</select> -->
												<form:select path="city" class="form-control" id="city"
													required="required">
													<form:option value="Modasa">Modasa</form:option>
													<form:option value="Ahmedabad">Modasa</form:option>
												</form:select>
											</div>
										</div>


										<div class="col-lg-6">
											<div class="form-group">
												<label>Address/Landmark <span class="text-danger">*</span></label>
												<!-- <input type="text" id="about" class="form-control"
													name="about" hieght="10px" required=""> -->
												<form:input path="address" class="form-control" id="address"
													required="required" />

											</div>
										</div>
									</div>
								</div>






								<!-- <div class="service-fields mb-3">
					<div class="row">
						<div class="col-lg-12">
							<div class="service-upload">
								<i class="fas fa-cloud-upload-alt"></i> <span>Upload
									Product Images *</span> <input type="file" name="images[]" id="images"
									multiple="" accept="image/jpeg, image/png, image/gif,">

							</div>
							<div id="uploadPreview">
								<ul class="upload-wrap">
									<li>
										<div class=" upload-images">
											<img alt="Blog Image"
												src="userResources/img/product/product1.jpg">
										</div>
									</li>
								</ul>
							</div>

						</div>
					</div>
				</div>
 -->
								<div class="submit-section">
									<button class="btn btn-primary submit-btn" type="submit"
										name="form_submit" value="submit">Submit</button>
								</div>
							</form:form>
							<!-- /Add Medicine -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer class="footer">

		<!-- Footer Top -->
		<div class="footer-top">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-3 col-md-6">

						<!-- Footer Widget -->
						<div class="footer-widget footer-about">
							<div class="footer-logo">
								<img src="userResources/img/footer-logo.png" alt="logo">
							</div>
							<div class="footer-about-content">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
								<div class="social-icon">
									<ul>
										<li><a href="#" target="_blank"><i
												class="fab fa-facebook-f"></i> </a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-twitter"></i> </a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-linkedin-in"></i></a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-instagram"></i></a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-dribbble"></i> </a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- /Footer Widget -->

					</div>

					<div class="col-lg-3 col-md-6">

						<!-- Footer Widget -->
						<div class="footer-widget footer-menu">
							<h2 class="footer-title">For Patients</h2>
							<ul>
								<li><a href="search.html">Search for Doctors</a></li>
								<li><a href="login.html">Login</a></li>
								<li><a href="register.html">Register</a></li>
								<li><a href="booking.html">Booking</a></li>
								<li><a href="patient-dashboard.html">Patient Dashboard</a></li>
							</ul>
						</div>
						<!-- /Footer Widget -->

					</div>

					<div class="col-lg-3 col-md-6">

						<!-- Footer Widget -->
						<div class="footer-widget footer-menu">
							<h2 class="footer-title">For Doctors</h2>
							<ul>
								<li><a href="appointments.html">Appointments</a></li>
								<li><a href="chat.html">Chat</a></li>
								<li><a href="login.html">Login</a></li>
								<li><a href="doctor-register.html">Register</a></li>
								<li><a href="doctor-dashboard.html">Doctor Dashboard</a></li>
							</ul>
						</div>
						<!-- /Footer Widget -->

					</div>

					<div class="col-lg-3 col-md-6">

						<!-- Footer Widget -->
						<div class="footer-widget footer-contact">
							<h2 class="footer-title">Contact Us</h2>
							<div class="footer-contact-info">
								<div class="footer-address">
									<span><i class="fas fa-map-marker-alt"></i></span>
									<p>
										3556 Beech Street, San Francisco,<br> California, CA
										94108
									</p>
								</div>
								<p>
									<i class="fas fa-phone-alt"></i> +1 315 369 5943
								</p>
								<p class="mb-0">
									<i class="fas fa-envelope"></i> doccure@example.com
								</p>
							</div>
						</div>
						<!-- /Footer Widget -->

					</div>

				</div>
			</div>
		</div>
		<!-- /Footer Top -->

		<!-- Footer Bottom -->
		<div class="footer-bottom">
			<div class="container-fluid">

				<!-- Copyright -->
				<div class="copyright">
					<div class="row">
						<div class="col-md-6 col-lg-6">
							<div class="copyright-text">
								<p class="mb-0">&copy; 2020 Doccure. All rights reserved.</p>
							</div>
						</div>
						<div class="col-md-6 col-lg-6">

							<!-- Copyright Menu -->
							<div class="copyright-menu">
								<ul class="policy-menu">
									<li><a href="term-condition.html">Terms and Conditions</a></li>
									<li><a href="privacy-policy.html">Policy</a></li>
								</ul>
							</div>
							<!-- /Copyright Menu -->

						</div>
					</div>
				</div>
				<!-- /Copyright -->

			</div>
		</div>
		<!-- /Footer Bottom -->

	</footer>


</body>

</html>
