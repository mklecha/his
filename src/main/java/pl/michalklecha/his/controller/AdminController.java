package pl.michalklecha.his.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.michalklecha.his.domain.model.Gift;
import pl.michalklecha.his.domain.model.Invitation;
import pl.michalklecha.his.domain.repositories.GiftRepository;
import pl.michalklecha.his.domain.repositories.InvitationRepository;
import pl.michalklecha.his.exception.NotFoundException;
import pl.michalklecha.his.exception.WrongInvitationKeyException;

import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.regex.Pattern;

@Controller
public class AdminController {

    @Autowired
    InvitationRepository invitationRepository;
    @Autowired
    GiftRepository giftRepository;

    Pattern pattern = Pattern.compile("[a-zA-Z]+");

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

    @RequestMapping(path = "/add-gift.html")
    public String addGift(Model model, @RequestParam @NotNull String name, @RequestParam @NotNull String description, @RequestParam String link) {
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

    @RequestMapping(path = "/add-invitation.html")
    public String addInvitation(Model model, @RequestParam @NotNull String pageKey, @RequestParam @NotNull String message, @RequestParam(defaultValue = "false") Boolean plural) {
        if (!pattern.matcher(pageKey).matches() || invitationRepository.exists(pageKey)) {
            throw new WrongInvitationKeyException();
        }

        Invitation invitation = new Invitation(pageKey, message, plural);
        invitationRepository.save(invitation);

        return invitations(model);
    }


}