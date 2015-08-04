/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package funciones;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author GIO
 */
public class conexion {
    
    public Connection conexion;
    public boolean conectar(){
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ClinicaMedica","postgres","mame32");
            if(conexion != null){
                System.out.println("Conexion exitosa");
                return true;
            }
        } catch (Exception e) {
            System.out.println("Conexion fallida "+e);
        }
        return false;
    }
    
}
