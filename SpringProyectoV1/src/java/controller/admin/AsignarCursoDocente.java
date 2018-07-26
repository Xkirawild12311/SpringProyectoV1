package controller.admin;

import java.util.List;
import modelos.ArticuloValidaciones;
import modelos.Conexion;
import modelos.CursoValidaciones;
import modelos.Personal;
import modelos.nivel_curso;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


public class AsignarCursoDocente {
  
    
      
    CursoValidaciones cursoValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AsignarCursoDocente() {
        this.cursoValidaciones=new CursoValidaciones();
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
       
       @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        String sql = "SELECT * FROM nivel";  
        String sql2 = "SELECT * FROM curso";  
        List nivelx=this.jdbcTemplate.queryForList(sql);
        List cursox=this.jdbcTemplate.queryForList(sql2);
        mav.addObject("nivelx", nivelx); 
        mav.addObject("cursox", cursox);
        mav.setViewName("Admin/docente/asignarCursoDocente");
        mav.addObject("nivel_curso",new nivel_curso());
        return mav;
    }
    
     @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("nivel_curso") nivel_curso u,
                BindingResult result,
                SessionStatus status
        )
    {
         this.cursoValidaciones.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("Admin/docente/asignarCursoDocente");
            mav.addObject("nivel_curso",new nivel_curso());
            return mav;
        }else
        {
      
        this.jdbcTemplate.update(                
        "insert into nivel_curso (nivel_id, curso_id, personal_id) values (?,?,?)",
         u.getNivel_id(), u.getCurso_id(), u.getPersonal_id());
         return new ModelAndView("redirect:/adminDocente.htm?cargoId=Profe");
        }
       
    }    
}
