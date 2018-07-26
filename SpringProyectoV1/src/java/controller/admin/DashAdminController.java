
package controller.admin;

import java.security.Principal;
import java.util.List;
import javax.swing.JOptionPane;
import modelos.Conexion;
import modelos.Usuarios;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashAdminController {
     private JdbcTemplate jdbcTemplate;

    public DashAdminController() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }

    
    @RequestMapping("dashboardAdmin.htm")
    public ModelAndView admin() {
        ModelAndView mav = new ModelAndView();
        String sql = "select * from personal";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos", datos);
        mav.setViewName("Admin/dashboardAdmin");
        return mav;
    } 
 
}
