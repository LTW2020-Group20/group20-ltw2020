<%@ page import="vn.com.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Add_Author</title>
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

</head>
<body>
<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
  <div class="container">
    <div class="row">
      <div class="col-sm-4" style="margin-left: 35%">
        <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">
          <h2 style="font-weight: bold ; font-size: 30px">New Author!</h2>
          <span><%=request.getAttribute("error") != null ? request.getAttribute("error") : ""%></span>
          <form action="<%=Util.fullPath("AddAuthor")%>" method="post">
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">ID </label>
            <input type="text" id="name" name="id"
                   value="<%=request.getAttribute("error")!=null ? request.getAttribute("id") : request.getAttribute("count")%>">
            <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Name </label>
            <input type="text" id="name" name="name" placeholder="Author name..."
                   value="<%=request.getAttribute("error")!=null ? request.getAttribute("autype") : ""%>"/>

            <div class="container1">
              <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Choose Image</P>
              <input type="file" name="img" id="img" value="eshopper/Img/Author/<%=request.getAttribute("error")!=null ? request.getAttribute("img") : ""%>">
            </div>
            <div class="container1">
              <P style="font-size: 15px; color: #FE980F; font-weight: bold" >Description</P>
              <textarea name="disc"></textarea>
            </div>
            <script src="<%= Util.fullPath("Admin/ckeditor/ckeditor.js")%>"></script>
            <script>
                CKEDITOR.replace('disc');
            </script>

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
<script src="<%= Util.fullPath("Admin/ckeditor/ckeditor.js")%>"></script>


</body>
</html>
