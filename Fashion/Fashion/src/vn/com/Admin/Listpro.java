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

@WebServlet("/Listpro")
public class Listpro extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id= request.getParameter("id");
       String sql="SELECT * FROM `save-cart` JOIN product ON product.id_product=`save-cart`.`id-pro` WHERE `id-receipt`=? ";
        try {
            PreparedStatement pre=(PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,id);
            ResultSet sp= pre.executeQuery();
            request.setAttribute("sp",sp);
            request.getRequestDispatcher("Admin/listpro.jsp").forward(request,response);
        } catch (ClassNotFoundException |SQLException e) {
            e.printStackTrace();
        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
