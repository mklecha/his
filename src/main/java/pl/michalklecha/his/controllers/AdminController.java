package pl.michalklecha.his.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @RequestMapping(path = "/admin.html")
    public String admin() {
        return "admin/admin";
    }
}
