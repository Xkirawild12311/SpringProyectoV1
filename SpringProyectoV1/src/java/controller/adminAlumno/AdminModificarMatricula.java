/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.adminAlumno;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Alumno;
import modelos.Conexion;
import modelos.Matricula;
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
@RequestMapping("modificarMatricula.htm")
public class AdminModificarMatricula {
    
         //PersonalValidaciones personalValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AdminModificarMatricula() {

      //this.personalValidaciones = new PersonalValidaciones();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conexion());

    }
    
      @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        String idMatricula=request.getParameter("idMatricula");       
        Matricula datos = this.selectMatricula(idMatricula);       
        mav.setViewName("Admin/alumno/año1/modificarMatricula");
        mav.addObject("matricula", new Matricula(idMatricula, datos.getFecMatricula(), datos.getPadre_idPadre(), datos.getAlumno_idAlumno(), datos.getNivel_idNivel()));
        return mav;
    }
    
      @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("Matricula") Matricula u,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {
        //this.personalValidaciones.validate(u, result);
        if (result.hasErrors()) {
            ModelAndView mav = new ModelAndView();
            String idMatricula=request.getParameter("idMatricula");  
            Matricula datos = this.selectMatricula(idMatricula);
            mav.setViewName("Admin/alumno/año1/modificarMatricula");
            mav.addObject("matricula", new Matricula(idMatricula, datos.getFecMatricula(), datos.getPadre_idPadre(), datos.getAlumno_idAlumno(), datos.getNivel_idNivel()));
            return mav;
        } else {
           String idMatricula=request.getParameter("idMatricula"); 
            this.jdbcTemplate.update(
                    "update matricula "
                    + "set fecMatricula=?,"                
                    + "Padre_idPadre=?,"
                    + "alumno_idAlumno=?,"                          
                    + "nivel_idNivel=? "
                    + "where "
                    + "idMatricula=? ",
                    u.getFecMatricula(),u.getPadre_idPadre(),u.getAlumno_idAlumno(), u.getNivel_idNivel(), idMatricula);
            return new ModelAndView("redirect:/adminAlumno.htm");
        }

    }
    
     public Matricula selectMatricula(String idMatricula) {
        final Matricula user = new Matricula();
        String quer = "SELECT * FROM matricula WHERE idMatricula='" + idMatricula + "'";
        return (Matricula) jdbcTemplate.query(
                quer, new ResultSetExtractor<Matricula>() {
            public Matricula extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    user.setFecMatricula(rs.getString("fecMatricula"));
                    user.setPadre_idPadre(rs.getString("Padre_idPadre"));                    
                    user.setAlumno_idAlumno(rs.getString("alumno_idAlumno"));
                    user.setNivel_idNivel(rs.getString("nivel_idNivel"));        
               
                    
                }
                return user;
            }

        }
        );
    }
}
