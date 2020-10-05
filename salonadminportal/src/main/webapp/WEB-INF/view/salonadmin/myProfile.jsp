<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Doccure - Vertical Form</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="adminResources/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="adminResources/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet" href="adminResources/css/font-awesome.min.css">

<!-- Feathericon CSS -->
<link rel="stylesheet" href="adminResources/css/feathericon.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet" href="adminResources/css/select2.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="adminResources/css/style.css">

<!--[if lt IE 9]>
			<script src="adminResources/js/html5shiv.min.js"></script>
			<script src="adminResources/js/respond.min.js"></script>
		<![endif]-->
		
		<script type="text/javascript">
		
		var check = function() {
		
			 var password = document.getElementById('password');
			 
			 if(document.getElementById('password').value.length > 5){
				 document.getElementById('message1').style.color = 'green';
				    document.getElementById('message1').innerHTML = 'character number ok!';
				 
			 }
			 else{
				 
				 	document.getElementById('message1').style.color = 'red';
				    document.getElementById('message1').innerHTML = 'you have to enter at least 6 digit!';
				 
			 }
			 
			 if (document.getElementById('password').value ==
				    document.getElementById('confirmpassword').value) {
				    document.getElementById('message').style.color = 'green';
				    document.getElementById('message').innerHTML = 'matching';
				  } else {
				    document.getElementById('message').style.color = 'red';
				    document.getElementById('message').innerHTML = 'not matching';
				  } 
			 
			    /* var confirmpassword = document.getElementById('confirmpassword');
			    var message = document.getElementById('error-nwl');
			    var goodColor = "#66cc66";
			    var badColor = "#ff6666";
			
			    if(password.value.length > 5)
			    {
			    	password.style.backgroundColor = goodColor;
			        message.style.color = goodColor;
			        message.innerHTML = "character number ok!"
			    }
			    else
			    {
			    	password.style.backgroundColor = badColor;
			        message.style.color = badColor;
			        message.innerHTML = " you have to enter at least 6 digit!"
			        return;
			    }
			  
			    if(password.value == confirmpassword.value)
			    {
			    	confirmpassword.style.backgroundColor = goodColor;
			        message.style.color = goodColor;
			        message.innerHTML = "ok!"
			    }
				else
			    {
					confirmpassword.style.backgroundColor = badColor;
			        message.style.color = badColor;
			        message.innerHTML = " These passwords don't match"
			    }
			    
			 */ 
			}
		/* 
		$('#password, #confirmpassword').on('keyup', function () {
			  if ($('#password').val() == $('#confirmpassword').val()) {
			    $('#message').html('Matching').css('color', 'green');
			  } else 
			    $('#message').html('Not Matching').css('color', 'red');
			});
		 */
		</script>
		
</head>
<body>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

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
		<!-- /Header -->


		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<div class="content container-fluid">

				<!-- Page Header -->
				<!-- <div class="page-header">
						<div class="row">
							<div class="col">
								<h3 class="page-title">Vertical Form</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
									<li class="breadcrumb-item active">Vertical Form</li>
								</ul>
							</div>
						</div>
					</div> -->
				<!-- /Page Header -->

				<!-- <div class="row">
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Basic Form</h4>
								</div>
								<div class="card-body">
									<form action="#">
										<div class="form-group">
											<label>First Name</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Last Name</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Email Address</label>
											<input type="email" class="form-control">
										</div>
										<div class="form-group">
											<label>Username</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Password</label>
											<input type="password" class="form-control">
										</div>
										<div class="form-group">
											<label>Repeat Password</label>
											<input type="password" class="form-control">
										</div>
										<div class="text-right">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Address Form</h4>
								</div>
								<div class="card-body">
									<form action="#">
										<div class="form-group">
											<label>Address Line 1</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Address Line 2</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>City</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>State</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Country</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Postal Code</label>
											<input type="text" class="form-control">
										</div>
										<div class="text-right">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					 -->
				<!-- <div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Two Column Vertical Form</h4>
								</div>
								<div class="card-body">
									<form action="#">
										<h4 class="card-title">Personal Information</h4>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>First Name</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>Last Name</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>Blood Group</label>
													<select class="select">
														<option>Select</option>
														<option value="1">A+</option>
														<option value="2">O+</option>
														<option value="3">B+</option>
														<option value="4">AB+</option>
													</select>
												</div>
												<div class="form-group">
													<label class="d-block">Gender:</label>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="gender" id="gender_male" value="option1">
														<label class="form-check-label" for="gender_male">Male</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="gender" id="gender_female" value="option2">
														<label class="form-check-label" for="gender_female">Female</label>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Username</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>Email</label>
													<input type="text" class="form-control">
												</div>

												<div class="form-group">
													<label>Password</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>Repeat Password</label>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<h4 class="card-title">Postal Address</h4>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Address Line 1</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>Address Line 2</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>State</label>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>City</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>Country</label>
													<input type="text" class="form-control">
												</div>
												<div class="form-group">
													<label>Postal Code</label>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="text-right">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
 -->
				<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
				<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
				<c:out value="${message}"></c:out>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Two Column Vertical Form</h4>
							</div>
							<div class="card-body">
								<f:form action="updateOwnerInfo" modelAttribute="ownerDetails">
									<div class="row">
										<div class="col-md-6">
											<h4 class="card-title">Personal details</h4>
											<div class="form-group">
											<f:hidden path="id"/>
											<f:hidden path="shopname"/>
											<f:hidden path="city"/>
											<f:hidden path="address"/>
												<label>User Name</label><span style="color : red;"><c:out value ="${message}"></c:out></span>
												<%-- <input type="text"
													class="form-control" id="validationCustom01"
													required="required" value="${ownerDetails.username}"> --%>
												<f:input path="username" class="form-control"
													id="validationCustom01" required="required"
													 />
											</div>
											<div class="form-group">
												<label>Current Password</label> <input type="text"
													class="form-control" name="password" id="validationCustom01" 
													required="required" />
											</div>

										</div>
										<div class="col-md-6">
											<h4 class="card-title">Personal details</h4>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>First Name</label>
														<f:input path="firstname" class="form-control"
															id="validationCustom01" required="required" />

													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Last Name</label>
														<f:input path="lastname" class="form-control"
															id="validationCustom01" required="required" />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>New Password</label><span id='message1'></span>
														<input type="password" class="form-control" 
															id="password"  name="newPassword" required="required" onkeyup='check();' />
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Confirm Password </label>
														 <span id='message'></span>
														<input type="text" class="form-control"
															id="confirmpassword"  name="confirmpassword" required="required"  onkeyup='check();'/>
													</div>
												</div>

												<div class="text-right">
													<button type="submit" class="btn btn-primary">Submit</button>
												</div>
											</div>

										</div>
									</div>
								</f:form>
							</div>

						</div>


					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="adminResources/js/jquery-3.2.1.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="adminResources/js/popper.min.js"></script>
	<script src="adminResources/js/bootstrap.min.js"></script>

	<!-- Slimscroll JS -->
	<script
		src="adminResources/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Select2 JS -->
	<script src="adminResources/js/select2.min.js"></script>

	<!-- Custom JS -->
	<script src="adminResources/js/script.js"></script>
</body>
</html>