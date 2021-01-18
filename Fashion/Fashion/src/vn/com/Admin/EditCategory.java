package vn.com.Admin.Category;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/EditCategory")
public class EditCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String img=request.getParameter("img");
        try {
            String sql="UPDATE category set id_ctg=?,name=?,img=? WHERE id_ctg=? LIMIT 1";
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,id);
            pre.setString(2,name);
            pre.setString(3,img);
            int rs = pre.executeUpdate();
            if (rs == 1) {
                response.sendRedirect("ListCategory");
            }else{
                response.sendRedirect("ashion/edit_category.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

