package diegoraguaytallertuercamotorapp.model.conexion;
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 

public class Conexion {
    private static Conexion instancia; 
    
    private static final String URL = "jdbc:mysql://localhost:3306/script_db_DDL_Diego_Raguay_in4cm?serverTimezone=UTC";
    private static final String USER = "root"; 
    private static final String PASSWORD = "DiegoRaguay22"; 
    
    private Conexion() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver"); 
        }catch(ClassNotFoundException e) {
            System.err.println("Error Driver: " + e.getMessage());
        }
    }
    public static synchronized Conexion getInstancia() {
        if (instancia == null) {
            instancia = new Conexion();
        }
        return instancia; 
    }
    public Connection conectar() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);    
    }
}
