package vn.com.Admin.Product;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.User;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ListProduct")
public class ListProduct extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
       String sql="SELECT * FROM product join category WHERE product.id_ctg=category.id_ctg";
        try {
            PreparedStatement pre=(PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet sanpham= pre.executeQuery();
            request.setAttribute("sanpham",sanpham);
            request.getRequestDispatcher("Admin/product.jsp").forward(request,response);
        } catch (ClassNotFoundException |SQLException e) {
            e.printStackTrace();
        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
