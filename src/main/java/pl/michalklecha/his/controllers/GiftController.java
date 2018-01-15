package pl.michalklecha.his.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.michalklecha.his.model.Gift;

import java.util.LinkedList;
import java.util.List;

@Controller
public class GiftController {

    @RequestMapping(path = "/gifts.html")
    public String gifts(Model model) {
        List<Gift> gifts = new LinkedList<>();

        gifts.add(new Gift("name", "descr", "link"));
        gifts.add(new Gift("name2", "descr", "link"));
        gifts.add(new Gift("name3", "descr", "link"));
        gifts.add(new Gift("name3", "descr", "link", true));

        model.addAttribute("gifts", gifts);

        return "gifts";
    }
}
