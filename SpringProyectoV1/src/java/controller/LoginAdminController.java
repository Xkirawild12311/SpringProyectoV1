
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginAdminController {
    
    @RequestMapping("loginAdmin.htm")
    public ModelAndView loginAdmin(){
    ModelAndView mav = new ModelAndView();
    mav.setViewName("loginAdmin");
    return mav;
    }
}
