package vn.com.User;

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

@WebServlet("/Detail")
public class Detail extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id= request.getParameter("id");
        String ctg= request.getParameter("ctg");
        String sql1="SELECT  * FROM product join category WHERE id_product=? and product.id_ctg=category.id_ctg ";

        try {
            String sql = "SELECT * FROM `category`";
            PreparedStatement p= (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet cate= p.executeQuery();
            request.setAttribute("cate",cate);

            String recomment="Select * from product where id_ctg=?";
            PreparedStatement pRecomment= (PreparedStatement) dbconnect.getPrepareStatement(recomment);
            pRecomment.setString(1,ctg);
            ResultSet rRecomment= pRecomment.executeQuery();
            request.setAttribute("rRecomment",rRecomment);

            PreparedStatement pr=(PreparedStatement) dbconnect.getPrepareStatement(sql1);
            pr.setString(1,id);
            ResultSet detail=pr.executeQuery();
            request.setAttribute("detail",detail);

            request.getRequestDispatcher("ashion/product-details.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
