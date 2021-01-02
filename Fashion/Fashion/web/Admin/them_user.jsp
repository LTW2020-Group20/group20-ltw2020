<%@ page import="vn.com.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>AddUser</title>
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
                    <h2 style="font-weight: bold ; font-size: 30px">New User!</h2>
                  <span><%=request.getAttribute("pass")=="" ? request.getAttribute("eror"): ""%></span>
                    <form action="<%=Util.fullPath("AddUser")%>" method="post">
                      <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Tên </label>
                        <input type="text" id="name" name="name" placeholder="User Name" value="<%=request.getAttribute("pass")=="" ? request.getAttribute("name"): ""%>"/>
                        <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Email </label>
                        <input type="email" id="email" name="email" placeholder="Email Address" value="<%=request.getAttribute("pass")=="" ? request.getAttribute("email"):""%>"/>
                        <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Phone </label>
                        <input type="text" id="phone" name="phone" placeholder="Number Phone" value="<%=request.getAttribute("pass")=="" ? request.getAttribute("phone"):""%>"/>
                        <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Address </label>
                        <input type="text" id="" name="address" placeholder="Address" value="<%=request.getAttribute("pass")=="" ? request.getAttribute("address"):""%>"/>
                        <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">Password </label>
                        <input type="password" id="password" name="password" placeholder="Password"/>
                        <%--@declare id="pwd"--%><label class="control-label col-sm-2" for="pwd">RePassword </label>
                        <input type="password" id="password" name="repass" placeholder="RePassword"/>

<%--                        <input type="password" placeholder="RePassword"/>--%>

                        <button style="float: right" type="submit" class="btn btn-default">Thêm</button>
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
