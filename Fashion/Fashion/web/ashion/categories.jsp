<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.com.controller.Util" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/9/2020
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="col-lg-3 col-md-3">
    <div class="shop__sidebar">
        <div class="sidebar__categories">
            <div class="section-title">
                <h4>Categories</h4>
            </div>
            <div class="categories__accordion">
                <div class="accordion" id="accordionExample">
                    <%
                        ResultSet cate=(ResultSet) request.getAttribute("cate");
                        cate.first();
                        cate.previous();
                        while (cate.next()){
                    %>
                    <div class="card" style="padding: 5px 15px">

                            <h5> <a style="color: black" href="<%=Util.fullPath("Shop?ctg="+cate.getInt(1))%>"><%=cate.getString(2)%></a></h5>

                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>
