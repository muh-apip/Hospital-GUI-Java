package Project;

import java.sql.*;

public class Koneksi {
    
    public static Connection getConn(){
        try{
            // Melakukan registrasi driver JDBC
            Class.forName("com.mysql.jdbc.Driver");
            
            // Mendapatkan koneksi ke database MySQL
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/db_rumahsakit", "root", "");
            
            return con;
        }
        catch(Exception e) {
            e.printStackTrace(); // Jika terjadi kesalahan, cetak pesan kesalahan
            return null;
        }
    }
}
