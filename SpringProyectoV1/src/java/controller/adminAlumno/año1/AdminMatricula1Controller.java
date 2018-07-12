
package controller.adminAlumno.año1;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminMatricula1Controller {
    
    private JdbcTemplate jdbcTemplate;

    public AdminMatricula1Controller() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();        
        String alumno_idAlumno = request.getParameter("alumno_idAlumno");
        String sql = "SELECT * FROM matricula WHERE alumno_idAlumno='" +alumno_idAlumno+"'";      
        List alumnoId=this.jdbcTemplate.queryForList(sql);
        mav.addObject("alumnoId", alumnoId);        
        mav.setViewName("Admin/alumno/año1/matricula1");
        System.out.println("Revisar: "+mav.toString());
        return mav;
    }
    
}
