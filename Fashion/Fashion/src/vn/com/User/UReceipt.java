package vn.com.User.info;

import vn.com.controller.User;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/UReceipt")
public class UReceipt extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession();
        User u =(User) session.getAttribute("Auth");
        String sql="SELECT name,email,phone,address,date,total,active FROM receipt WHERE name=?";
        try {
            PreparedStatement pre =(PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,u.getUname());
            ResultSet re= pre.executeQuery();
            request.setAttribute("re",re);
            request.getRequestDispatcher("eshopper/Ureceipt.jsp").forward(request,response);
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
