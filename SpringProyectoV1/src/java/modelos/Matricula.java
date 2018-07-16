
package modelos;

public class Matricula {
    private String idMatricula, fecMatricula, Padre_idPadre, alumno_idAlumno, nivel_idNivel;

    public Matricula() {
    }

    public Matricula(String fecMatricula, String Padre_idPadre, String alumno_idAlumno, String nivel_idNivel) {
        this.fecMatricula = fecMatricula;
        this.Padre_idPadre = Padre_idPadre;
        this.alumno_idAlumno = alumno_idAlumno;
        this.nivel_idNivel = nivel_idNivel;
    }

    public Matricula(String idMatricula, String fecMatricula, String Padre_idPadre, String alumno_idAlumno, String nivel_idNivel) {
        this.idMatricula = idMatricula;
        this.fecMatricula = fecMatricula;
        this.Padre_idPadre = Padre_idPadre;
        this.alumno_idAlumno = alumno_idAlumno;
        this.nivel_idNivel = nivel_idNivel;
    }

    public String getIdMatricula() {
        return idMatricula;
    }

    public void setIdMatricula(String idMatricula) {
        this.idMatricula = idMatricula;
    }

    public String getFecMatricula() {
        return fecMatricula;
    }

    public void setFecMatricula(String fecMatricula) {
        this.fecMatricula = fecMatricula;
    }

    public String getPadre_idPadre() {
        return Padre_idPadre;
    }

    public void setPadre_idPadre(String Padre_idPadre) {
        this.Padre_idPadre = Padre_idPadre;
    }

    public String getAlumno_idAlumno() {
        return alumno_idAlumno;
    }

    public void setAlumno_idAlumno(String alumno_idAlumno) {
        this.alumno_idAlumno = alumno_idAlumno;
    }

    public String getNivel_idNivel() {
        return nivel_idNivel;
    }

    public void setNivel_idNivel(String nivel_idNivel) {
        this.nivel_idNivel = nivel_idNivel;
    }
    
    
}
