package vn.com.User.contact;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.User;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Cont")
public class Cont extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session= request.getSession();

        try {
            User u =(User) session.getAttribute("Auth");
            if (u!=null){
            String sql = "SELECT * FROM `category`";
            PreparedStatement p= (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet cate= p.executeQuery();
            request.setAttribute("cate",cate);
            request.getRequestDispatcher("ashion/contact.jsp").forward(request,response);
        }
else{
                response.sendRedirect("Log");
            }
        }
        catch (ClassNotFoundException |SQLException e) {
            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
