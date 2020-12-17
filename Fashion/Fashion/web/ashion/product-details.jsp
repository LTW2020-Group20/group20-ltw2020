<%@ page import="vn.com.controller.Util" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
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
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="#"><span class="icon_heart_alt"></span>
                <div class="tip">2</div>
            </a></li>
            <li><a href="#"><span class="icon_bag_alt"></span>
                <div class="tip">2</div>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="index.jsp"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="#">Login</a>
            <a href="#">Register</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <jsp:include page="header.jsp"/>
    <!-- Header Section End -->
<%
    ResultSet detail=(ResultSet) request.getAttribute("detail");
    detail.next();
%>
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="<%=Util.fullPath("Trangchu")%>"><i class="fa fa-home"></i> Home</a>
                        <a href="<%=Util.fullPath("Shop?ctg="+detail.getInt(12))%>"><%=detail.getString(13)%> </a>
                        <span><%=detail.getString(2)%></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <div class="product__details__slider__content">
                            <div class="product__details__pic__slider owl-carousel">
                                <img data-hash="product-1" class="product__big__img" src="<%=detail.getString(9)%>" alt="">
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3><%=detail.getString(2)%> <span>Brand: <%=detail.getString(5)%></span></h3>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <span>( 138 reviews )</span>
                        </div>
                        <%
                            if (detail.getString(11).equals("Sale")){
                        %>
                        <div class="product__details__price" style="color: red">$ <%=detail.getDouble(4)%> <span style="color: gray">$ <%=detail.getDouble(4)+20%></span></div>
                        <%
                            }else{
                        %>
                        <div class="product__details__price">$ <%=detail.getInt(4)%></div>
                        <%
                            }
                        %>
                        <p>SKMEI More Men Watches from SKMEI, est in 2016</p>
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>Quantity: </span> <span style="font-size: 1rem;font-weight: 400;"><%=detail.getInt(6)%></span>


                            </div>
                            <a href="<%="AddCart?id="+detail.getInt(1)%>" class="cart-btn"><span class="icon_bag_alt"></span> Add to cart</a>

                        </div>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>Availability:</span>
                                    <div>
                                        <label>
                                            <%=detail.getString(7)%>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <span>Available color:</span>
                                    <div class="color__checkbox">
                                        <label for="red">
                                            <input type="radio" name="color__radio" id="red" checked>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label for="black">
                                            <input type="radio" name="color__radio" id="black">
                                            <span class="checkmark black-bg"></span>
                                        </label>
                                        <label for="grey">
                                            <input type="radio" name="color__radio" id="grey">
                                            <span class="checkmark grey-bg"></span>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <span>Available size:</span>
                                    <div class="size__btn">
                                        <label for="xs-btn" class="active">
                                            <input type="radio" id="xs-btn">
                                            xs
                                        </label>
                                        <label for="s-btn">
                                            <input type="radio" id="s-btn">
                                            s
                                        </label>
                                        <label for="m-btn">
                                            <input type="radio" id="m-btn">
                                            m
                                        </label>
                                        <label for="l-btn">
                                            <input type="radio" id="l-btn">
                                            l
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <span>Promotions:</span>
                                    <p><%=detail.getString(10)%></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" role="tab" style="background:none">Description</a>
                            </li>
                          
                        </ul>
                        <div class="tab-content" style=" border: 1px solid lightgray">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <h6 >Description</h6>
                                <p><%=detail.getString(8)%></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" role="tab" style="background:none">Recommended items</a>
                            </li>

                        </ul>

                    </div>
                </div>
                <div class="row property__gallery" style="width: 100%">
                    <%
                        ResultSet re=(ResultSet) request.getAttribute("rRecomment");
                        int i=1;
                        while (re.next()){
                            if(i<5){
                            if (re.getString(11).equals("New")){
                    %>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="<%=re.getString(9)%>">
                                <div class="label new" style="background: green"><%=re.getString(11)%></div>
                                <ul class="product__hover">
                                    <li><a href="<%=re.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="<%="Detail?id="+re.getInt(1)+"&ctg="+re.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="<%="AddCart?id="+re.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#"><%=re.getString(2)%></a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ <%=re.getInt(4)%></div>
                            </div>
                        </div>
                    </div>

                    <%
                    }else{
                        if (re.getString(11).equals("Trend")){
                    %>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="<%=re.getString(9)%>">
                                <div class="label new" style="background: darkcyan"><%=re.getString(11)%></div>
                                <ul class="product__hover">
                                    <li><a href="<%=re.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="<%="Detail?id="+re.getInt(1)+"&ctg="+re.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="<%="AddCart?id="+re.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#"><%=re.getString(2)%></a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ <%=re.getInt(4)%></div>
                            </div>
                        </div>
                    </div>
                    <%
                    }
                    else{
                        if (re.getString(11).equals("Old")){
                    %>

                    <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="<%=re.getString(9)%>">
                                <div class="label new" style="background: black"><%=re.getString(11)%></div>
                                <ul class="product__hover">
                                    <li><a href="<%=re.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="<%="Detail?id="+re.getInt(1)+"&ctg="+re.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="<%="AddCart?id="+re.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#"><%=re.getString(2)%></a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ <%=re.getInt(4)%></div>
                            </div>
                        </div>
                    </div>

                    <%
                    }else{

                    %>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="<%=re.getString(9)%>">
                                <div class="label new" style="background: red"><%=re.getString(11)%></div>
                                <ul class="product__hover">
                                    <li><a href="<%=re.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="<%="Detail?id="+re.getInt(1)+"&ctg="+re.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="<%="AddCart?id="+re.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#"><%=re.getString(2)%></a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price" style="color: red">$ <%=re.getDouble(4)%> <span style="color: gray">$ <%=re.getDouble(4)+20%></span></div>
                            </div>
                        </div>
                    </div>
                    <%
                                    }
                                }
                            }
                                i++;
                        }

                        }
                    %>
                </div>
            </div>
        </div>

    </section>
            <!-- Footer Section Begin -->
           <jsp:include page="footer.jsp"/>
        <!-- Footer Section End -->



    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
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