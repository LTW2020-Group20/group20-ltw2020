package vn.com.User.contact;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Contact")
public class Contact extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String message=request.getParameter("message");

        String sqlfb = "INSERT INTO `feedback`(name,email,phone,address,massage) VALUES(?,?,?,?,?)";

        try {

            PreparedStatement save=(PreparedStatement) dbconnect.getPrepareStatement(sqlfb);
            save.setString(2,name);
            save.setString(3,email);
            save.setString(4,phone);
            save.setString(5,address);
            save.setString(6,message);
            int abc= save.executeUpdate();
            if (abc==1){
                response.sendRedirect("TrangChu");

            }else{
                response.sendRedirect("ashion/contact.jsp");

            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }

}
