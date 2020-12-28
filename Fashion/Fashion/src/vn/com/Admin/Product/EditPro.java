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

@WebServlet("/EditPro")
public class EditPro extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String ctg=request.getParameter("type");
        String price=request.getParameter("price");
        String quantity=request.getParameter("quantity");
        String brand=request.getParameter("brand");
        String disc=request.getParameter("disc");
        String img=request.getParameter("img");
        img="ashion/img/product/"+img;
        try {
            String sql="UPDATE product set name_product=? ,id_ctg=?,brand=?, price=?, description=?,img=?,quantity=? WHERE id_product=? LIMIT 1";
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,name);
            pre.setInt(2, Integer.parseInt(ctg));
            pre.setString(3,brand);
            pre.setDouble(4, Double.parseDouble(price));
            pre.setString(5,disc);
            pre.setString(6,img);
            pre.setInt(7, Integer.parseInt(quantity));
            pre.setInt(8, Integer.parseInt(id));
            int rs = pre.executeUpdate();
            if (rs == 1) {
                response.sendRedirect("ListProduct");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

