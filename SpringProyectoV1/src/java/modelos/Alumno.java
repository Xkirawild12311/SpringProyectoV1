
package modelos;


public class Alumno {
    private String idAlumno, nombre, apellido, sexo, fecNacimiento, estado, Padre_idPadre1, nivel_idNivel;
    private int dni;

    public Alumno() {
    }

    public Alumno(String nombre, String apellido, String sexo, String fecNacimiento, String estado, String Padre_idPadre1, String nivel_idNivel, int dni) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.sexo = sexo;
        this.fecNacimiento = fecNacimiento;
        this.estado = estado;
        this.Padre_idPadre1 = Padre_idPadre1;
        this.nivel_idNivel = nivel_idNivel;
        this.dni = dni;
    }

    public Alumno(String idAlumno, String nombre, String apellido, String sexo, String fecNacimiento, String estado, String Padre_idPadre1, String nivel_idNivel, int dni) {
        this.idAlumno = idAlumno;
        this.nombre = nombre;
        this.apellido = apellido;
        this.sexo = sexo;
        this.fecNacimiento = fecNacimiento;
        this.estado = estado;
        this.Padre_idPadre1 = Padre_idPadre1;
        this.nivel_idNivel = nivel_idNivel;
        this.dni = dni;
    }

    public String getIdAlumno() {
        return idAlumno;
    }

    public void setIdAlumno(String idAlumno) {
        this.idAlumno = idAlumno;
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

    public String getFecNacimiento() {
        return fecNacimiento;
    }

    public void setFecNacimiento(String fecNacimiento) {
        this.fecNacimiento = fecNacimiento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getPadre_idPadre1() {
        return Padre_idPadre1;
    }

    public void setPadre_idPadre1(String Padre_idPadre1) {
        this.Padre_idPadre1 = Padre_idPadre1;
    }

    public String getNivel_idNivel() {
        return nivel_idNivel;
    }

    public void setNivel_idNivel(String nivel_idNivel) {
        this.nivel_idNivel = nivel_idNivel;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }
    
    
    
}
