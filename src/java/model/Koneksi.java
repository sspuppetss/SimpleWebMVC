/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 672016198
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class Koneksi {
    private String url = "jdbc:mysql://localhost:3306/pl_siasat";
    private String username = "root";
    private String password = "";
    public Connection getKoneksi(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
