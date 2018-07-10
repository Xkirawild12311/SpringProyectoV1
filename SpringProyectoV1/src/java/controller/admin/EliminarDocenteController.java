
package controller.admin;

import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class EliminarDocenteController {
     private JdbcTemplate jdbcTemplate;
    public EliminarDocenteController()
    {
        Conexion con=new Conexion();
        this.jdbcTemplate=new JdbcTemplate(con.conexion());
    }
    
     @RequestMapping("eliminarDocente.htm")
    public ModelAndView home(HttpServletRequest request) 
    {
        String idPersonal=request.getParameter("idPersonal");
        this.jdbcTemplate.update("delete from personal "+ "where "+ "idPersonal=? ", idPersonal);
        return new ModelAndView("redirect:/adminDocente.htm?cargoId=Profe");
    }
}
