
package Dao;

public class Usuario {
    
    private int idUsuario;
    private String usuario;
    private int edad;
    private String password;
    
    public Usuario() {
        
    }
    
    //Constructor Eliminar Usuario
    public Usuario(int idUsuario){
        this.idUsuario = idUsuario;
    }
    
    //Buscar usuario
    public Usuario(String usuario, int edad){
        this.usuario = usuario;
        this.edad = edad;
    }
    
    //Constrctor Listado Usuario
    public Usuario(int idUsuario, String usuario, int edad, String password) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.edad = edad;
        this.password = password;
    }
    
    //Constructor Agregar Usuario
    public Usuario(String usuario, int edad, String password) {
        this.usuario = usuario;
        this.edad = edad;
        this.password = password;
    }
    
    //Constructor Editar Usuario
    public Usuario(String usuario, int edad, int idUsuario){
        this.usuario = usuario;
        this.edad = edad;
        this.idUsuario = idUsuario;
    }
    
    //Constructor buscar password
    public Usuario(String password) {
        this.password = password;
    }
    
    public int getIdUsuario() {
        return this.idUsuario;
    }
    
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
    public String getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    public int getEdad() {
        return this.edad;
    }
    
    public void setEdad(int edad) {
        this.edad = edad;
    }
    
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    @Override
    public String toString() {
        return "Usuario{" + "idUsuario=" + idUsuario + ", usuario=" + usuario + ", edad=" + edad + ", password=" + password + '}';
    }
}
