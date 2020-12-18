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
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/bootstrap.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/font-awesome.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/elegant-icons.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/jquery-ui.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/magnific-popup.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/owl.carousel.min.css")%>" >
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/slicknav.min.css")%>">
    <link rel="stylesheet" href="<%=Util.fullPath("ashion/css/style.css")%>" >
    <title>header</title>
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
        <a href="<%=Util.fullPath("ashion/login.jsp")%>">Login</a>
        <a href="<%=Util.fullPath("ashion/register.jsp")%>">Register</a>
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

                        <li><a href="./blog.html">Blog</a></li>
                        <li><a href="./contact.html">Contact</a></li>
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
                        <a style="color: crimson" href=""><%=u.getUname()%></a>
                        <a href="<%=Util.fullPath("doLogout")%>">Logout</a>
                        <a style="color: crimson;font-size: 10px;
    font-weight: 700; " href="<%=Util.fullPath("showCart")%>">
                            <i style="color: black; font-size: 15px" class="fa fa-shopping-bag"></i>  <%= c != null ? count : 0 %></a>
                    </div>
                    <%
                        } else{

                    %>
                    <div class="header__right__auth">
                        <a href="<%=Util.fullPath("ashion/login.jsp")%>">Login</a>
                        <a href="#">Register</a>
                        <a style="color: crimson;font-size: 10px;
    font-weight: 700; " href="<%=Util.fullPath("showCart")%>">
                            <i style="color: black; font-size: 15px" class="fa fa-shopping-bag"></i>  <%= c != null ? count : 0 %></a>
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
</body>
</html>
