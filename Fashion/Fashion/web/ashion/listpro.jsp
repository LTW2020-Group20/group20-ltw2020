
<%@ page import="java.sql.ResultSet" %>
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

<body style="background: whitesmoke">
<!-- Page Preloder -->
<jsp:include page="header.jsp"/>
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="index.jsp"><i class="fa fa-home"></i> Home</a>
                        <span>Receipt-Details</span>
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
                                    <th>ID-Receipt</th>
                                    <th>Name</th>
                                    <th>Img</th>
                                    <th>Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                                ResultSet re = (ResultSet) request.getAttribute("re");
                                while (re.next()) {
                            %>
                                <tr>
                                    <td class="cart__price"> <%=re.getString(1)%></td>

                                    <td class="cart__product__item">
                                        <h6><%=re.getString(3)%></h6>
                                        <div class="cart__product__item__title">
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td><img style="width: 90px" src="<%=re.getString(5)%>"></td>
                                    <td class="cart__quantity"><%=re.getString(4)%></td>
                                </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <jsp:include page="footer.jsp"/>
<script src="js/sc.js"></script>
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
    <script>
        var code1 = 'QWERT';
        var code2 = 'ASDFG';
        var code3 = 'ZXCVB';

        var CORRECT_CODE = {code1,code2,code3};
        var code = document.getElementById('code');
        var form = document.getElementById('discode');
        function validated() {
            var c = code.value;
            if(c==CORRECT_CODE){
                code.style.border= "1px solid black";
            }else{
                alert('Discount code has not found')
            }

        }

    </script>
</body>

</html>