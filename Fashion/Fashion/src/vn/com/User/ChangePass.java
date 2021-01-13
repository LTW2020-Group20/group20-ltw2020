package vn.com.User.info;


import vn.com.User.MD5_class;
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

@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = request.getParameter("pass");
        String newpass = request.getParameter("new");
        String repass = request.getParameter("renew");
        String md5 = MD5_class.getMD5(pass);
        String md= MD5_class.getMD5(newpass);
        String upsql = "UPDATE `user` SET password=?  WHERE `user` = ? LIMIT 1";
        try {
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("Auth");
            if (md5.equals(u.getPass())) {
                if (newpass.equals(repass)) {
                    PreparedStatement update = (PreparedStatement) dbconnect.getPrepareStatement(upsql);
                    update.setString(1, md);
                    update.setString(2, u.getUname());
                    int re = update.executeUpdate();
                    if (re == 1) {
                        response.sendRedirect("Trangchu");
                    } else {
                        request.setAttribute("eror", "Update failed!");
                        request.getRequestDispatcher("ChangePass").forward(request, response);
                    }
                }
                else {
                    request.setAttribute("eror", "Repass incorrect!");
                    request.getRequestDispatcher("ChangePass").forward(request, response);
                }
            } else {
                request.setAttribute("eror", "Your password incorrect!");
                request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
