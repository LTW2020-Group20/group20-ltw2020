package vn.com.Admin.Customer;

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

@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String message=request.getParameter("message");
        String sql="SELECT * FROM `feedback` ";
        String sqlfb = "INSERT INTO `feedback`(name,email,phone,address,massage) VALUES(?,?,?,?,?,?)";

        try {
            PreparedStatement pre=(PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1, name);
            pre.setString(2, email);
            pre.setString(3, phone);
            pre.setString(4, address);
            pre.setString(5, message);
            ResultSet phanhoi= pre.executeQuery();
            request.setAttribute("phanhoi",phanhoi);
            request.getRequestDispatcher("Admin/feedback.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }

}
