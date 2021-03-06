package vn.com.Admin.Product;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String ctg=request.getParameter("ctg");
        String price=request.getParameter("price");
        String quantity=request.getParameter("quantity");
        String avai=request.getParameter("avai");
        String status=request.getParameter("status");
        String brand=request.getParameter("brand");
        String disc=request.getParameter("disc");
        String img=request.getParameter("img");
        img="ashion/img/product/"+img;
        try {
            String sql="INSERT INTO `product`(id_product,name_product,id_ctg,price,brand,quantity,availability,description,img,promotions,`status`) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?,?,?)";
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setInt(1, Integer.parseInt(id));
            pre.setString(2,name);
            pre.setInt(3, Integer.parseInt(ctg));
            pre.setString(5,brand);
            pre.setDouble(4, Double.parseDouble(price));
            pre.setString(8,disc);
            pre.setString(9,img);
            pre.setString(7,avai);
            pre.setString(10,"Free shipping");
            pre.setString(11,status);
            pre.setInt(6, Integer.parseInt(quantity));
            int rs = pre.executeUpdate();
            if (rs == 1) {
                response.sendRedirect("ListProduct");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

