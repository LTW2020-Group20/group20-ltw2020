<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="description" content="Hi&Lux Fashion">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hi&Lux | Fashion</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="ashion/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="ashion/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="ashion/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="ashion/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="ashion/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="ashion/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="ashion/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="ashion/css/style.css" type="text/css">
</head>

<body style="background: whitesmoke">
<!-- Page Preloder -->

<!-- Header Section Begin -->
<jsp:include page="header.jsp"/>
<!-- Header Section End -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="categories__item categories__large__item set-bg"
                     data-setbg="<%=Util.fullPath("ashion/img/categories/category-1.jpg")%>">
                    <div class="categories__text">
                        <h1><span>Women’s fashion</span></h1>

                        <a href="<%=Util.fullPath("Shop?ctg=1")%>">See now</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="ashion/img/categories/category-2.jpg">
                            <div class="categories__text">
                                <h4>Men’s fashion</h4>
                                <p>358 items</p>
                                <a href="<%=Util.fullPath("Shop?ctg=2")%>">See now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="ashion/img/categories/category-3.jpg">
                            <div class="categories__text">
                                <h4>Kid’s fashion</h4>
                                <p>273 items</p>
                                <a href="<%=Util.fullPath("Shop?ctg=3")%>">See now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="ashion/img/categories/category-4.jpg">
                            <div class="categories__text">
                                <h4>Cosmetics</h4>
                                <p>159 items</p>
                                <a href="<%=Util.fullPath("Shop?ctg=4")%>">See now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="ashion/img/categories/category-5.jpg">
                            <div class="categories__text">
                                <h4>Accessories</h4>
                                <p>792 items</p>
                                <a href="<%=Util.fullPath("Shop?ctg=5")%>">See now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Product Section Begin -->

<!-- Product Section End -->

<!-- Banner Section Begin -->
<section class="banner set-bg" data-setbg="ashion/img/banner/banner-1.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-8 m-auto">
                <div class="banner__slider owl-carousel">
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>The Chloe Collection</span>
                            <h1>Welcome to the shop</h1>
                            <a href="<%=Util.fullPath("ListClothes")%>">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>The Chloe Collection</span>
                            <h1>Shop influencer looks</h1>
                            <a href="<%=Util.fullPath("ListClothes")%>">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>The Chloe Collection</span>
                            <h1>Admire the unique products</h1>
                            <a href="<%=Util.fullPath("ListClothes")%>">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner Section End -->

<!-- Trend Section Begin -->

<!-- Discount Section End -->

<!-- Services Section Begin -->

<!-- Instagram End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"/>
<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>