
package controller;

import modelos.Usuarios;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("loginPadre.htm")
public class LoginPadreController {        
 
     @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("loginPadre");
        mav.addObject("usuarios",new Usuarios());
        return mav;
    }
      @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("usuarios") Usuarios u,
                BindingResult result,
                SessionStatus status
        )
    {
      return new ModelAndView("redirect:dashboardPadre.htm");
    }
}

