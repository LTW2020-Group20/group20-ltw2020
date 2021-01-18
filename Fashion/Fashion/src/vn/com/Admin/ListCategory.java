package vn.com.Admin.Category;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ListCategory")
public class ListCategory extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String sql="SELECT * FROM `category` ";
        try {
            PreparedStatement pre=(PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet theloai= pre.executeQuery();
            request.setAttribute("theloai",theloai);
            request.getRequestDispatcher("Admin/category.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }

}