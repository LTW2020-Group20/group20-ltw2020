package vn.com.User.cart.Model;

import java.util.Collection;
import java.util.HashMap;

public class Cart {
    HashMap<Integer, Product> data;
    public Cart(){
        this.data = new HashMap<>();
    }
    public Product get(int id){
        return data.get(id);
    }
    public int put(Product p) {
        if(data.containsKey(p.getId()))
            data.get(p.getId()).quatityUp();
        else data.put(p.getId(), p);
        return data.get(p.getId()).getQuatity();
    }
    public int put(int id, int quantity){
        if(data.containsKey(id)) data.get(id).quatityUp(quantity);
        return data.get(id).getQuatity();
    }
    public boolean remove(int id){
        return data.remove(id)==null;
    }
    public double total(){
        double sum=0;
        for (Product p :data.values())
            sum += (p.quantity*p.price);
        return  sum;

    }

    public Collection<Product> list(){
        return data.values();
    }
}
