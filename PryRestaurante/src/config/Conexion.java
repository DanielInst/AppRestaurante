/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Lab3
 */
public class Conexion {
    private static Connection conectar = null;
    
    private static final String USUARIO = "postgres";
    private static final String CONTRASENIA = "123456";
    private static final String BDNAME = "bdrestaurante";
    private static final String IP = "localhost";
    private static final String PUERTO = "5432";
    
    private static String cadena = String.format("jdbc:postgresql://%s:%s/%s", IP,PUERTO,BDNAME);
    
    public static Connection conectar_db(){
        try {
            Class.forName("org.postgresql.Driver");
            conectar = DriverManager.getConnection(cadena, USUARIO, CONTRASENIA);
            JOptionPane.showMessageDialog(null, "Se conecto correctamente");
        }catch (Exception e){
            JOptionPane.showMessageDialog(null, "Error al conectar: "+e);
        }
        return conectar;
    }
}
