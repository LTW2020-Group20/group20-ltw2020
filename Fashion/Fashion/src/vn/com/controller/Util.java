package vn.com.controller;

public class Util {
    static final String HOST = "http://localhost:8081/Fashion/";

    public static String fullPath(String path) {
        return HOST + path;
    }
}
