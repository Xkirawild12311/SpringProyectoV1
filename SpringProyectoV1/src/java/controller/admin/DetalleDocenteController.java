
package controller.admin;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DetalleDocenteController {
    
    private JdbcTemplate jdbcTemplate;

    public DetalleDocenteController() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();        
        String personal_id = request.getParameter("personal_id");
        String sql = "SELECT * FROM nivel_curso WHERE personal_id='" +personal_id+"'";    
        List personalId=this.jdbcTemplate.queryForList(sql);
        mav.addObject("personalId", personalId);         
        mav.setViewName("Admin/detalleDocente");
        System.out.println("Revisar: "+mav.toString());
        return mav;
    }
}
