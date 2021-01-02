<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>AddType</title>
  <link href="<%= Util.fullPath("eshopper/css/bootstrap.min.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/font-awesome.min.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/prettyPhoto.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/price-range.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/animate.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/main.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/responsive.css")%>" rel="stylesheet">
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
</head>
<body>
<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
  <div class="container">
    <div class="row">
      <div class="col-sm-4" style="margin-left: 35%">
        <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">
          <h2 style="font-weight: bold ; font-size: 30px">New Type!</h2>
          <span><%=request.getAttribute("error")!=null ? request.getAttribute("error"): ""%></span>
          <form action="<%=Util.fullPath("addtype")%>" method="post">
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd" style="font-size: 20px">ID </label>
            <input type="text" id="id" name="id"  value="<%=request.getAttribute("error")!=null ? request.getAttribute("id") : request.getAttribute("count")%>"/>
          <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd" style="font-size: 20px">Type </label>
              <input type="text" id="name" name="type" placeholder="Enter new type..." value="<%=request.getAttribute("error")!=null ? request.getAttribute("type") : ""%>"/>

            <button style="float: right" type="submit" class="btn btn-default">Add</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<script src="<%= Util.fullPath("eshopper/js/jquery.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/price-range.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/jquery.scrollUp.min.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/bootstrap.min.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/jquery.prettyPhoto.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/main.js")%>"></script>
</body>
</html>
