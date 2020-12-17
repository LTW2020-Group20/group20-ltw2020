package vn.com.User.cart.Controller;

import vn.com.User.cart.Model.Cart;
import vn.com.User.cart.Model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/QuantityDown")
public class QuantityDown extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        Cart c = (Cart) session.getAttribute("Cart");
        for (Product p : c.list()) {
            if (id.equals(""+p.getId())) {
                p.quatityDown();
            }
        }
        response.sendRedirect("showCart");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
