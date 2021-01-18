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

@WebServlet("/AddCategory")
public class AddCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id_ctg=request.getParameter("id");
        String name_ctg=request.getParameter("name");
        String img=request.getParameter("img");
        img="ashion/img/product/"+img;
        try {
            String sql="INSERT INTO `category`(id_ctg,name_ctg,img) VALUES (?,?,?)";
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setInt(1, Integer.parseInt(id_ctg));
            pre.setString(2,name_ctg);

            pre.setString(9,img);
            int rs = pre.executeUpdate();
            if (rs == 1) {
                response.sendRedirect("ListCategory");
            }else{
                request.getRequestDispatcher("ashion/add_category").forward(request,response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

