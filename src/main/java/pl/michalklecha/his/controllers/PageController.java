package pl.michalklecha.his.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping(path = "/")
    public String index() {
        return "index";
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
