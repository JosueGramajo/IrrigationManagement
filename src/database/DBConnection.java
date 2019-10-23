package database;

import java.sql.*;

public class DBConnection {
    private static Connection cn;
    private static Connection cn2;

    public static DBConnection INSTANCE = new DBConnection();

    public ResultSet executeQuery(String query){
        ResultSet rs = null;

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();

            cn = DriverManager.getConnection("jdbc:sqlserver://localhost\\SQLEXPRESS;databaseName=IrrigationDB;integratedSecurity=false","sa","123456");

            PreparedStatement ps = cn.prepareCall(query);
            rs = ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }

    public void executeUpdate(String query){
        ResultSet rs = null;

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();

            cn = DriverManager.getConnection("jdbc:sqlserver://localhost\\SQLEXPRESS;databaseName=IrrigationDB;integratedSecurity=false","sa","123456");

            PreparedStatement ps = cn.prepareCall(query);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
