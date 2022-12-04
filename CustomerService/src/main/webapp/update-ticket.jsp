<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Update Your Ticket</title>
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
					<li><a href="view-tickets.jsp"> <i
							class="fa fa-dashboard"></i> <span>Tickets</span>
					</a></li>
					<li class="active"><a href="create-ticket.jsp"> <i
							class="fa fa-list-alt"></i> <span>Create New Ticket</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-7  ">

						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title">Edit Your Ticket</h3>
							</div>

							<%
            String id = request.getParameter("id");
            String subject = request.getParameter("subject");
            String priority = request.getParameter("priority");
            String category = request.getParameter("category");
            String issue = request.getParameter("issue");
            %>


							<form role="form" action="update" method="post">
								<div class="box-body">
									<div class="form-group">

										<label for="inputEmail3" class="col-sm-3 control-label">Ticket
											ID</label>

										<div class="col-sm-8">
											<input type="text" class="form-control" name="id"
												value="<%=id%>" readonly>
										</div>

										<label for="inputEmail3" class="col-sm-3 control-label">Ticket
											Subject</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" name="subject"
												value="<%=subject%>" readonly>
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-3 control-label">Priority</label>

										<div class="col-sm-8">
											<select class="form-control" name="priority" disabled>
												<option value="<%=priority%>" disabled selected><%=priority%></option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-3 control-label">Ticket
											Category</label>

										<div class="col-sm-8">
											<select class="form-control" name="category" disabled>
												<option value="<%=category%>" disabled selected><%=category%></option>
											</select>
										</div>
									</div>
									<div class="form-group" style="margin-left: %; margin-top: 27%">
										<div class="box-body pad">

											<textarea id="editor1" name="issue" rows="10" cols="80"><%=issue%>
                                              
                      </textarea>

										</div>
										<input type="submit" name="submit" value="Edit Ticket">

									</div>


									<!-- /.box-body -->

									<div class="box-footer"></div>
								</div>
							</form>
						</div>
					</div>
					<!-- /.col -->
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
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
	</div>
	<!-- ./wrapper -->
	<script src="jquery.min.js"></script>
	<script src="raphael-min.js"></script>
	<script src="canvasjs.min.js"></script>

	<script src="morris.min.js"></script>
	<!--<script type="text/javascript">
  
    new Morris.Line({
    // ID of the element in which to draw the chart.
    element: 'myfirstchart',
    // Chart data records -- each entry in this array corresponds to a point on
    // the chart.
    data: [
      { year: '2008', value: 20 },
      { year: '2009', value: 10 },
      { year: '2010', value: 5 },
      { year: '2011', value: 5 },
      { year: '2012', value: 20 },
      { year: '2015', value: 30 }
    ],
    // The name of the data record attribute that contains x-values.
    xkey: 'year',
    // A list of names of data record attributes that contain y-values.
    ykeys: ['value'],
    // Labels for the ykeys -- will be displayed when you hover over the
    // chart.
    labels: ['Value']
  });
  </script> -->
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
	<script src="bower_components/ckeditor/ckeditor.js"></script>

	<script
		src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>

	<!-- page script -->
	<script>
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
  </script>
	<script>
    $(function () {
      // Replace the <textarea id="editor1"> with a CKEditor
      // instance, using default configuration.
      CKEDITOR.replace('editor1')
      //bootstrap WYSIHTML5 - text editor
      $('.textarea').wysihtml5()
    })
  </script>
	<!-- page script -->

</body>
</html>
