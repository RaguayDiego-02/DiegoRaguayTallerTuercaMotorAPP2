package diegoraguaytallertuercamotorapp.view;
import java.util.Scanner; 
import diegoraguaytallertuercamotorapp.controller.MecanicoController; 

public class MenuPrincipal {
    private final Scanner scanner = new Scanner (System.in); 
    
    public void arrancarSistema() {
        int opcion;
        do {
            System.out.println("  |______________________________________|");
            System.out.println("  |Sistema central - TallerTuercaMotorApp|");
            System.out.println("  |______________________________________|");
            System.out.println("  | 1). Entrar al modulo de Mecanicos    |");
            System.out.println("  | 2). Salir del sistema                |");
            System.out.println("  |______________________________________|");
            System.out.print("Seleccione una opcion: ");
            opcion = scanner.nextInt();
            
            switch (opcion) {
                case 1 ->  {
                    MecanicoView vistaMec = new MecanicoView();
                    MecanicoController controlMec = new MecanicoController(vistaMec);
                    controlMec.iniciarModulo();
                }
                case 2 -> System.out.println("\nCerrando sistema...");
                default -> System.out.println("\nOpcion no valida");     
            }
        }while (opcion != 2);
    }
}
