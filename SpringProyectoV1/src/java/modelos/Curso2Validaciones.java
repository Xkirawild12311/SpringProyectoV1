
package modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class Curso2Validaciones implements Validator{
        
     private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Personal.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {    
    
          
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "idCurso",
                "required.idCurso", "El campo del Id Curso es Obligatorio.");
        
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "asignatura",
                "required.asignatura", "El campo de la Asignatura es Obligatorio.");
}
}
