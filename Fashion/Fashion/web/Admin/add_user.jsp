
<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>AddUser</title>
  <link href="<%= Util.fullPath("ashion/css/bootstrap.min.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("Admin/vendors/gauge.js/assets/bootstrap.min.css")%>" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
  <link rel="shortcut icon" href="images/ico/favicon.ico">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
  <title>Title</title>
  <style>
    .v
    {
      width: 74%;
      height: calc(1.5em + 0.75rem + -2px);
      padding: .375rem .75rem;
      font-size: 13px

    }
    .m{
      padding-left: 0px;
      margin-bottom: 0px;
    }
    .z{
      height: 30px;
    }
  </style>

</head>
<body style="background: linear-gradient(indianred, darkcyan)">
<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
  <div class="container">
    <div class="row">
      <div class="col-sm-4" style="margin-left: 35%">
        <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">
          <h2 style="font-weight: bold ; font-size: 30px">New User!</h2>
          <form action="<%=Util.fullPath("AddUser")%>" method="post">
            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Username </label>
            <input style="height: 30px;color: black" type="text" id="name" name="name" placeholder="User name..." value="<%=request.getAttribute("name") != null ? request.getAttribute("name") : ""%>"/><br>
              <span style="color: red;"><%=request.getAttribute("checkname")!=null ? request.getAttribute("erorname"):""%></span>
            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Password</label>
            <input style="height: 30px;color: black" type="password"  name="pass" placeholder="Enter new password..." value=""/>

            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">RePassword </label>
            <input style="height: 30px;color: black" type="password"  name="repass" placeholder="Confirm your password..." value=""/><br>
              <span style="color: red"><%=request.getAttribute("checkpass")!=null ? request.getAttribute("erorpass"):""%></span>
            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Phone</label>
            <input style="height: 30px;color: black" type="text"  name="phone" placeholder="Your number..." value="<%=request.getAttribute("phone") != null ? request.getAttribute("phone") : ""%>"/>

              <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Email</label>
              <input style="height: 30px;color: black" type="email"  name="email" placeholder="Your email..." value="<%=request.getAttribute("email") != null ? request.getAttribute("email") : ""%>"/>

              <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Address</label>
              <input style="height: 30px;color: black" type="text"  name="address" placeholder="Your address..." value="<%=request.getAttribute("address") != null ? request.getAttribute("address") : ""%>"/>

              <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Role</label>
              <select class="form-control v" type="text"  name="role">
                <option>User</option>
                <option>Admin</option>
              </select>




            <button style="margin-left: 66px" type="submit" class="btn btn-default" >Add to list</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>
