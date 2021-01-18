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

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String role=request.getParameter("role");
        String sqlUser = "INSERT into `user` (`user`,`password`,email,phone,address,role) VALUES (?,?,?,?,?,?)";
        String equal="SELECT * FROM `user` WHERE user=?";
        String md5= MD5_class.getMD5(password);
        try {
            PreparedStatement prl=(PreparedStatement) dbconnect.getPrepareStatement(equal);
            prl.setString(1,name);
            ResultSet rse= prl.executeQuery();
            rse.last();
            if (rse.getRow()==1){
                request.setAttribute("name",name);
                request.setAttribute("checkname","1");
                request.setAttribute("email",email);
                request.setAttribute("phone",phone);
                request.setAttribute("address",address);
                request.setAttribute("erorname","Username is exists!");
                request.getRequestDispatcher("Admin/add_user.jsp").forward(request,response);
            }
            else{
                if (password.equals(repass)) {
                    PreparedStatement user = (PreparedStatement) dbconnect.getPrepareStatement(sqlUser);
                    user.setString(1, name);
                    user.setString(2, md5);
                    user.setString(3, email);
                    user.setString(4, phone);
                    user.setString(5, address);
                    if (role.equals("User")){
                        user.setInt(6,1);
                    }
                    if (role.equals("Admin")){
                        user.setInt(6,2);
                    }

                    user.executeUpdate();
                    response.sendRedirect("ListUser");
                }
                else{
                    request.setAttribute("name",name);
                    request.setAttribute("checkpass","1");

                    request.setAttribute("email",email);
                    request.setAttribute("phone",phone);
                    request.setAttribute("address",address);
                    request.setAttribute("erorpass","Repass incorrect!");
                    request.getRequestDispatcher("Admin/add_user.jsp").forward(request,response);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }



    }
}

