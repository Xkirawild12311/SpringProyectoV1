
package modelos;

public class nivel_curso {
    String  nivel_id,   curso_id,   personal_id;

    public nivel_curso() {
    }

    public nivel_curso(String curso_id, String personal_id) {
        this.curso_id = curso_id;
        this.personal_id = personal_id;
    }

    public nivel_curso(String nivel_id, String curso_id, String personal_id) {
        this.nivel_id = nivel_id;
        this.curso_id = curso_id;
        this.personal_id = personal_id;
    }

    public String getNivel_id() {
        return nivel_id;
    }

    public void setNivel_id(String nivel_id) {
        this.nivel_id = nivel_id;
    }

    public String getCurso_id() {
        return curso_id;
    }

    public void setCurso_id(String curso_id) {
        this.curso_id = curso_id;
    }

    public String getPersonal_id() {
        return personal_id;
    }

    public void setPersonal_id(String personal_id) {
        this.personal_id = personal_id;
    }
    
    
}
