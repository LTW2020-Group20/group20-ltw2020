<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>edit_product</title>
  <link href="<%= Util.fullPath("Admin/vendors/gauge.js/assets/bootstrap.min.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("ashion/css/font-awesome.min.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("ashion/css/prettyPhoto.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("ashion/css/price-range.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("ashion/css/animate.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("ashion/css/main.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("ashion/css/responsive.css")%>" rel="stylesheet">
  <link href="<%= Util.fullPath("ashion/css/button.css")%>" rel="stylesheet">
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
          <%
            ResultSet check= (ResultSet) request.getAttribute("check");
            check.next();
          %>
          <h2 style="font-weight: bold ; font-size: 30px">Edit Product!</h2>
          <form action="<%=Util.fullPath("EditPro")%>" method="post">
            <%--@declare id="pwd"--%><label class="control-l col-sm-2" for="pwd">Id </label>
            <input type="text" id="id" name="id"  value="<%=check.getInt(1)%>">
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Name </label>
            <input type="text" id="" name="name"  value="<%=check.getString(2)%>"/>
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Id_Ctg</label>
            <input type="text" id="" name="type" value="<%=check.getInt(3)%>"/>
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Price </label>
            <input type="text" id="" name="price"  value="<%=check.getDouble(4)%>"/>
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Brand</label>
            <input type="text" id="" name="brand"  value="<%=check.getString(5)%>"/>
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Quantity</label>
            <input type="text" id="" name="quantity"  value="<%=check.getInt(6)%>"/>
            <div class="container1">
              <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Choose Image</P>

              <input type='file' name="img" id="img" value=" ashion/img/product/<%=request.getAttribute("error")!=null ? request.getAttribute("img") : ""%>">
            </div>
            <div class="container1">
              <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Image</P>
              <img style="width: auto;height: 200px" src=<%=Util.fullPath(check.getString(9))%>>
              </div>
              <div class="container1">
                <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Description</P>
                <textarea name="disc" ><%=check.getString(8)%></textarea>
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
<script src="<%= Util.fullPath("ashion/js/jquery.js")%>"></script>
<script src="<%= Util.fullPath("ashion/js/price-range.js")%>"></script>
<script src="<%= Util.fullPath("ashion/js/jquery.scrollUp.min.js")%>"></script>
<script src="<%= Util.fullPath("ashion/js/bootstrap.min.js")%>"></script>
<script src="<%= Util.fullPath("ashion/js/jquery.prettyPhoto.js")%>"></script>
<script src="<%= Util.fullPath("ashion/js/main.js")%>"></script>
</body>
</html>
