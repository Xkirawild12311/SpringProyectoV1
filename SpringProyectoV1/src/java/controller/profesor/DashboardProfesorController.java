
package controller.profesor;

import java.util.List;
import modelos.Conexion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class DashboardProfesorController {
    
      private JdbcTemplate jdbcTemplate;
      
        public DashboardProfesorController() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }

    
    @RequestMapping("dashboardProfesor.htm")
    public ModelAndView admin() {
        ModelAndView mav = new ModelAndView();
        String sql = "select * from personal";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos", datos);
        mav.setViewName("profesor/dashboardProfesor");
        return mav;
    }
 
}
