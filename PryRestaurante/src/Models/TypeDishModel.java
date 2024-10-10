/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Lab3
 */
public class TypeDishModel {
    String descripplat;
    String imagen;

    public TypeDishModel() {
        this.descripplat = "";
        this.imagen = null;
    }

    public TypeDishModel(String descripplat, String imagen) {
        this.descripplat = descripplat;
        this.imagen = imagen;
    }

    public String getDescripplat() {
        return descripplat;
    }

    public void setDescripplat(String descripplat) {
        this.descripplat = descripplat;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
            
}
