<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Raised Tickets</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>ST</b>S</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Z </b>Customer Service</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->

						<!-- Notifications: style can be found in dropdown.less -->


						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="dist/img/avatar3.png" class="user-image" alt="User Image">
								<span class="hidden-xs">Sander Ford</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img src="dist/img/avatar3.png"
									class="img-circle" alt="User Image">

									<p>
										Alexander Pierce - Web Developer <small>Member since
											Nov. 2012</small>
									</p></li>
								<!-- Menu Body -->

								<!-- Menu Footer-->
								<li class="user-footer"><a href="../index.jsp"><button
											class="btn btn-danger btn-round" style="width: 100%">Log
											out</button></a></li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->

					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/avatar3.png" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Sander Ford</p>
						<a href="#"><i class="fa fa-circle text-success"></i> Member</a>
					</div>
				</div>
				<!-- search form -->

				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MAIN NAVIGATION</li>
					<li class="active"><a href="view-tickets.jsp"> <i
							class="fa fa-list-alt"></i> <span>Raised Ticket</span>
					</a></li>
					<li><a href="create-ticket.jsp"> <i
							class="fa fa-dashboard"></i> <span>Create New Ticket</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Raised Tickets</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Ticket History</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">

						<!-- /.box -->

						<div class="box">

							<div class="modal fade" id="add">
								<div class="modal-dialog" style="width: 40%;">
									<form role="form" action="">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title">Add Ticket History</h4>
											</div>
											<div class="modal-body">
												<!-- /.box-header -->
												<!-- form start -->
												<div class="box-body">
													<div class="form-group">
														<label>Select Member</label> <select style="width: 50%"
															class="form-control">
															<option>option 1</option>
															<option>option 2</option>
														</select>
													</div>
													<div class="form-group">
														<label>Message</label>
														<textarea class="form-control" rows="4"
															placeholder="Enter ..."></textarea>
													</div>
													<div class="form-group">
														<label for="exampleInputEmail1">Time Stamp</label> <input
															style="width: 30%" type="time" class="form-control"
															id="exampleInputEmail1">
													</div>
												</div>
												<!-- /.box-body -->
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-danger pull-left"
													data-dismiss="modal">Close</button>
												<button type="submit" class="btn btn-primary">Save</button>
											</div>
										</div>
									</form>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->

							<div class="box-header"></div>
							<%@page import="java.sql.DriverManager"%>
							<%@page import="java.sql.ResultSet"%>
							<%@page import="java.sql.Statement"%>
							<%@page import="java.sql.Connection"%>

							<%
            String id = request.getParameter("ticketID");
            String driverName = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "customerservice";
            String userId = "root";
            String password = "admin";

            try {
              Class.forName(driverName);
            } catch (ClassNotFoundException e) {
              e.printStackTrace();
            }

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            %>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>Ticket ID</th>
											<th width="25%">Subject</th>
											<th>Priority</th>
											<th>Category</th>
											<th width="40%">Issue</th>
											<th>Action</th>
										</tr>
									</thead>

									<%
                try {
                  connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                  statement = connection.createStatement();
                  String sql = "SELECT * FROM ticketdb";
            
                  resultSet = statement.executeQuery(sql);
                  while (resultSet.next()) {
                %>

									<tbody>
										<tr>
											<td><%=resultSet.getString("ticketID")%></td>
											<td><%=resultSet.getString("subject")%></td>
											<td><%=resultSet.getString("priority")%></td>
											<td><%=resultSet.getString("category")%></td>
											<td><%=resultSet.getString("issue")%></td>
											<td><c:url value="update-ticket.jsp" var="tupdate">
													<c:param name="id"
														value='<%=resultSet.getString("ticketID")%>' />
													<c:param name="subject"
														value='<%=resultSet.getString("subject")%>' />
													<c:param name="priority"
														value='<%=resultSet.getString("priority")%>' />
													<c:param name="category"
														value='<%=resultSet.getString("category")%>' />
													<c:param name="issue"
														value='<%=resultSet.getString("issue")%>' />
												</c:url> <a href="${tupdate}">
													<button type="submit" name="update"
														class="btn btn-xs btn-round btn-primary"
														data-toggle="modal" data-target="#edit">
														<i class="fa fa-pencil"></i>
													</button>
											</a> <c:url value="delete-ticket.jsp" var="tdelete">
													<c:param name="id"
														value='<%=resultSet.getString("ticketID")%>' />
													<c:param name="subject"
														value='<%=resultSet.getString("subject")%>' />
													<c:param name="priority"
														value='<%=resultSet.getString("priority")%>' />
													<c:param name="category"
														value='<%=resultSet.getString("category")%>' />
													<c:param name="issue"
														value='<%=resultSet.getString("issue")%>' />
												</c:url> <a href="${tdelete}">
													<button type="submit" name="delete"
														class="btn btn-xs btn-round btn-danger">
														<i class="fa fa-trash"></i>
													</button>
											</a></td>
											<%
                    }

                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>
										
									</tbody>
								</table>

							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>

			</section>

		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.4.18
		</div>
		<strong>Copyright &copy; 2014-2019 <a
			href="https://adminlte.io">Ticketing</a>.
		</strong> All rights reserved.
	</footer>

	<!-- Control Sidebar -->

	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script
		src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<!-- page script -->
	<!-- <script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script> -->
</body>
</html>
