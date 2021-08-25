/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author DELL
 */
public class DBConnection {

    static Connection conn = null;
    static Statement stmt = null;

    public static Connection getConnection() throws SQLException { // connecion to dbms to insert dailay news
        final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/dailynews";

        final String USER = "root";
        final String PASS = "admin";

        try {
            Class.forName(JDBC_DRIVER);
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return conn;
    }
 

    public static Connection closeConnection() throws SQLException {
        conn = getConnection();
        stmt = conn.createStatement();
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
        return null;
    }

}
