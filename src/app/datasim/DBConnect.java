package app.datasim;

import java.sql.*;

public class DBConnect {
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost:3308/library?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
    private static final String username = "root";
    private static final String password = "";

    private static Connection conn = null;

   //carga de controladores
    static {
        try {
            Class.forName(driver);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //singleton pa la base de datos
    public static Connection getConnection() throws Exception {
        if (conn == null) {
            conn = DriverManager.getConnection(url, username, password);
            return conn;
        }
        return conn;
    }

    public static void close(Connection conn, Statement st, ResultSet rs) {
        try {
            if (conn != null)
                conn.close();
            if (st != null)
                st.close();
            if (rs != null)
                rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static boolean executeSql(String sql) {
        Connection conn = null;
        try {
            conn = getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Statement st = null;
        try {
            st = conn.createStatement();
            return st.executeUpdate(sql) > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(conn, st, null);
        }
        return false;
    }

}