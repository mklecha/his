package pl.michalklecha.his.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.michalklecha.his.domain.model.Invitation;
import pl.michalklecha.his.domain.repositories.InvitationRepository;
import pl.michalklecha.his.exceptions.NotFoundException;

@Controller
public class InvitationController {

    @Autowired
    InvitationRepository invitationRepository;

    @RequestMapping(path = "/invitation-{key}.html")
    public String invitation(Model model, @PathVariable String key) {
        Invitation invitation = invitationRepository.findOne(key);
        if (invitation == null) {
            throw new NotFoundException();
        }
        model.addAttribute("invitation", invitation);
        return "invitation";
    }
}
