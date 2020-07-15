package Dao;

import Configuracion.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsuarioBD {

    //Atributos de conexion
    Connection conexion = new Conexion().getConexion();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    //Atributos SQLz
    private static final String listadoUsuario = "SELECT * FROM usuario";
    private static final String buscarUsuario = "SELECT usuario, edad FROM usuario WHERE id_usuario = ?";

    private static final String agregarUsuario = "INSERT INTO usuario SET usuario = ?, edad = ?, password = MD5(?)";
    private static final String editarUsuario = "UPDATE usuario SET usuario = ?, edad = ? WHERE id_usuario = ?";
    private static final String eliminarUsuario = "DELETE FROM usuario WHERE id_usuario = ?";

    private static final String buscarPassword = "SELECT password FROM usuario WHERE id_usuario = ? AND password=MD5(?) ";
    private static final String editarPassword = "UPDATE usuario SET password=MD5(?) WHERE id_usuario=?";

    //Metodo Listado Usuario ---> Correcto
    public List<Usuario> listadoUsuarios() throws SQLException {
        List<Usuario> usuarios = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.listadoUsuario);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            usuarios.add(new Usuario(this.rs.getInt("id_usuario"), this.rs.getString("usuario"), this.rs.getInt("edad"), this.rs.getString("password")));
        }
        return usuarios;
    }

    public List<Usuario> buscarUsuario(int id) throws SQLException {
        List<Usuario> usuarioId = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.buscarUsuario);
        this.stmt.setInt(1, id);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            usuarioId.add(new Usuario( this.rs.getInt("edad"), this.rs.getString("usuario")));
        }
        return usuarioId;
    }

    public boolean buscarUsuarioPassword(int id, String password) throws SQLException {
        List<Usuario> usuarioId = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.buscarPassword);
        this.stmt.setInt(1, id);
        this.stmt.setString(2, password);
        this.rs = this.stmt.executeQuery();
        if (this.rs.next()) {
            return true;
        } else {
            return false;
        }
    }

    //Metodo Agregar Usuario ---> Correcto
    public boolean agregarUsuario(Usuario usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.agregarUsuario);
        this.stmt.setString(1, usuario.getUsuario());
        this.stmt.setInt(2, usuario.getEdad());
        this.stmt.setString(3, usuario.getPassword());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

    //Metodo Editar Usuario ---> Correcto
    public boolean editarUsuario(Usuario usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.editarUsuario);
        this.stmt.setString(1, usuario.getUsuario());
        this.stmt.setInt(2, usuario.getEdad());
        this.stmt.setInt(3, usuario.getIdUsuario());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean editarPassword(Usuario usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.editarPassword);
        this.stmt.setString(1, usuario.getPassword());
        this.stmt.setInt(2, usuario.getIdUsuario());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

    //Metodo Eliminar Usuario ---> Correcto
    public boolean eliminarUsuario(Usuario usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.eliminarUsuario);
        stmt.setInt(1, usuario.getIdUsuario());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

}
