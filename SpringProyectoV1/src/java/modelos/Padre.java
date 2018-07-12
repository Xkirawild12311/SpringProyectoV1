
package modelos;

public class Padre {
    
    private String idPadre, nombre, apellido;
    private int dni;
    private String sexo, correo, contraseña;
    private String fecNacimiento;

    public Padre() {
    }

    public Padre(String nombre, String apellido, int dni, String sexo, String correo, String contraseña, String fecNacimiento) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.sexo = sexo;
        this.correo = correo;
        this.contraseña = contraseña;
        this.fecNacimiento = fecNacimiento;
    }

    public Padre(String idPadre, String nombre, String apellido, int dni, String sexo, String correo, String contraseña, String fecNacimiento) {
        this.idPadre = idPadre;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.sexo = sexo;
        this.correo = correo;
        this.contraseña = contraseña;
        this.fecNacimiento = fecNacimiento;
    }

    public String getIdPadre() {
        return idPadre;
    }

    public void setIdPadre(String idPadre) {
        this.idPadre = idPadre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getFecNacimiento() {
        return fecNacimiento;
    }

    public void setFecNacimiento(String fecNacimiento) {
        this.fecNacimiento = fecNacimiento;
    }
    

    
    
}
