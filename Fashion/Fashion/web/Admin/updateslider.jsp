<%@ page import="vn.com.Util" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Update Slider</title>
  <link href="<%= Util.fullPath("eshopper/css/bootstrap.min.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/font-awesome.min.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/prettyPhoto.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/price-range.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/animate.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/main.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/responsive.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("eshopper/css/button.css")%>" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
  <link rel="shortcut icon" href="images/ico/favicon.ico">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
  <title>Update Slide</title>
</head>
<body>
<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
  <div class="container">
    <div class="row">
      <div class="col-sm-4" style="margin-left: 35%">
        <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">
          <%
            ResultSet rs= (ResultSet) request.getAttribute("rs");
            rs.next();
          %>
          <h2 style="font-weight: bold ; font-size: 30px">Update Slider!</h2>
          <form action="<%=Util.fullPath("editslide")%>" method="post">
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Id </label>
            <input type="text" id="id" name="id"  value="<%=rs.getInt(1)%>">
            <div class="container1">
              <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Choose Image</P>

              <input type='file' name="img" id="img" value="">
            </div>
            <div class="container1">
              <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Image</P>
              <img src="<%=Util.fullPath(rs.getString(2))%>" style="width: 200px;height: 120px">
            </div>
              <div class="container1">
                <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Description</P>
                <textarea name="disc" ><%=rs.getString(3)%></textarea>
              </div>
              <script src="<%= Util.fullPath("Admin/ckeditor/ckeditor.js")%>"></script>
              <script>
                  CKEDITOR.replace('disc');
              </script>
              <button style="float: right" type="submit" class="btn btn-default">Update</button>
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
