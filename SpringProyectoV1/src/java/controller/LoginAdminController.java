
package controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelos.Conexion;
import modelos.Padre;
import modelos.Personal;
import modelos.Usuarios;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("loginAdmin.htm")
public class LoginAdminController {
    
    private JdbcTemplate  jdbctemplate;
 
     @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        
               Conexion  con = new Conexion(); 
                this.jdbctemplate=new JdbcTemplate(con.conexion());
        ModelAndView mav=new ModelAndView();
        mav.setViewName("loginAdmin");
        mav.addObject("personal",new Personal());

        return mav;
    }
    
      @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("personal") Personal u,
                BindingResult result,
                SessionStatus status,
                HttpServletRequest request
        )
    {
        
        String correo=request.getParameter("correo");
        
        String password=request.getParameter("password");
        System.out.println("fajlfj"+correo);
        ModelAndView mav = new ModelAndView();

    String sql = "SELECT * FROM personal WHERE correo='" +correo+"' AND password ='" +password+"' ";
        
//    String sql2="select * from padre where nombre = nombre ";
       // List cout = this.jdbctemplate.queryForList(sql2);
        
      //  mav.addObject("cout",cout);
        int rowcount = this.jdbctemplate.queryForList(sql).size();
        if(rowcount==1){
        List datos = this.jdbctemplate.queryForList(sql);
        String data=String.valueOf(datos).substring(13,15);
        Personal per=new Personal();
        per.setCargoId(data);
        mav.addObject("datos",datos);
        mav.addObject("datos",rowcount);

        mav.setViewName("redirect:dashboardAdmin.htm");
             
            System.out.println(datos);

        }
        else {
            System.out.println("NO FUNCIONA");
        }
        
      return mav;
      
   
    }
     
}