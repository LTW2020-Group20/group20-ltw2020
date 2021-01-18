package vn.com.Admin.User;

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
@WebServlet("/ListUser")
public class ListUser extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String sql="SELECT * FROM `user`";
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet re=pre.executeQuery();
            request.setAttribute("user",re);
            request.getRequestDispatcher("Admin/user.jsp").forward(request,response);




        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
