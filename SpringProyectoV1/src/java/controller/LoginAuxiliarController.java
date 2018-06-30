package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginAuxiliarController {

    @RequestMapping("loginAuxiliar.htm")
    public ModelAndView loginAuxiliar() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("loginAuxiliar");
        return mav;
    }
}
