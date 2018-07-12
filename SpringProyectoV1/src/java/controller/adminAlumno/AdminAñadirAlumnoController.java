
package controller.adminAlumno;

import java.util.List;
import modelos.Alumno;
import modelos.Conexion;
import modelos.Padre;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("añadirAlumno.htm")
public class AdminAñadirAlumnoController {
    
     //ArticuloValidaciones articuloValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AdminAñadirAlumnoController() {
        //this.articuloValidaciones=new ArticuloValidaciones();
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
       @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        String sql = "SELECT * FROM nivel";  
        String sql2 = "SELECT * FROM padre";
        List nivel=this.jdbcTemplate.queryForList(sql);
        List nivel2=this.jdbcTemplate.queryForList(sql2);
        mav.addObject("nivel", nivel); 
        mav.addObject("nivel2", nivel2);
        mav.setViewName("Admin/alumno/añadirAlumno");
        mav.addObject("alumno",new Alumno());
        return mav;
    }
     
     @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("alumno") Alumno u,
                BindingResult result,
                SessionStatus status
        )
    {
         //this.articuloValidaciones.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("Admin/alumno/añadirAlumno");
            mav.addObject("alumno",new Alumno());
            return mav;
        }else
        {
        
        String queryy = "SELECT idAlumno FROM alumno order by idAlumno desc";
        List datoT=this.jdbcTemplate.queryForList(queryy);
        
        String dato1=datoT.toString().substring(11, 13);
        int dato2=Integer.parseInt(datoT.toString().substring(13, 16))+1;
        String dato3=String.format("%03d", dato2);
        String idp=dato1+dato3;
        System.out.println("vvhvhvhvvhvhvh"+dato1);
        this.jdbcTemplate.update(  
                
        "insert into alumno (idAlumno, nombre, apellido, dni, sexo, fecNacimiento, estado, Padre_idPadre1, nivel_idNivel) values (?,?,?,?,?,?,?,?,?)",
         idp, u.getNombre(), u.getApellido(), u.getDni(), u.getSexo(), u.getFecNacimiento(), u.getEstado(), u.getPadre_idPadre1(),u.getNivel_idNivel());
          System.out.println("vvhvhvhvvhvhvh"+dato1);
          System.out.println("vvhvhvhvvhvhvh"+dato1);
        return new ModelAndView("redirect:/adminAlumno.htm");
        
        }
        
       
    } 
}
