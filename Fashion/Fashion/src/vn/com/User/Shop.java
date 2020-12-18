package vn.com.User;
import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/Shop")
public class Shop extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page=request.getParameter("page");
        if (page==null) page="1";
        int limit=Integer.parseInt(page );
        if (limit<1) limit=1;

        String linkQuery="ctg=";
        //nxb


        //long,short,combo
        HttpSession session = request.getSession();
//        String pagename= (String) session.getAttribute("currentpage");
        String ctg=request.getParameter("ctg");
        if (ctg==null){
            ctg="1";
        }
        //to place kind name on title or esle
        request.setAttribute("ctg",ctg);
        //get list nxb
        //get list of book type
        String  list = "SELECT * FROM `product` where id_ctg=?";
        //count page
        String countQuery="select count(id_product) from product where id_ctg=?";
        linkQuery+=ctg;
        try {
            String sql = "SELECT * FROM `category`";
            PreparedStatement p= (com.mysql.jdbc.PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet cate= p.executeQuery();
            request.setAttribute("cate",cate);

            list+=" limit ?,12";
            PreparedStatement listclo= (PreparedStatement) dbconnect.getPrepareStatement(list);
            listclo.setString(1,ctg);
            PreparedStatement counting= (PreparedStatement) dbconnect.getPrepareStatement(countQuery);
            counting.setString(1,ctg);

            ResultSet pages=counting.executeQuery();
            int slide=0;
            pages.next();
            int itemQ=pages.getInt(1);
            if (itemQ<1){ itemQ=1; }
                if (itemQ % 12 == 0) {
                    slide = itemQ / 12;
                } else if (itemQ % 12 >= 1) {
                    slide = itemQ / 12 + 1;
                }
                if (slide < limit) limit = slide;
                request.setAttribute("pages", slide);
                request.setAttribute("curPag", limit);
                if (limit >= 1) {
                    linkQuery += "&page=";
                }
                request.setAttribute("q", linkQuery);


                listclo.setInt(2, (limit - 1) * 12);
                ResultSet clolist = listclo.executeQuery();
                request.setAttribute("clolist", clolist);
            }




        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        session.setAttribute("page",limit);
        request.setAttribute("type",ctg);
        request.getRequestDispatcher("ashion/listproduct.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}