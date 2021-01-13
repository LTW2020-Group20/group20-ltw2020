<%@ page import="vn.com.controller.Util" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.com.controller.User" %>
<%@ page import="vn.com.User.cart.Model.Cart" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/5/2020
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
    <script src="<%=Util.fullPath("ashion/js/jquery.min.js")%>"></script>
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/bootstrap.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/font-awesome.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/elegant-icons.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/jquery-ui.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/magnific-popup.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/owl.carousel.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/slicknav.min.css")%>">
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/style.css")%>" >
    <title>header</title>
    <style>
        .a{
            margin: 20px 0px ;
            background: crimson;
        }
    </style>
</head>
<body>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__close">+</div>
    <ul class="offcanvas__widget">
        <li><span class="icon_search search-switch"></span></li>

    </ul>
    <div class="offcanvas__logo">
        <a href="<%=Util.fullPath("ashion/index.jsp")%>"><img src="ashion/img/logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__auth">
        <a href="<%=Util.fullPath("Log")%>">Login</a>
        <a href="<%=Util.fullPath("Regis")%>">Register</a>
    </div>
</div>
<header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-3 col-lg-2">
                <div class="header__logo">
                    <a href="<%=Util.fullPath("Trangchu")%>"><img src="ashion/img/logo.png" alt="" ></a>
                </div>
            </div>
            <div class="col-xl-6 col-lg-7">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="<%=Util.fullPath("Trangchu")%>">Home</a></li>

                        <li><a href="<%=Util.fullPath("Shop")%>">Shop</a>
                            <ul class="dropdown">
                                <%
                                    ResultSet cate=(ResultSet) request.getAttribute("cate");
                                    while (cate.next()){
                                %>
                                <li><a href="<%=Util.fullPath("Shop?ctg="+cate.getInt(1))%>"><%=cate.getString(2)%></a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </li>

                        <li><a href="ashion/blog.html">Blog</a></li>
                        <li><a href="ashion/contact.html">Contact</a></li>
                        <li><a href="ashion/about_us/about_us.html">About Us</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__right">
                    <%
                        User u = (User) session.getAttribute("Auth");
                        Cart c = (Cart) session.getAttribute("Cart");
                        int count = c == null ? 0 : c.list().size();
                        if (u != null) {
                    %>
                    <div class="header__right__auth">
<%--                        <a style="color: crimson" href=""><%=u.getUname()%></a>--%>
                        <a><button type="button" class="btn btn-default btn-lg" id="myBtn" style="padding: 0px;color: crimson;font-size: 16px"><%=u.getUname()%></button></a>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header" style="padding:35px 50px; background-color: #fdf1d3; ">
                                        <h4><span class="glyphicon glyphicon-lock">More Function!</span></h4>
                                    </div>
                                    <div class="modal-body" style="padding: 50px; background-color: #fd4d52">
                                        <form role="form">
                                            <a href="<%=Util.fullPath("New")%>"><button type="button" class="btn btn-default btn-lg"  class="btn btn-success btn-block a" style="    background-color: darkslategray; margin-right: 80px; color: white"><span class="glyphicon glyphicon-off"></span>Change password</button></a>

                                            <a href="<%=Util.fullPath("Infor")%>"><button type="button" class="btn btn-default btn-lg"  class="btn btn-success btn-block a" style="    background-color: coral; margin-right: 104px;margin-top: 10px; color: white"><span class="glyphicon glyphicon-off"></span>Update Infos</button></a>
                                            <a href="<%=Util.fullPath("Receipt")%>"><button type="button" class="btn btn-default btn-lg"  class="btn btn-success btn-block a" style="    background-color: springgreen; margin-right: 107px;margin-top: 10px; color: white"><span class="glyphicon glyphicon-off"></span>View Receipts</button></a>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-danger" data-dismiss="modal" style="background-color: #fd4d52"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                                        <a href="<%=Util.fullPath("doLogout")%>">Logout</a>
    <a style="color: crimson;font-size: 14px;background-color: cornsilk;border-radius: 3px; border: 1px solid darkgrey;
    font-weight: 700; " href="<%=Util.fullPath("showCart")%>">
                                            <i style="color: black; font-size: 19px" class="fa fa-shopping-cart"></i>  <%= c != null ? count : 0 %></a>
                    </div>

                    </div>
                    <%
                    } else{

                    %>
                    <div class="header__right__auth">
                        <a href="<%=Util.fullPath("Log")%>">Login</a>
                        <a href="Regis">Register</a>
                        <a style="color: crimson;font-size: 14px;background-color: cornsilk;border-radius: 3px; border: 1px solid darkgrey;
    font-weight: 700; " href="<%=Util.fullPath("showCart")%>">
                            <i style="color: black; font-size: 19px" class="fa fa-shopping-cart"></i>  <%= c != null ? count : 0 %></a>
                    </div>
                    <%
                        }
                    %>

                </div>
            </div>
        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<script>
    $(document).ready(function(){
        $("#myBtn").click(function(){
            $("#myModal").modal();
        });
    });
</script>
</body>
</html>
