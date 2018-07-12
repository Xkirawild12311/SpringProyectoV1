package modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ArticuloValidaciones implements Validator {

    private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Personal.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Personal art = (Personal) o;
       

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cargoId",
                "required.cargo", "El campo Cargo es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre",
                "required.nombre", "El campo Nombre es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "apellido",
                "required.apellido", "El campo Apellido es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dni",
                "required.dni", "El campo Dni es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sexo",
                "required.sexo", "El campo Sexo es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo",
                "required.correo", "El campo Correo electrónico es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "contraseña",
                "required.contraseña", "El campo Contraseña es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fecNacimiento",
                "required.fecNacimiento", "El campo Fecha de Nacimiento es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "comentarios",
                "required.comentarios", "El campo Comentarios es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "estado",
                "required.estado", "El campo Estado es Obligatorio.");

        if (!(art.getCorreo() != null && art.getCorreo().isEmpty())) {
            this.pattern = Pattern.compile(EMAIL_PATTERN);
            this.matcher = pattern.matcher(art.getCorreo());
            if (!matcher.matches()) {
                errors.rejectValue("correo", "correo.incorrect",
                        "El Correo electrónico " + art.getCorreo() + " no es válido");
            }
        }
    }

}
