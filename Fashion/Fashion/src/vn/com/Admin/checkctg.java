package vn.com.Admin.Category;

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

@WebServlet("/checkctg")
public class checkctg extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id= request.getParameter("id");
        String count = "SELECT * FROM category WHERE id_ctg=?";
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(count);
            pre.setInt(1, Integer.parseInt(id));
            ResultSet ctg = pre.executeQuery();
            request.setAttribute("category",ctg);
            request.getRequestDispatcher("Admin/edit_category.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

