
<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html>
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminH&L</title>
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
<body >
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

    <li class="nav-item has-treeview">
      <a href="#" class="nav-link">
        <i class="nav-icon fas fa-table"></i>
        <p>
          Admin's options
          <i class="fas fa-angle-left right"></i>
        </p>
      </a>
      <ul class="nav nav-treeview">

        <li class="nav-item" style="border-top: 1px solid #c2c7d0;
    border-bottom: 1px solid #c2c7d0">
          <a href="<%=Util.fullPath("ListProduct")%>" class="nav-link">
            <i class="fa fa-arrow-circle-right"></i>
            <p>Product Management</p>
          </a>
        </li>
        <li class="nav-item" style="border-bottom: 1px solid #c2c7d0">
            <a href="<%=Util.fullPath("ListUser")%>" class="nav-link">
               <i class="fa fa-arrow-circle-right"></i>
            <p>User Management</p>
          </a>
        </li>
        <li class="nav-item" style="border-bottom: 1px solid #c2c7d0">
          <a href="<%=Util.fullPath("ListCategory")%>" class="nav-link">
            <i class="fa fa-arrow-circle-right"></i>
            <p>Category Management</p>
          </a>
        </li>
        <li class="nav-item" style="border-bottom: 1px solid #c2c7d0">
          <a href="<%=Util.fullPath("ListCustomer")%>" class="nav-link">
            <i class="fa fa-arrow-circle-right"></i>
            <p>Feedback Management</p>
          </a>
        </li>
        <li class="nav-item" style="border-bottom: 1px solid #c2c7d0">
          <a href="<%=Util.fullPath("ListReceipt")%>" class="nav-link">
            <i class="fa fa-arrow-circle-right"></i>
            <p>Receipt Management</p>
          </a>
        </li>



      </ul>
    </li>



  </ul>
</nav>
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
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
        });
    });
</script>
</body>
</html>
