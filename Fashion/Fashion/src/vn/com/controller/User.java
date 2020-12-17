package vn.com.controller;

public class User {
    String uname;
    String pass;
    int role;
    String email;
    String phone;
    String address;

    public User() {
    }

    public User(String uname, String pass, int role,String email,String phone, String  address) {

        this.uname = uname;
        this.pass = pass;
        this.role = role;
        this.email=email;
        this.phone=phone;
        this.address=address;
    }

    public User(String uname, String pass, int level, int active, String email, String phone, String address) {
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getrole() {
        return role;
    }

    public void setrole(int role) {
        this.role = role;
    }
}
