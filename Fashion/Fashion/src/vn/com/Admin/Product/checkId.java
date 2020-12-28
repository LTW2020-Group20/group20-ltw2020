package vn.com.Admin.Product;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/checkId")
public class checkId extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id= request.getParameter("id");
        String count = "SELECT * FROM product WHERE id_product=?";
        try{
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(count);
            pre.setInt(1, Integer.parseInt(id));
            ResultSet check = pre.executeQuery();
            request.setAttribute("check",check);
            request.getRequestDispatcher("Admin/edit_product.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

