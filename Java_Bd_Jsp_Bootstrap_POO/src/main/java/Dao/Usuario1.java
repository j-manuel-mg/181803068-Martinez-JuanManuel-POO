package Dao;

/**
 *
 * @author Juan Manuel
 */
public class Usuario1 {

    private int idUsuario;
    private String usuario;
    private int edad;
    private String password;

    public Usuario1() {
    }

    public Usuario1(String password, int idUsuario) {
        this.password = password;
        this.idUsuario = idUsuario;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    

}
