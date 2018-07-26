
package modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class ModfAlumnoValidaciones implements Validator{
    
    
            
     private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Personal.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {    
    
          
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre",
                "required.nombre", "El campo Nombre es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "apellido",
                "required.apellido", "El campo Apellido es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dni",
                "required.dni", "El campo Dni es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sexo",
                "required.sexo", "El campo Sexo es Obligatorio.");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fecNacimiento",
                "required.fecNacimiento", "El campo Fecha de Nacimiento es Obligatorio.");
        
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "estado",
                "required.estado", "El campo de Estado es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Padre_idPadre1",
                "required.Padre_idPadre1", "El Id del Padre es Obligatorio.");
        
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nivel_idNivel",
                "required.nivel_idNivel", "El campo de Grado Obligatorio.");   
}
}
