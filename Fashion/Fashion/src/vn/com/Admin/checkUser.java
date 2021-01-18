package vn.com.Admin.User;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Result;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/checkUser")
public class checkUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String id=req.getParameter("id");
        String sql="SELECT *FROM `user` WHERE id=?";
        try {
            PreparedStatement pre =(PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setInt(1, Integer.parseInt(id));
            ResultSet re= pre.executeQuery();
            req.setAttribute("user",re);
            req.getRequestDispatcher("Admin/edit_user.jsp").forward(req,resp);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
