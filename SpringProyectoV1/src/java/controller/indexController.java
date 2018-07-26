/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.security.Principal;
import javax.swing.JOptionPane;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class indexController {
    
        @RequestMapping("/index.htm")
    public ModelAndView hello(ModelMap model, Principal principal) {
        JOptionPane.showMessageDialog(null, "llego al index");
        String loggedInUserName = principal.getName();
        
        return new ModelAndView("index", "correo", loggedInUserName);
    }
}
