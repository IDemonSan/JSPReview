package model;

import java.sql.*;

public class Conexion {

    String url;
    Connection cn;

    public Connection conectar() {
        url = "jdbc:sqlserver://localhost:1433;databaseName=Northwind;trustServerCertificate=true;";

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection(url, "sa", "123");
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return cn;
    }
}
