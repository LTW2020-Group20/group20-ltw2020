package vn.com.User.info;

import vn.com.controller.User;
import vn.com.controller.User;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/UpdateInfor")
public class UpdateInfor extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String sql = "UPDATE `user` SET `email` = ?, `phone` = ?,address=? WHERE `user` = ? LIMIT 1";
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("Auth");
        try {
                    PreparedStatement up = (PreparedStatement) dbconnect.getPrepareStatement(sql);
                    up.setString(1, email);
                    up.setString(2, phone);
                    up.setString(3, address);
                    up.setString(4,u.getUname());
                    int rinsert = up.executeUpdate();
                    if (rinsert == 1) {
                        response.sendRedirect("Trangchu");
                    } else {
                       request.getRequestDispatcher("Infor").forward(request, response);
                    }

            } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
