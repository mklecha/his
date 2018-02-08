package pl.michalklecha.his.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptionController {

    @RequestMapping(path = "/error-404")
    public String error() {
        return "error";
    }
}
