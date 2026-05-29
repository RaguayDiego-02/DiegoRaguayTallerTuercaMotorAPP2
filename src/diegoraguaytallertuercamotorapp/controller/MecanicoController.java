package diegoraguaytallertuercamotorapp.controller;
import java.util.List; 
import diegoraguaytallertuercamotorapp.model.Mecanico; 
import diegoraguaytallertuercamotorapp.model.dao.MecanicoDAO;
import diegoraguaytallertuercamotorapp.model.dao.MecanicoDAOImpl;
import diegoraguaytallertuercamotorapp.view.MecanicoView;

public class MecanicoController {
    private final MecanicoView vista; 
    private final MecanicoDAO dao; 
    
    public MecanicoController(MecanicoView vista) {
        this.vista = vista; 
        this.dao = new MecanicoDAOImpl(); 
    }
    
    public void iniciarModulo() {
        int opcion;
        do {
            opcion = vista.mostrarMenu();
            switch (opcion) {
                case 1 -> listar();
                case 2 -> vista.mostrarMensaje("Regresando al menu principal"); 
                default -> vista.mostrarMensaje("Opcion no valida"); 
            }
        }while (opcion !=2); 
    }
    
    private void listar() {
        List<Mecanico> lista = dao.listar(); 
        if (lista.isEmpty()) {
            vista.mostrarMensaje("No hay Mecanicos registrados");
        }else {
            vista.desplegarLista(lista);
        }
    }
}
