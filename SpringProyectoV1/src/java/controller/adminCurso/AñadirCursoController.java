package controller.adminCurso;

import java.util.List;
import modelos.ArticuloValidaciones;
import modelos.Conexion;
import modelos.Curso;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("añadirCurso.htm")
public class AñadirCursoController {
      
    //ArticuloValidaciones articuloValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AñadirCursoController() {
        //this.articuloValidaciones=new ArticuloValidaciones();
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
       @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("Admin/curso/añadirCurso");
        mav.addObject("curso",new Curso());
        return mav;
    }
   
     @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("curso") Curso u,
                BindingResult result,
                SessionStatus status
        )
    {
         //this.articuloValidaciones.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("Admin/curso/añadirCurso");
            mav.addObject("curso",new Curso());
            return mav;
        }else
        {                  
 
        this.jdbcTemplate.update(                
        "insert into curso (idCurso, asignatura) values (?,?)",
         u.getIdCurso(),u.getAsignatura());
         return new ModelAndView("redirect:/adminCurso.htm");
        
       
    }   
}
}