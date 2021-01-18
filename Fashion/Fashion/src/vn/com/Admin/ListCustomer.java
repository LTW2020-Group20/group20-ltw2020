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

@WebServlet("/ListCustomer")
public class ListCustomer extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String sql="SELECT * FROM `customer` ";
        try {
            PreparedStatement pre=(PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet khachhang= pre.executeQuery();
            request.setAttribute("khachhang",khachhang);
            request.getRequestDispatcher("Admin/customer.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }

}
