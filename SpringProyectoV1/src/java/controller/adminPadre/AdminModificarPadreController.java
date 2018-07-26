
package controller.adminPadre;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import modelos.Padre;
import modelos.PadreValidaciones;
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
@RequestMapping("modificarPadre.htm")
public class AdminModificarPadreController {
    
   PadreValidaciones padreValidaciones;
    private JdbcTemplate jdbcTemplate;

    public AdminModificarPadreController() {

       this.padreValidaciones = new PadreValidaciones();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conexion());

    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        String idPadre=request.getParameter("idPadre");       
        Padre datos = this.selectPadre(idPadre);
        mav.setViewName("Admin/padre/modificarPadre");
        mav.addObject("padre", new Padre(idPadre, datos.getNombre(), datos.getApellido(), datos.getDni(), datos.getSexo(), datos.getCorreo(), datos.getPassword(),datos.getFecNacimiento()));
        return mav;
    }
    
    
     @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("padre") Padre u,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {
        this.padreValidaciones.validate(u, result);
        if (result.hasErrors()) {
            ModelAndView mav = new ModelAndView();
            String idPadre=request.getParameter("idPadre");  
            Padre datos = this.selectPadre(idPadre);
            mav.setViewName("Admin/padre/modificarPadre");
            mav.addObject("padre", new Padre(idPadre, datos.getNombre(), datos.getApellido(), datos.getDni(), datos.getSexo(), datos.getCorreo(), datos.getPassword(),datos.getFecNacimiento()));
            return mav;
        } else {
           String idPadre=request.getParameter("idPadre"); 
            this.jdbcTemplate.update(
                    "update padre "
                    + "set nombre=?,"                  
                    + "apellido=?,"
                    + "dni=?," 
                    + "sexo=?,"    
                    + "correo=?,"
                    + "password=?,"       
                    + "fecNacimiento=?"               
                    + "where "
                    + "idPadre=? ",
                    u.getNombre(),u.getApellido(), u.getDni(), u.getSexo(), u.getCorreo(), u.getPassword(),u.getFecNacimiento(), idPadre);
            return new ModelAndView("redirect:/adminPadre.htm?cargoId=Padre");
        }

    }
    public Padre selectPadre(String idPadre) {
        final Padre user = new Padre();
        String quer = "SELECT * FROM padre WHERE idPadre='" + idPadre + "'";
        return (Padre) jdbcTemplate.query(
                quer, new ResultSetExtractor<Padre>() {
            public Padre extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {                   
                    user.setNombre(rs.getString("nombre"));
                    user.setApellido(rs.getString("apellido"));
                    user.setDni(rs.getInt("dni"));
                    user.setSexo(rs.getString("sexo"));                   
                    user.setCorreo(rs.getString("correo"));
                    user.setPassword(rs.getString("password"));
                    user.setFecNacimiento(rs.getString("fecNacimiento"));                   
                    
                }
                return user;
            }

        }
        );
    }
}
