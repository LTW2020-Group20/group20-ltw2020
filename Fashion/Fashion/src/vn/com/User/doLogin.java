package vn.com.User;

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
@WebServlet("/doLogin")
public class doLogin extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String query = "SELECT * FROM `user` WHERE `user`=? AND `password`=? and role=1";


        try {
            String name = request.getParameter("username").trim();
            String pass = request.getParameter("pass").trim();
            String md5= MD5_class.getMD5(pass);
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, md5);
            ResultSet results = ps.executeQuery();
            results.last();
            if (results.getRow() == 1) {
                results.first();
                if (name.equals(results.getString("user")) && md5.equals(results.getString("password"))) {
                    User u= new User(results.getString("user"),results.getString("password"),results.getInt("role"),results.getString("email"),results.getString("phone"),results.getString("address"));
                    HttpSession session=request.getSession(true);
                    session.setAttribute("Auth",u);
                    response.sendRedirect("Trangchu");
                } else {
                    request.setAttribute("username",name);
                    request.getRequestDispatcher("ashion/login.jsp").forward(request, response);
                }
            }
            else {
                request.setAttribute("Eror","Username or password incorrect!");
                request.setAttribute("username",name);
                request.setAttribute("pass","");

                request.getRequestDispatcher("ashion/login.jsp").forward(request, response);
            }
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}