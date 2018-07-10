
package controller.admin;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import modelos.ArticuloValidaciones;
import modelos.Conexion;
import modelos.Personal;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("añadirDocente.htm")
public class AñadirDocenteController {
    
    ArticuloValidaciones articuloValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AñadirDocenteController() {
        this.articuloValidaciones=new ArticuloValidaciones();
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
       @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("Admin/docente/añadirDocente");
        mav.addObject("personal",new Personal());
        return mav;
    }
   
     @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("personal") Personal u,
                BindingResult result,
                SessionStatus status
        )
    {
         this.articuloValidaciones.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("Admin/docente/añadirDocente");
            mav.addObject("personal",new Personal());
            return mav;
        }else
        {
        this.jdbcTemplate.update(                
        "insert into personal (idPersonal, cargoId, nombre, apellido, dni, sexo, correo, contraseña, fecNacimiento, comentarios) values (?,?,?,?,?,?,?,?,?,?)",
         u.getIdPersonal(), u.getCargoId(), u.getNombre(), u.getApellido(), u.getDni(), u.getSexo(), u.getCorreo(), u.getContraseña(), u.getFecNacimiento(), u.getComentarios());
         return new ModelAndView("redirect:/adminDocente.htm?cargoId=Profe");
        }
       
    }    
         
    
 
    
}
