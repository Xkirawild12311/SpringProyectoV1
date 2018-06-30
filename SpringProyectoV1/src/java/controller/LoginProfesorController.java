package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginProfesorController {

    @RequestMapping("loginProfesor.htm")
    public ModelAndView loginProfesor() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("loginProfesor");
        return mav;
    }
}
