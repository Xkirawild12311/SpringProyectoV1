
package modelos;


public class Curso {
    private String idCurso, asignatura;

    public Curso() {
    }

    public Curso(String asignatura) {
        this.asignatura = asignatura;
    }

    public Curso(String idCurso, String asignatura) {
        this.idCurso = idCurso;
        this.asignatura = asignatura;
    }

    public String getIdCurso() {
        return idCurso;
    }

    public void setIdCurso(String idCurso) {
        this.idCurso = idCurso;
    }

    public String getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(String asignatura) {
        this.asignatura = asignatura;
    }
    
    
}
