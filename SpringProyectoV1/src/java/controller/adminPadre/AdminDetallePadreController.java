
package controller.adminPadre;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminDetallePadreController {   
      
    private JdbcTemplate jdbcTemplate;

    public AdminDetallePadreController() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();        
        String idPadre = request.getParameter("Padre_idPadre1");
        String sql = "SELECT * FROM alumno WHERE Padre_idPadre1='" +idPadre+"'";    
        List hijos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("hijos", hijos);         
        mav.setViewName("Admin/padre/detallePadre");
        System.out.println("Revisar: "+mav.toString());
        return mav;
    }
}
