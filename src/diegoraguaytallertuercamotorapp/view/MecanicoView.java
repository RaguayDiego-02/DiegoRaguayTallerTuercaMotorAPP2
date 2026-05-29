package diegoraguaytallertuercamotorapp.view;
import java.util.List; 
import java.util.Scanner; 
import diegoraguaytallertuercamotorapp.model.Mecanico; 

public class MecanicoView {
    private final Scanner scanner = new Scanner(System.in); 
    
    public int mostrarMenu() { 
        System.out.println("  |______________________________|");
        System.out.println("  | Modulo: Gestion de Mecanicos |");
        System.out.println("  | 1) Listar todos los Mecanicos|");
        System.out.println("  | 2) Regresar al menu principal|");
        System.out.println("  |______________________________|");
        System.out.print("Seleccione una opcion: ");
        return scanner.nextInt(); 
    }
    
    public void desplegarLista(List<Mecanico> mecanicos) {
        System.out.println("|________________________________________________________Lista de Mecanicos_________________________________________________________________|");
        System.out.printf("|%-15s %-20s %-15s %-20s %-15s %-10s\n", " NO. EMPLEADO |" , "     NOMBRE |" ,"NIVEL TÉCNICO |" , " ORDEN SERVICIO |" , " HORAS |" , " PLACA |" );
        System.out.println("|___________________________________________________________________________________________________________________________________________|");
        for (Mecanico Mec : mecanicos) {
            System.out.printf(" |%-15d %-20s %-15s %-20d %-15s %-10s\n",Mec.getNumeroEmpleado(),Mec.getNombre(),Mec.getNivelTecnico(),Mec.getTrabajoOrdenServicio(),Mec.getHorasDedicadas(),Mec.getPlaca());
        }
    }
    public void mostrarMensaje(String mensaje) {
        System.out.println(mensaje);
    }
}