
package controller.adminAuxiliar;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
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
@RequestMapping("modificarAuxiliar.htm")
public class ModificarAuxiliarController {
    
      PersonalValidaciones personalValidaciones;
    private JdbcTemplate jdbcTemplate;

    public ModificarAuxiliarController() {

      this.personalValidaciones = new PersonalValidaciones();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conexion());

    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        String idPersonal=request.getParameter("idPersonal");       
        Personal datos = this.selectPersonal(idPersonal);
        mav.setViewName("Admin/auxiliar/modificarAuxiliar");
        mav.addObject("personal", new Personal(idPersonal, datos.getCargoId(), datos.getNombre(), datos.getApellido(), datos.getDni(), datos.getSexo(), datos.getCorreo(), datos.getPassword(),datos.getFecNacimiento(), datos.getEstado(), datos.getEnabled()));
        return mav;
    }
    
     @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("personal") Personal u,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {
        this.personalValidaciones.validate(u, result);
        if (result.hasErrors()) {
            ModelAndView mav = new ModelAndView();
            String idPersonal=request.getParameter("idPersonal");  
            Personal datos = this.selectPersonal(idPersonal);
            mav.setViewName("Admin/auxiliar/modificarAuxiliar");
            mav.addObject("personal", new Personal(idPersonal, datos.getCargoId(), datos.getNombre(), datos.getApellido(), datos.getDni(), datos.getSexo(), datos.getCorreo(), datos.getPassword(),datos.getFecNacimiento(), datos.getEstado(), datos.getEnabled()));
            return mav;
        } else {
           String idPersonal=request.getParameter("idPersonal"); 
            this.jdbcTemplate.update(
                    "update personal "
                    + "set cargoId=?,"
                    + "nombre=?,"
                    + "apellido=?,"
                    + "dni=?," 
                    + "sexo=?,"    
                    + "correo=?,"
                    + "password=?,"       
                    + "fecNacimiento=?,"
                    + "estado=?,"
                    + "enabled=? "
                    + "where "
                    + "idPersonal=? ",
                    u.getCargoId(),u.getNombre(),u.getApellido(), u.getDni(), u.getSexo(), u.getCorreo(), u.getPassword(),u.getFecNacimiento(), u.getEstado(),"0", idPersonal);
            return new ModelAndView("redirect:/adminAuxiliar.htm?cargoId=Auxil");
        }

    }
    public Personal selectPersonal(String idPersonal) {
        final Personal user = new Personal();
        String quer = "SELECT * FROM personal WHERE idPersonal='" + idPersonal + "'";
        return (Personal) jdbcTemplate.query(
                quer, new ResultSetExtractor<Personal>() {
            public Personal extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    user.setCargoId(rs.getString("cargoId"));
                    user.setNombre(rs.getString("nombre"));
                    user.setApellido(rs.getString("apellido"));
                    user.setDni(rs.getInt("dni"));
                    user.setSexo(rs.getString("sexo"));                   
                    user.setCorreo(rs.getString("correo"));
                    user.setPassword(rs.getString("password"));
                    user.setFecNacimiento(rs.getString("fecNacimiento"));
                    user.setEstado(rs.getString("estado"));
                    user.setEstado(rs.getString("enabled"));
                    
                }
                return user;
            }

        }
        );
    }
    
}
