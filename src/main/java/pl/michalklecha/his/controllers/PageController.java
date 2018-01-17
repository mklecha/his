package pl.michalklecha.his.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping(path = "/")
    public String login(Model model, String login, String error, String logout) {
        if (login != null) {
            model.addAttribute("login", "");
        }
        if (error != null) {
            model.addAttribute("error", "");
        }
        if (logout != null) {
            model.addAttribute("logout", "true");
        }
        return "index";
    }

    @RequestMapping(path = "/login")
    public String login(Model model){
        return login(model, "", null, null);
    }

    @RequestMapping(path = "/wedding.html")
    public String wedding() {
        return "wedding";
    }

    @RequestMapping(path = "/contact.html")
    public String contact() {
        return "contact";
    }

    @RequestMapping(path = "/reception.html")
    public String reception() {
        return "reception";
    }
}
