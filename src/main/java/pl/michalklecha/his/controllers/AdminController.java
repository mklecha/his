package pl.michalklecha.his.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.michalklecha.his.domain.model.Gift;
import pl.michalklecha.his.domain.model.Invitation;
import pl.michalklecha.his.domain.repositories.GiftRepository;
import pl.michalklecha.his.domain.repositories.InvitationRepository;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    InvitationRepository invitationRepository;
    @Autowired
    GiftRepository giftRepository;

    @RequestMapping(path = "/admin.html")
    public String admin() {
        return "admin/admin";
    }

    @RequestMapping(path = "/manage-gifts.html")
    public String gifts(Model model) {
        List<Gift> gifts = giftRepository.findAll();
        model.addAttribute("gifts", gifts);
        return "admin/gifts";
    }

    @RequestMapping(path = "/manage-invitations.html")
    public String invitations(Model model) {
        List<Invitation> invitations = invitationRepository.findAll();
        model.addAttribute("invitations", invitations);
        return "admin/invitations";
    }
}