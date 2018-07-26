
package controller.adminAlumno;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Alumno;
import modelos.AlumnoValidaciones;
import modelos.Conexion;
import modelos.ModfAlumnoValidaciones;
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
@RequestMapping("modificarAlumno.htm")
public class AdminModificarAlumnoController {
      
    ModfAlumnoValidaciones modfAlumnoValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AdminModificarAlumnoController() {

     this.modfAlumnoValidaciones = new ModfAlumnoValidaciones();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conexion());

    }
    
     @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        String idAlumno=request.getParameter("idAlumno");       
        Alumno datos = this.selectAlumno(idAlumno);
        String sql = "SELECT * FROM nivel";       
        String sql2 = "SELECT * FROM padre";
        List nivel=this.jdbcTemplate.queryForList(sql);
        List nivel2=this.jdbcTemplate.queryForList(sql2);
      
        mav.addObject("nivel", nivel); 
        mav.addObject("nivel2", nivel2);
  
        mav.setViewName("Admin/alumno/modificarAlumno");
        mav.addObject("alumno", new Alumno(idAlumno, datos.getNombre(), datos.getApellido(), datos.getDni(), datos.getSexo(),datos.getFecNacimiento(), datos.getEstado(), datos.getPadre_idPadre1(), datos.getNivel_idNivel()));
        return mav;
    }
    
     @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("Alumno") Alumno u,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {
       this.modfAlumnoValidaciones.validate(u, result);
        if (result.hasErrors()) {
            ModelAndView mav = new ModelAndView();
            String idAlumno=request.getParameter("idAlumno");  
            Alumno datos = this.selectAlumno(idAlumno);
            mav.setViewName("Admin/alumno/modificarAlumno");
            mav.addObject("alumno", new Alumno(idAlumno, datos.getNombre(), datos.getApellido(), datos.getDni(), datos.getSexo(),datos.getFecNacimiento(), datos.getEstado(), datos.getPadre_idPadre1(), datos.getNivel_idNivel()));
            return mav;
        } else {      
           String idAlumno=request.getParameter("idAlumno"); 
            this.jdbcTemplate.update(
                    "update alumno "
                    + "set nombre=?,"                
                    + "apellido=?,"
                    + "dni=?," 
                    + "sexo=?,"                     
                    + "fecNacimiento=?,"  
                    + "estado=?," 
                    + "Padre_idPadre1=?,"            
                    + "nivel_idNivel=? "
                    + "where "
                    + "idAlumno=? ",
                    u.getNombre(),u.getApellido(),u.getDni(), u.getSexo(),u.getFecNacimiento(), u.getEstado(), u.getPadre_idPadre1(), u.getNivel_idNivel(), idAlumno);
            return new ModelAndView("redirect:/adminAlumno.htm");
        }

    }
    
     public Alumno selectAlumno(String idAlumno) {
        final Alumno user = new Alumno();
        String quer = "SELECT * FROM alumno WHERE idAlumno='" + idAlumno + "'";
        return (Alumno) jdbcTemplate.query(
                quer, new ResultSetExtractor<Alumno>() {
            public Alumno extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    user.setNombre(rs.getString("nombre"));
                    user.setApellido(rs.getString("dni"));
                    user.setDni(rs.getInt("dni"));
                    user.setSexo(rs.getString("sexo"));
                    user.setFecNacimiento(rs.getString("fecNacimiento"));
                    user.setEstado(rs.getString("estado"));
                    user.setPadre_idPadre1(rs.getString("Padre_idPadre1"));
                    user.setNivel_idNivel(rs.getString("nivel_idNivel"));
               
                    
                }
                return user;
            }

        }
        );
    }
}
