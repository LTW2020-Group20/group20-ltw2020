<%@ page import="vn.com.controller.Util" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/5/2020
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Footer</title>
</head>
<body>
<footer class="footer" style="background: #fdf1d3">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="index.jsp"><img src="ashion/img/logo.png" alt=""></a>
                    </div>
                    <p>This is web's project: Fashion shop<br>
                        Group20 <br>
                        Terms: 2020 - 2021 <br> Teacher: Phan Dinh Long</p><br>


                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <h6>Quick links</h6>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Blogs</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <h6>Account</h6>
                    <ul>
                        <li><a href="#">My Account</a></li>
                        <li><a href="#">Orders Tracking</a></li>
                        <li><a href="#">Checkout</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-8">
                <div class="footer__newslatter">
                    <h6>NEWSLETTER</h6>
                    <form action="#">
                        <input type="text" placeholder="Email">
                        <button type="submit" class="site-btn">Subscribe</button>
                    </form>

                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                </div>
            </div>
        </div>
    </div>

    </div>
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder=".....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="<%=Util.fullPath("ashion/js/jquery-3.3.1.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/bootstrap.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/jquery.magnific-popup.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/jquery-ui.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/mixitup.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/jquery.countdown.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/jquery.slicknav.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/owl.carousel.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/jquery.nicescroll.min.js")%>"></script>
    <script src="<%=Util.fullPath("ashion/js/main.js")%>"></script>
</footer>
</body>
</html>
