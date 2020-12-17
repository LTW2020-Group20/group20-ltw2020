<%@ page import="vn.com.controller.Util" %>
<%@ page import="java.sql.ResultSet" %>
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
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body style="background: whitesmoke">
<!-- Page Preloder -->

<!-- Offcanvas Menu End -->
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section Begin -->

    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->

    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <jsp:include page="categories.jsp"/>

                <div class="col-lg-9 col-md-9">
                    <div class="row">
                        <%
                            ResultSet clolist=(ResultSet) request.getAttribute("clolist");
                            while (clolist.next()){
                            %>
                        <div class="col-lg-4 col-md-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="<%=clolist.getString(9)%>">
                                    <div class="label new">New</div>
                                    <ul class="product__hover">
                                        <li><a href="<%=clolist.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                                        <li><a href="<%="Detail?id="+clolist.getInt(1)%>"><span class="icon_heart_alt"></span></a></li>
                                        <li><a href="<%="AddCard?id="+clolist.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#"><%=clolist.getString(2)%></a></h6>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product__price">$ <%=clolist.getInt(4)%></div>
                                </div>
                            </div>
                        </div>

                        <%
                            }
                        %>
                        <div class="col-lg-12 text-center" style="margin-left:45%">
                            <ul class="pagination">
                                <%
                                    String path="Shop";
                                    //so trang
                                    int cur =(int) request.getAttribute("curPag");
                                    int pagNum=(int) request.getAttribute("pages");
                                    for (int i=0;i<pagNum;i++){
                                %>
                                <li class="<%=cur==i+1 ?"active":""%> pagination__option"><a href="<%=Util.fullPath(path+"?"+request.getAttribute("q")+(i+1))%>"><%=(i+1)%></a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->



    <!-- Footer Section Begin -->
   <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form ">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

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