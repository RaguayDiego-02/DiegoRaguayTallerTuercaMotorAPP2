package diegoraguaytallertuercamotorapp.model.dao;
import java.util.List;

public interface CRUD<T, ID> {
    List<T> listar();
}