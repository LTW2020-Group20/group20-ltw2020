package vn.com.User.info;

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

@WebServlet("/Receipt")
public class Receipt extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session=request.getSession();
            User user=(User) session.getAttribute("Auth");
            String sql = "SELECT * FROM `category`";
            PreparedStatement p= (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet cate= p.executeQuery();
            request.setAttribute("cate",cate);
            String sql1 = "SELECT * FROM `receipt` where name=?";
            PreparedStatement p1= (PreparedStatement) dbconnect.getPrepareStatement(sql1);
            p1.setString(1,user.getUname());
            ResultSet rere= p1.executeQuery();
            request.setAttribute("rere",rere);

            request.getRequestDispatcher("ashion/ViewReceipt.jsp").forward(request,response);
        }
        catch (ClassNotFoundException |SQLException e) {
            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
