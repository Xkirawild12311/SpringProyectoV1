
package controller.adminPadre;

import java.util.List;
import modelos.ArticuloValidaciones;
import modelos.Conexion;
import modelos.Padre;
import modelos.Personal;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("añadirPadre.htm")
public class AdminAñadirPadreController {
    
    //ArticuloValidaciones articuloValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AdminAñadirPadreController() {
        //this.articuloValidaciones=new ArticuloValidaciones();
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
       @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("Admin/padre/añadirPadre");
        mav.addObject("padre",new Padre());
        return mav;
    }
     
     @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("padre") Padre u,
                BindingResult result,
                SessionStatus status
        )
    {
         //this.articuloValidaciones.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("Admin/padre/añadirPadre");
            mav.addObject("padre",new Padre());
            return mav;
        }else
        {
        
        String queryy = "SELECT idPadre FROM padre order by idPadre desc";
        List datoT=this.jdbcTemplate.queryForList(queryy);
        
        String dato1=datoT.toString().substring(10, 12);
        int dato2=Integer.parseInt(datoT.toString().substring(12, 15))+1;
        String dato3=String.format("%03d", dato2);
        String idp=dato1+dato3;
        
        this.jdbcTemplate.update(  
                
        "insert into padre (idPadre, nombre, apellido, dni, sexo, correo, password, fecNacimiento) values (?,?,?,?,?,?,?,?)",
         idp, u.getNombre(), u.getApellido(), u.getDni(), u.getSexo(), u.getCorreo(), u.getPassword(), u.getFecNacimiento());
          System.out.println("vvhvhvhvvhvhvh"+dato1);
        return new ModelAndView("redirect:/adminPadre.htm?cargoId=Padre");
        }
       
    } 
}
