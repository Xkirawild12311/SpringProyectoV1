
package controller;

import javax.swing.JOptionPane;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


public class LoginErrorController {
    
      @RequestMapping(value = "/loginAdmin.htm?error", method = RequestMethod.GET)
    public String loginError(ModelMap model) {
        JOptionPane.showMessageDialog(null, "llego al error");
        model.addAttribute("error", "true");
        return "loginAdmin";

    }
}
