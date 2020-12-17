<%@ page import="vn.com.User.cart.Model.Cart" %>
<%@ page import="vn.com.User.cart.Model.Product" %>
<%@ page import="vn.com.User.cart.Controller.Remove" %>
<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
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

<body style="background: oldlace">
<!-- Page Preloder -->
<jsp:include page="header.jsp"/>
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="index.jsp"><i class="fa fa-home"></i> Home</a>
                        <span>Shopping cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                                Cart cart=(Cart) session.getAttribute("Cart");
                                if (cart!=null){
                                for (Product p : cart.list()){
                            %>
                                <tr>
                                    <td class="cart__product__item">
                                        <img style="width: 90px" src="<%=p.getImg()%>" alt="">
                                        <div class="cart__product__item__title">
                                            <a href="<%="Detail?id="+p.getId()+"&ctg="+p.getType()%>"><h6><%=p.getName()%></h6></a>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">$ <%=p.getPrice()%></td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button" >
                                            <a style="color: black" class="cart__quantity" href="<%="QuantityDown?id="+p.getId()%>"> - </a>
                                            <input style="text-align: center" class="cart_quantity_input" type="text" name="quantity" value="<%=p.getQuatity()%>"
                                                   autocomplete="off" size="2">
                                            <a style="color: black" class="cart__quantity" href="<%="QuantityUp?id="+p.getId()%>"> + </a>

                                        </div>
                                    </td>
                                    <td class="cart__total">$ <%=p.total()%></td>
                                    <td class="cart__close"><a href="<%=Util.fullPath("Remove?id="+p.getId())%>"><span class="icon_close"></span></a></td>
                                </tr>
                            <%
                                }
                                }
                                else{
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="cart__btn">
                        <a href="Trangchu">Continue Shopping</a>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="discount__content">
                        <h6>Discount codes</h6>
                        <form action="", method="post">
                            <input type="text" name="code" placeholder="Enter your coupon code">
                            <button type="submit" class="site-btn">Apply</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-2">
                    <div class="cart__total__procced">
                        <h6>Cart total</h6>
                        <%
                            if (cart!=null){
                        %>
                        <ul>
                            <li>Total <span>$ <%=cart.total()%></span></li>
                        </ul>
                        <a href="CheckOut" class="primary-btn">Proceed to checkout</a>
                        <%
                            }else{
                        %>
                        <ul>
                            <li>Total <span>$ 0</span></li>
                        </ul>
                        <a class="primary-btn">Proceed to checkout</a>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <jsp:include page="footer.jsp"/>
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