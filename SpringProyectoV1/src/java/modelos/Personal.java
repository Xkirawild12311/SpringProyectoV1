package modelos;

import java.sql.Date;


public class Personal {
    private String idPersonal, cargoId, nombre, apellido, sexo, correo, contraseña, comentarios;
    private String fecNacimiento;
    private int dni;

    public Personal() {
    }

    public Personal(String cargoId, String nombre, String apellido, String sexo, String correo, String contraseña, String comentarios, String fecNacimiento, int dni) {
        this.cargoId = cargoId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.sexo = sexo;
        this.correo = correo;
        this.contraseña = contraseña;
        this.comentarios = comentarios;
        this.fecNacimiento = fecNacimiento;
        this.dni = dni;
    }

    public Personal(String idPersonal, String cargoId, String nombre, String apellido, String sexo, String correo, String contraseña, String comentarios, String fecNacimiento, int dni) {
        this.idPersonal = idPersonal;
        this.cargoId = cargoId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.sexo = sexo;
        this.correo = correo;
        this.contraseña = contraseña;
        this.comentarios = comentarios;
        this.fecNacimiento = fecNacimiento;
        this.dni = dni;
    }

   
    public Personal(String cargoId) {
        this.cargoId = cargoId;
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

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    public String getFecNacimiento() {
        return fecNacimiento;
    }

    public void setFecNacimiento(String fecNacimiento) {
        this.fecNacimiento = fecNacimiento;
    }

  

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    
  
    
}
