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

<body style="background: oldlace">


<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Categories Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <%
                        ResultSet cate = (ResultSet) request.getAttribute("cate");
                        cate.first();
                        cate.previous();
                        while (cate.next()){
                    %>
                    <li style="margin-right: 15px"><a style="color: black" href="<%=Util.fullPath("Shop?ctg="+cate.getInt(1))%>"><%=cate.getString(2)%></a></li>
                    <%

                        }
                    %>
                </ul>
            </div>
        </div>
        <div class="row property__gallery">
            <%
                ResultSet clolist=(ResultSet) request.getAttribute("clolist");
                while (clolist.next()){
                    if (clolist.getString(11).equals("New")){
            %>
            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=clolist.getString(9)%>">
                        <div class="label new" style="background: green"><%=clolist.getString(11)%></div>
                        <ul class="product__hover">
                            <li><a href="<%=clolist.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="<%="Detail?id="+clolist.getInt(1)+"&ctg="+clolist.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="<%="AddCart?id="+clolist.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
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
                }else{
                if (clolist.getString(11).equals("Trend")){
            %>
            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=clolist.getString(9)%>">
                        <div class="label new" style="background: darkcyan"><%=clolist.getString(11)%></div>
                        <ul class="product__hover">
                            <li><a href="<%=clolist.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="<%="Detail?id="+clolist.getInt(1)+"&ctg="+clolist.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="<%="AddCart?id="+clolist.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
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
                else{
                if (clolist.getString(11).equals("Old")){
            %>

            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=clolist.getString(9)%>">
                        <div class="label new" style="background: black"><%=clolist.getString(11)%></div>
                        <ul class="product__hover">
                            <li><a href="<%=clolist.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="<%="Detail?id="+clolist.getInt(1)+"&ctg="+clolist.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="<%="AddCart?id="+clolist.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
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
                }else{

            %>
            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=clolist.getString(9)%>">
                        <div class="label new" style="background: red"><%=clolist.getString(11)%></div>
                        <ul class="product__hover">
                            <li><a href="<%=clolist.getString(9)%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="<%="Detail?id="+clolist.getInt(1)+"&ctg="+clolist.getInt(3)%>"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="<%="AddCart?id="+clolist.getInt(1)%>"><span class="icon_bag_alt"></span></a></li>
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
                        <div class="product__price" style="color: red">$ <%=clolist.getDouble(4)%> <span style="color: gray">$ <%=clolist.getDouble(4)+20%></span></div>
                    </div>
                </div>
            </div>
            <%
                }
                }
                }
                }
            %>
        </div>
    </div>
</section>

<!-- Discount Section Begin -->

<!-- Discount Section End -->


<!-- Services Section End -->

<!-- Instagram Begin -->

<!-- Instagram End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"/>
<!-- Footer Section End -->

<!-- Search Begin -->

</body>


</html>