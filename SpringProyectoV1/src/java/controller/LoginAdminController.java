
package controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import modelos.Padre;
import modelos.Personal;
import modelos.Usuarios;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

public class LoginAdminController {
    
        @RequestMapping(value = "/loginAdmin", method = RequestMethod.GET)
    public String login(ModelMap model) {
       
        return "loginAdmin";
    }
}
    
    
    