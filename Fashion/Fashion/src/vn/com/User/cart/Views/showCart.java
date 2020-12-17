package vn.com.User.cart.Views;

import com.mysql.jdbc.PreparedStatement;
import vn.com.User.cart.Model.Cart;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/showCart")
public class showCart extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sql = "SELECT * FROM `category`";
            PreparedStatement p = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet cate = p.executeQuery();
            request.setAttribute("cate", cate);

            Cart c = (Cart) request.getSession().getAttribute("Cart");
            request.setAttribute("Cart", c);
            String quantity = request.getParameter("quantity");
            if (quantity == null) {
                request.setAttribute("quantity", 1);
            } else {
                request.setAttribute("quantity", quantity);
            }
            request.getRequestDispatcher("ashion/shop-cart.jsp").forward(request, response);
        }catch (SQLException |ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
