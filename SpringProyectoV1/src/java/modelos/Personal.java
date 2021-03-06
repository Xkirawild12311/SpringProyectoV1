package modelos;

import java.sql.Date;


public class Personal {
    
    private String idPersonal, cargoId, nombre, apellido;
    private int dni;
    private String sexo, correo, password, fecNacimiento,comentarios, estado, enabled;
    
    public Personal() {
    }

    public Personal(String cargoId, String nombre, String apellido, int dni, String sexo, String correo, String password, String fecNacimiento, String comentarios, String estado, String enabled) {
        this.cargoId = cargoId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.sexo = sexo;
        this.correo = correo;
        this.password = password;
        this.fecNacimiento = fecNacimiento;
        this.comentarios = comentarios;
        this.estado = estado;
        this.enabled = enabled;
    }

    public Personal(String idPersonal, String cargoId, String nombre, String apellido, int dni, String sexo, String correo, String password, String fecNacimiento, String comentarios, String estado, String enabled) {
        this.idPersonal = idPersonal;
        this.cargoId = cargoId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.sexo = sexo;
        this.correo = correo;
        this.password = password;
        this.fecNacimiento = fecNacimiento;
        this.comentarios = comentarios;
        this.estado = estado;
        this.enabled = enabled;
    }
     public Personal(String idPersonal, String cargoId, String nombre, String apellido, int dni, String sexo, String correo, String password, String fecNacimiento, String estado, String enabled) {
        this.idPersonal = idPersonal;
        this.cargoId = cargoId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.sexo = sexo;
        this.correo = correo;
        this.password = password;
        this.fecNacimiento = fecNacimiento;       
        this.estado = estado;
        this.enabled = enabled;
    }

    public String getIdPersonal() {
        return idPersonal;
    }

    public void setIdPersonal(String idPersonal) {
        this.idPersonal = idPersonal;
    }

    public String getCargoId() {
        return cargoId;
    }

    public void setCargoId(String cargoId) {
        this.cargoId = cargoId;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFecNacimiento() {
        return fecNacimiento;
    }

    public void setFecNacimiento(String fecNacimiento) {
        this.fecNacimiento = fecNacimiento;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }

    
    
    
  
    
}
