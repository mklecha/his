package pl.michalklecha.his.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.michalklecha.his.domain.model.Gift;
import pl.michalklecha.his.domain.repositories.GiftRepository;

import java.util.LinkedList;
import java.util.List;

@Controller
public class GiftController {

    @Autowired
    GiftRepository giftRepository;

    @RequestMapping(path = "/gifts.html")
    public String gifts(Model model) {
        List<Gift> gifts = giftRepository.findAllByOrderByReserved();

        model.addAttribute("gifts", gifts);

        return "gifts";
    }
}
