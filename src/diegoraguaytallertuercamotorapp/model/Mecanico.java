package diegoraguaytallertuercamotorapp.model;

public class Mecanico {
    private int numeroEmpleado; 
    private String nombre; 
    private String  nivelTecnico; 
    private int trabajoOrdenServicio; 
    private String horasDedicadas; 
    private String placa; 
    
    public Mecanico() {}
    
    public Mecanico(int numeroEmpleado, String nombre, String nivelTecnico,
                    int trabajoOrdenServicio, String horasDedicadas, String placa) {
        this.numeroEmpleado = numeroEmpleado;
        this.nombre = nombre;
        this.nivelTecnico = nivelTecnico;
        this.trabajoOrdenServicio = trabajoOrdenServicio;
        this.horasDedicadas = horasDedicadas;
        this.placa = placa;
    }
    
    public int getNumeroEmpleado() {
        return numeroEmpleado;
    }
    
    public void setNumeroEmpleado(int numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado; 
    }
    
    public String getNombre() {
        return nombre; 
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre; 
    }
    
    public String getNivelTecnico() {
        return nivelTecnico; 
    }
    
    public void setNivelTecnico(String nivelTecnico) {
        this.nivelTecnico = nivelTecnico; 
    }
    
    public int getTrabajoOrdenServicio() {
        return trabajoOrdenServicio; 
    }
    
    public void setTrabajoOrdenServicio(int trabajoOrdenServicio) {
        this.trabajoOrdenServicio = trabajoOrdenServicio; 
    }
    
    public String getHorasDedicadas() {
        return horasDedicadas; 
    }
    
    public void setHorasDedicadas(String horasDedicadas) {
        this.horasDedicadas = horasDedicadas; 
    }
    
    public String getPlaca() {
        return placa; 
    }
    
    public void sedPlaca(String placa) {
        this.placa = placa;
    }
}
