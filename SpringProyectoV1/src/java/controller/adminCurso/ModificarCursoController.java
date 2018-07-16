
package controller.adminCurso;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import modelos.Curso;
import modelos.Personal;
import modelos.PersonalValidaciones;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("modificarCurso.htm")
public class ModificarCursoController {
    
         //PersonalValidaciones personalValidaciones;
    private JdbcTemplate jdbcTemplate;

    public ModificarCursoController() {

      //this.personalValidaciones = new PersonalValidaciones();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conexion());

    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        String idCurso=request.getParameter("idCurso");       
        Curso datos = this.selectCurso(idCurso);
        mav.setViewName("Admin/curso/modificarCurso");
        mav.addObject("curso", new Curso(idCurso,datos.getAsignatura()));
        return mav;
    }
    
     @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("curso") Curso u,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {
       // this.articuloValidaciones.validate(u, result);
        if (result.hasErrors()) {
            ModelAndView mav = new ModelAndView();
            String idCurso = request.getParameter("idCurso");
            Curso datos = this.selectCurso(idCurso);
            mav.setViewName("Admin/curso/modificarCurso");
            mav.addObject("curso", new Curso(idCurso, datos.getAsignatura()));
            return mav;
        } else {
            String idCurso = request.getParameter("idCurso");
            this.jdbcTemplate.update(
                    "update curso "                                   
                    + "asignatura=? "
                    + "where "
                    + "idCurso=? ",
                    u.getAsignatura(), idCurso);
            return new ModelAndView("redirect:/adminCurso.htm");
        }

    }
     public Curso selectCurso(String idCurso) {
        final Curso user = new Curso();
        String quer = "SELECT * FROM curso WHERE idCurso='" + idCurso+ "'";
        return (Curso) jdbcTemplate.query(
                quer, new ResultSetExtractor<Curso>() {
            public Curso extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {                 
                    user.setAsignatura(rs.getString("asignatura"));
                  
                    
                }
                return user;
            }

        }
        );
    }
}
