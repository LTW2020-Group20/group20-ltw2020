package vn.com.User.cart.Model;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Product {
    int id;
    String name;
    int category;
    int quantity;
    String img;
    double price;

    public Product(int id, int category, String name, int quantity, String img, double price) {
        this.category = category;
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.img = img;
        this.price = price;

    }

    public Product() {

    }

    public static Product find(int id) {
        try {
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement("SELECT id_product,name_product,price,img,id_ctg FROM product WHERE id_product=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.id = rs.getInt(1);
                p.name = rs.getString(2);
                p.price = rs.getDouble(3);
                p.img = rs.getString(4);
                p.category = rs.getInt(5);
                p.quantity = 1;
                return p;

            }
            return null;
        } catch (SQLException | ClassNotFoundException e) {
            return null;
        }
    }

    public int getType() {
        return category;
    }

    public void quatityUp() {
        this.quantity++;
    }

    public void quatityDown() {
        if (quantity > 1) {
            this.quantity--;
        } else {
            quantity = 1;
        }
    }

    public void quatityUp(int quantity) {
        setQuatity(quantity);
    }


    public int getQuatity() {
        return quantity;
    }


    void setQuatity(int quatity) {
        if (quatity < 1) quatity = 1;
        this.quantity = quatity;
    }

    public String getImg() {
        return img;

    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;

    }

    public double getPrice() {
        return price;
    }

    public void setName(String name) {
        this.name = name;

    }

    public double total() {
        return price * quantity;
    }
}
