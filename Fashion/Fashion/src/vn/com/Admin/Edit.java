package vn.com.Admin.User;

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

@WebServlet("/Edit")
public class Edit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("pass");
        String repass= request.getParameter("repass");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String role = request.getParameter("role");
        String md5= MD5_class.getMD5(password);
        String sqlUser = "UPDATE `user` SET `password` = ?,`email` = ?, `phone` = ?,address=?, role=? WHERE `user` = ? LIMIT 1";
        try  {
            if (password.equals(repass)){
            PreparedStatement u = (PreparedStatement) dbconnect.getPrepareStatement(sqlUser);
            u.setString(1, md5);
            u.setString(2, email);
            u.setString(3, phone);
            u.setString(4, address);
            if (role.equals("User")){
                u.setInt(5,1);
            }
            if (role.equals("Admin")){
                u.setInt(5,2);
            }
            u.setString(6,name);
            int rs= u.executeUpdate();
            if (rs==1){

                request.getRequestDispatcher("ListUser").forward(request,response);
            }
            }
            else{
                String sql="SELECT *FROM `user` WHERE `user`=?";
                PreparedStatement pre =(PreparedStatement) dbconnect.getPrepareStatement(sql);
                pre.setString(1, name);
                ResultSet re= pre.executeQuery();
                request.setAttribute("user",re);

                request.setAttribute("checkpass","1");
                request.setAttribute("email",email);
                request.setAttribute("phone",phone);
                request.setAttribute("address",address);
                request.setAttribute("erorpass","Repass incorrect!");
                request.getRequestDispatcher("Admin/edit_user.jsp").forward(request,response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }
}
