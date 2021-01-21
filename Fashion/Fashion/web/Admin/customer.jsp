<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.com.controller.Util" %>
<%@ page import="vn.com.controller.User" %>
<!DOCTYPE html>
<html>
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin-Customer</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/fontawesome-free/css/all.css")%>">

  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/datatables-bs4/css/dataTables.bootstrap4.css")%>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/dist/css/adminlte.min.css")%>">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-
    <ul class="navbar-nav">
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<%=Util.fullPath("Admin")%>" class="nav-link"><i class="fa fa-home"></i></a>
      </li>

    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge"></span>
        </a>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge"></span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-image: linear-gradient(#15486E, #99264C)">
    <!-- Brand Logo -->

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->

      <!-- Sidebar Menu -->
      <jsp:include page="center.jsp"></jsp:include>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>List Feedback</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <%
                User u = (User) session.getAttribute("Auth");
                if (u != null) {
              %>
              <li class="breadcrumb-item"><a href="#"><%=u.getUname()%></a></li>
              <li class="breadcrumb-item active">Logout</li>
              <%
              } else{
              %>
              <%--              <li class="breadcrumb-item active" href="<%=Util.fullPath("eshopper/login.jsp")%>">Login</li>--%>
              <%
                }
              %>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card" style="background-color: #fdf1d3;">
            <div class="card-header">
              <i style="color: #15486E;
    font-weight: bolder;">All of the customers</i>
            </div>
<%--            <a href="<%= Util.fullPath("countau")%>"> <i  style="color: dodgerblue ; font-size: 20px; float: right; margin: 6px"class="fas fa-plus"></i></a>--%>

            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">

                <thead>
                <tr>
                  <th>Id</th>
                  <th>Name</th>
                  <th>Address</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>Message</th>
                </tr>
                </thead>
                <tbody>
                <%
                  ResultSet khachhang= (ResultSet) request.getAttribute("khachhang");
                  while(khachhang.next()){
                %>
                <tr>
                  <td><%=khachhang.getInt(1)%></td>
                  <td><%= khachhang.getString(2)%></td>
                  <td><%=khachhang.getString(5)%></td>
                  <td><%=khachhang.getString(3)%></td>
                  <td><%=khachhang.getString(4)%></td>
                  <td><%=khachhang.getString(6)%></td>

                </tr>
                <% } %>
                </tbody>

              </table>
            </div>


          </div>
          <!-- /.card -->


        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright 2020 <a href="#">Admin</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<%= Util.fullPath("Admin/plugins/jquery/jquery.min.js")%>"></script>
<!-- Bootstrap 4 -->
<script src="<%= Util.fullPath("Admin/plugins/bootstrap/js/bootstrap.bundle.min.js")%>"></script>
<!-- DataTables -->
<script src="<%= Util.fullPath("Admin/plugins/datatables/jquery.dataTables.js")%>"></script>
<script src="<%= Util.fullPath("Admin/plugins/datatables-bs4/js/dataTables.bootstrap4.js")%>"></script>
<!-- AdminLTE App -->
<script src="<%= Util.fullPath("Admin/dist/js/adminlte.min.js")%>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%= Util.fullPath("Admin/dist/js/demo.js")%>"></script>
<!-- page script -->

</body>
</html>
