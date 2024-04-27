package pe.edu.cibertec.WAEC2Dynamite.service;

import pe.edu.cibertec.WAEC2Dynamite.models.Usuario;

import java.util.List;

public interface IUsuarioService {
    Usuario findUserByNomUsuario(String nomusuario);
    Usuario guardarUsuario(Usuario usuario);
    List<Usuario> listarUsuarios();
    Usuario obtenerUsuarioxId (int id);
    void actualizarUsuario(Usuario usuario);

}
