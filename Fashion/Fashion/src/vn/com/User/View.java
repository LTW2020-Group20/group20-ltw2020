package vn.com.User.contact;

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
@WebServlet("/View")
public class View extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id=request.getParameter("id");
        String sql="SELECT * FROM `save-cart` WHERE `id-receipt`=?";
        try {
            String sql7 = "SELECT * FROM `category`";
            com.mysql.jdbc.PreparedStatement p= (com.mysql.jdbc.PreparedStatement) dbconnect.getPrepareStatement(sql7);
            ResultSet cate= p.executeQuery();
            request.setAttribute("cate",cate);
            PreparedStatement pre =(PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,id);
            ResultSet re= pre.executeQuery();
            request.setAttribute("re",re);
            request.getRequestDispatcher("ashion/listpro.jsp").forward(request,response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
