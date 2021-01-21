
<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>AddProduct</title>
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
<body style="background-image:radial-gradient(lightcoral,darkcyan)">
<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
  <div class="container">
    <div class="row" style="    border: 2px solid antiquewhite;
    border-radius: 2px;
    margin-left: 5%;
    padding-left: 34%;
>

      <div >
      <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">
          <h2 style="font-weight: bold ; font-size: 30px; margin-top: 20px; margin-left: 25px; color: bisque">New Product</h2>
          <form action="<%=Util.fullPath("AddProduct")%>" method="post" style="margin-top: 35px">
            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Id </label>
            <input style="height: 30px; width: 240px;color: whitesmoke; background-color: inherit;font-size: 16px; border-radius: 3px" type="text" id="id" name="id"  value="<%=request.getAttribute("count")%>">
            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Name </label>
            <input style="height: 30px; width: 240px;color: whitesmoke; background-color: inherit;font-size: 16px; border-radius: 3px" type="text" id="name" name="name" value=""/>
            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Id-Ctg</label>
            <input style="height: 30px; width: 240px;color: whitesmoke; background-color: inherit;font-size: 16px; border-radius: 3px" type="text" id="type" name="ctg" value=""/>
            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Price </label>
            <input style="height: 30px; width: 240px;color: whitesmoke; background-color: inherit;font-size: 16px; border-radius: 3px" type="text" id="price" name="price"  value=""/>
              <label class="control-label col-sm-3 m" for="pwd">Brand </label>
              <select class="form-control v" type="text" id="" name="brand" style="width: 240px">
                <option>global</option>y
                <option>local</option>
              </select>

            <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Quantity</label>
            <input style="height: 30px;width: 240px"type="text" id="quan" name="quantity" placeholder="New quantity..." value=""/>
              <%--@declare id="pwd"--%><label class="control-label col-sm-3 m" for="pwd">Availability</label>
              <select class="form-control v" type="text" id="" name="avai" style="width: 240px">
                <option>In stock</option>
                <option>Out stock</option>
              </select>

              <label for="sel1">Select list:</label>
              <select class="form-control v" type="text" id="sel1" name="status" style="width: 240px">
                <option>New</option>
                <option>Old</option>
                <option>Sale</option>
                <option>Trend</option>
              </select>

            <div style="margin-bottom: 10px">
              <P style="font-size: 15px; color: bisque; font-weight: bold" >Choose Image</P>

              <input type='file' name="img" id="img" value=" eshopper/Img/Products/<%=request.getAttribute("error")!=null ? request.getAttribute("img") : ""%>">
            </div>
            <div class="" style="margin-right: 330px">
              <P style="font-size: 15px; color: bisque; font-weight: bold" >Description</P>
              <textarea name="disc"></textarea>
            </div>
            <script src="<%= Util.fullPath("Admin/ckeditor/ckeditor.js")%>"></script>

            <script>
                CKEDITOR.replace('disc');
            </script>



            <button style="margin-top: 10px; padding: 12px 26px; background-color: palevioletred; font-size:16px;color: #0c525d; font-family: Sans-Serif; font-weight: bolder; margin-left: 50px" type="submit" class="btn btn-default">Add to list</button>
          </form>
        </div>
  </div>
    </div>
  </div>
</section>

</body>
</html>
