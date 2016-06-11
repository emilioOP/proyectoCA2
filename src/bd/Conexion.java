/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.sql.*;

/**
 *
 * @author Emilio
 */
public class Conexion {
    private Connection con;
    private Statement sen; 
    private ResultSet rs;

    public Conexion(String server, String bd, String user, String pass) throws SQLException{
        String url="jdbc:sqlserver://"+server;
        
        con = DriverManager.getConnection(url, user, pass);
        
        if (con != null) {
            System.out.println("Conectado a "+bd+"");
            String query="use "+bd+"";        
            ejecutar(query);            
        }else{
            System.out.println("No se ha podido inicializar conexion ");
        }
    }
    
    public void ejecutar(String query) throws SQLException{
        sen=con.createStatement();
        sen.executeUpdate(query);
        sen.close();
    }    
    
    public ResultSet ejecutarSelect(String query) throws SQLException{
        sen=con.createStatement();
        rs=sen.executeQuery(query);
        return rs;        
    }

    public void desconectar() throws SQLException{
        sen.close();
    }
}
