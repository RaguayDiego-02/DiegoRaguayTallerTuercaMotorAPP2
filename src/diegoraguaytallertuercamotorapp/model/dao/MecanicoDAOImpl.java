package diegoraguaytallertuercamotorapp.model.dao;
import java.sql.*; 
import java.util.ArrayList; 
import java.util.List; 
import diegoraguaytallertuercamotorapp.model.Mecanico; 
import diegoraguaytallertuercamotorapp.model.conexion.Conexion; 

public class MecanicoDAOImpl implements MecanicoDAO {
    
    @Override
    public List<Mecanico> listar() {
        List<Mecanico> lista =  new ArrayList<>();
        String sql = "{call sp_listar_mecanicos()}"; 
        try (Connection con = Conexion.getInstancia().conectar();
             CallableStatement cs = con.prepareCall(sql); 
             ResultSet rs = cs.executeQuery()) {
            while (rs.next()) {
                lista.add(new Mecanico(
                    rs.getInt("numero_empleado"), 
                    rs.getString("nombre"),
                    rs.getString("nivel_tecnico"),
                    rs.getInt("trabajo_orden_servicio"),
                    rs.getString("horas_dedicadas"),
                    rs.getString("placa")
                ));
            }
        }catch (SQLException e) {
            System.err.println("Error [Listar Mecanicos]: " + e.getMessage());                                    
        }
        return lista; 
    }
    
}
