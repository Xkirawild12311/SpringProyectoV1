package controller;

import java.security.Principal;
import javax.swing.JOptionPane;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {
    
    @RequestMapping("dashboardPadre.htm")
    public ModelAndView dashboard(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("dashboard/dashboardPadre");
        return mav;
    }
}
