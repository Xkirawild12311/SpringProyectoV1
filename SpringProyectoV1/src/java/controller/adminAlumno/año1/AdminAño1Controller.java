

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
public class AdminAño1Controller {
    
    private JdbcTemplate jdbcTemplate;

    public AdminAño1Controller() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
     @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();        
        String nivel_idNivel = request.getParameter("nivel_idNivel");
        String sql = "SELECT * FROM alumno WHERE nivel_idNivel='" +nivel_idNivel+"'";      
        List nivelId=this.jdbcTemplate.queryForList(sql);
        mav.addObject("nivelId", nivelId);        
        mav.setViewName("Admin/alumno/año1/año1");
        System.out.println("Revisar: "+mav.toString());
        return mav;
    }
}
