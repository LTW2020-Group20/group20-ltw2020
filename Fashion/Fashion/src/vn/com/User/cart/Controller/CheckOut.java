package vn.com.User.cart.Controller;
import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.User;
import vn.com.controller.Util;
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

@WebServlet("/CheckOut")
public class CheckOut extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String sql = "SELECT * FROM `category`";
            PreparedStatement p= (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet cate= p.executeQuery();
            req.setAttribute("cate",cate);

            HttpSession session = req.getSession();
            User u =(User) session.getAttribute("Auth");
            if (u!=null){

                req.getRequestDispatcher("ashion/checkout.jsp").forward(req,resp);
            }
            else{
                resp.sendRedirect("ashion/login.jsp");
            }

        } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req, resp);
    }

}
