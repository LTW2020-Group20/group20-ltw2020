package vn.com.Admin.Receipt;

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

@WebServlet("/ListReceipt")
public class ListReceipt extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
       String sql="SELECT * FROM `receipt` ";
        try {
            PreparedStatement pre=(PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet donhang= pre.executeQuery();
            request.setAttribute("donhang",donhang);
            request.getRequestDispatcher("Admin/receipt.jsp").forward(request,response);
        } catch (ClassNotFoundException |SQLException e) {
            e.printStackTrace();
        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
