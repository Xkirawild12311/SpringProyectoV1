
package controller.adminAlumno;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Alumno;
import modelos.Conexion;
import modelos.Matricula;
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
@RequestMapping("matricularAlumnos.htm")
public class AdminMatricularAlumnoController {
    
       
     //ArticuloValidaciones articuloValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AdminMatricularAlumnoController() {
        //this.articuloValidaciones=new ArticuloValidaciones();
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
        @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form(HttpServletRequest request)
    {
        ModelAndView mav=new ModelAndView();
        String datos = request.getParameter("alumno_idAlumno");
        String sql = "SELECT * FROM matricula WHERE alumno_idAlumno='" +datos+"'"; 
        List alumnoId=this.jdbcTemplate.queryForList(sql);
        mav.addObject("alumnoId", alumnoId); 
        mav.setViewName("Admin/alumno/matricularAlumnos");
        mav.addObject("matricula",new Matricula());
        return mav;
    }
   
     
     @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("matricula") Matricula u,            
                BindingResult result,
                SessionStatus status
        )
    {
         //this.articuloValidaciones.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("Admin/alumno/matricularAlumnos");
            mav.addObject("matricula",new Matricula());
            return mav;
        }else
        {
        
        String queryy = "SELECT idMatricula FROM matricula order by idMatricula desc";
        List datoT=this.jdbcTemplate.queryForList(queryy);
        
        String dato1=datoT.toString().substring(14, 17);
        int dato2=Integer.parseInt(datoT.toString().substring(17, 20))+1;
        String dato3=String.format("%03d", dato2);
        String idp=dato1+dato3;
        System.out.println("vvhvhvhvvhvhvh"+dato1);
        System.out.println("vvhvhvhvvhvhvh"+dato2);
        System.out.println("vvhvhvhvvhvhvh"+dato3);
        System.out.println("zzzzz"+u.getAlumno_idAlumno().substring(1,6));
        this.jdbcTemplate.update(
          "insert into matricula (idMatricula, fecMatricula, Padre_idPadre,alumno_idAlumno,nivel_idNivel) values (?,?,?,?,?)",
           idp, u.getFecMatricula(), u.getPadre_idPadre(), u.getAlumno_idAlumno().substring(1,6), u.getNivel_idNivel());
         
          System.out.println("OOAAaA"+u.getAlumno_idAlumno().substring(1,5));                  
        return new ModelAndView("redirect:/adminAlumno.htm");
        
        }  
}

}

    