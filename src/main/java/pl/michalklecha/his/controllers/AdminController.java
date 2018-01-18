package pl.michalklecha.his.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @RequestMapping(path = "/admin.html")
    public String admin() {
        return "admin/admin";
    }

    @RequestMapping(path = "/manage-gifts.html")
    public String gifts(Model model) {
        return "admin/gifts";
    }

    @RequestMapping(path = "/manage-invitations.html")
    public String invitations(Model model) {
        return "admin/invitations";
    }
}
