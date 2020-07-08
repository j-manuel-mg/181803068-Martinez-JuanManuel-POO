package Configuracion;

import java.sql.*;

public class Conexion {
    
    private Connection conexion = null;
    private static final String localhost = "localhost";
    private static final String bd = "usuarios";
    private static final String autoReconectar = "?autoReconnet=true&useSSL=false";
    private static final String usuario = "root";
    private static final String password = "";
    
    public Connection getConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://"+localhost+"/"+bd+autoReconectar,usuario,password);
        } catch (Exception e) { 
            System.out.println("Error: " + e.getMessage());
        }
        return conexion;
    }
    
    
}
