
package controller.adminCurso;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


public class AdminCursoController {
    
        private JdbcTemplate jdbcTemplate;

    public AdminCursoController() {
        Conexion conexion = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(conexion.conexion());
    }
    
      @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();              
        String sql = "SELECT * FROM curso";      
        List curso=this.jdbcTemplate.queryForList(sql);
        mav.addObject("curso", curso);        
        mav.setViewName("Admin/curso/adminCurso");
        System.out.println("Revisar: "+mav.toString());
        return mav;
    }
}
