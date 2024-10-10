/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.TypeDishModel;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Lab3
 */
public class TypeDIshController {
    
    private boolean result = false;
    private final Connection con = Conexion.conectar_db();
    private String sql;
    
    public boolean save_typedish(TypeDishModel obj_typedish){
        
        sql = "INSERT INTO tipoplato (descripplat, imagen) VALUES (?,?)";
        
        try {
            PreparedStatement ppt = con.prepareStatement(sql);
            ppt.setString(1, obj_typedish.getDescripplat());
            ppt.setString(2, obj_typedish.getImagen());
            result = ppt.executeUpdate() > 0 ? true: result;
            
            return result;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error al insertar "+e);
        }
        return result;
    }
}
