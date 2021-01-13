<%@ page import="java.lang.reflect.UndeclaredThrowableException" %>
<%@ page import="vn.com.controller.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->

    <link rel="stylesheet" type="text/css" href="ashion/css/util.css">
    <link rel="stylesheet" type="text/css" href="ashion/css/main.css">
    <!--===============================================================================================-->
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" style="width: 35%; background-image: linear-gradient(#D23838, #66C5E8)">
            <form class="login100-form validate-form flex-sb flex-w" action="<%=Util.fullPath("ChangePass")%>" method="post" onsubmit="validateForm();">
					<span class="login100-form-title p-b-32" style="font-weight: 600">
						Change Password
                    </span>

                <span class="txt1 p-b-11">
						Password
					</span>
                <div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">

                    <input class="input100" type="password" name="pass"  style="height: 44px;">

                    <span class="txt1 p-b-11">
						 New Password
					</span>
                    <div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass" >
							<i class="fa fa-eye"></i>
						</span>
                    <input class="input100" type="password" name="new"  style="height: 44px;">
                    <span class="focus-input100"></span>
                </div>
                <span class="txt1 p-b-11" style="width: 100%">
                     Confirm New Password
                 </span><br>
                <span style="color: red"><%=request.getAttribute("checkpass")!=null ? request.getAttribute("erorpass"):""%></span>
                <span class="txt1" style="color: red"></span>
                <div class="wrap-input100 validate-input m-b-12" data-validate = "Email is required">

                    <input class="input100" type="password" name="renew" style="height: 44px;">
                    <span class="focus-input100"></span>
                </div>
                </div>


                <div class="container-login100-form-btn" style="padding-top: 33px;
    padding-left: 22%">
                    <button  class="login100-form-btn " type="submit" style="margin-top: 140px">
                        Create & Accept
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

<%--<script>--%>
<%--    function vali() {--%>


<%--        alert("Repassword Successfully!");--%>

<%--    }--%>

<%--</script>--%>

</body>
</html>