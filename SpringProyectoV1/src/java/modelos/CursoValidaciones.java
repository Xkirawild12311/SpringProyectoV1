
package modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class CursoValidaciones implements Validator{
    
     private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Personal.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {     


        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nivel_id",
                "required.nivel_id", "El campo del Nivel es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "curso_id",
                "required.curso_id", "El campo de Curso es Obligatorio.");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "personal_id",
                "required.personal_id", "El campo del Id Docente es Obligatorio.");
  

      

    }
}
