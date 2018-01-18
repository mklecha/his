package pl.michalklecha.his.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.michalklecha.his.domain.model.Gift;
import pl.michalklecha.his.domain.model.Invitation;
import pl.michalklecha.his.domain.repositories.GiftRepository;
import pl.michalklecha.his.domain.repositories.InvitationRepository;
import pl.michalklecha.his.exceptions.NotFoundException;

import javax.validation.constraints.NotNull;
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

    @RequestMapping(path = "/manage-gifts.html/{giftId}/delete")
    public String deleteGift(Model model, @PathVariable Integer giftId) {
        giftRepository.delete(giftId);

        return gifts(model);
    }

    @RequestMapping(path = "/manage-gifts.html/{giftId}/changeReservation")
    public String changeGift(Model model, @PathVariable Integer giftId) {
        Gift gift = giftRepository.findOne(giftId);
        if (gift == null) {
            throw new NotFoundException();
        }

        gift.changeReservation();
        giftRepository.save(gift);

       return gifts(model);
    }

    @RequestMapping(path = "/add-gifts.html")
    public String addGift(Model model, @RequestParam @NotNull String name, @RequestParam @NotNull String description, @RequestParam String link){
        Gift gift = new Gift(name, description, link);
        giftRepository.save(gift);

        return gifts(model);
    }

    @RequestMapping(path = "/manage-invitations.html")
    public String invitations(Model model) {
        List<Invitation> invitations = invitationRepository.findAll();
        model.addAttribute("invitations", invitations);
        return "admin/invitations";
    }

    @RequestMapping(path = "/manage-invitations.html/{invitationKey}/delete")
    public String deleteInvitation(Model model, @PathVariable String invitationKey) {
        invitationRepository.delete(invitationKey);

        return invitations(model);
    }

}