
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
public class AdminDocenteController {
    
    
    private JdbcTemplate jdbcTemplate;

    public AdminDocenteController() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();        
        String idCargo = request.getParameter("cargoId");
        String sql = "SELECT * FROM personal WHERE cargoId='" +idCargo+"'";      
        List profe=this.jdbcTemplate.queryForList(sql);
        mav.addObject("profe", profe);        
        mav.setViewName("Admin/adminDocente");
        System.out.println("Revisar: "+mav.toString());
        return mav;
    }
}
