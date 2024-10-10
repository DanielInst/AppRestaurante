package pryrestaurante;

import Views.frmLoadingView;
import config.Conexion;

/**
 *
 * @author Lab3
 */
public class PryRestaurante {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        frmLoadingView frm = new frmLoadingView();
        frm.setVisible(true);
        frm.setLocationRelativeTo(null);
        
        Conexion con = new Conexion();
        con.conectar_db();
    }
    
}
