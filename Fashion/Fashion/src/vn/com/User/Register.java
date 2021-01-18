package vn.com.User.Regis;

import com.mysql.jdbc.PreparedStatement;
import vn.com.User.MD5_class;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Register")
public class Register extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("user");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String checkuser="SELECT user FROM `user` WHERE user=?";
        String sql = "INSERT INTO `user`(`user`,`password`,email,phone,address,role) VALUES(?,?,?,?,?,?)";
        //MD5
        String m1= MD5_class.getMD5(pass);
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(checkuser);
            pre.setString(1, name);
            ResultSet rscheck = pre.executeQuery();
            rscheck.last();
            if (rscheck.getRow() == 1) {
                request.setAttribute("checkuser", "1");
                request.setAttribute("user", name);
                request.setAttribute("phone", phone);
                request.setAttribute("address", address);
                request.setAttribute("email", email);
                request.setAttribute("erorname", "Username is exists!");
                request.getRequestDispatcher("Regis").forward(request, response);
            }
            else {
                if (pass.equals(repass)) {
                    PreparedStatement insert = (PreparedStatement) dbconnect.getPrepareStatement(sql);
                    insert.setString(1, name);
                    insert.setString(2, m1);
                    insert.setString(3, email);
                    insert.setString(4, phone);
                    insert.setString(5, address);
                    insert.setInt(6,1);
                    int rinsert = insert.executeUpdate();
                    if (rinsert == 1) {
                        response.sendRedirect("Log");
                    } else {
                        request.getRequestDispatcher("Regis").forward(request, response);
                    }
                }
                else {
                    request.setAttribute("checkpass", "1");
                    request.setAttribute("user", name);
                    request.setAttribute("phone", phone);
                    request.setAttribute("address", address);
                    request.setAttribute("repass", "");
                    request.setAttribute("email", email);
                    request.setAttribute("erorpass", "Repass incorrect !");
                    request.getRequestDispatcher("Regis").forward(request, response);

                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
