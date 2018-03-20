package pl.michalklecha.his.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.michalklecha.his.domain.model.Gift;
import pl.michalklecha.his.domain.repositories.GiftRepository;
import pl.michalklecha.his.exception.GiftAlreadyReserved;
import pl.michalklecha.his.exception.NotFoundException;

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

    @RequestMapping(path = "/reserve-gift/{giftId}")
    public String reserveGift(Model model, @PathVariable Integer giftId) {
        Gift gift = giftRepository.findOne(giftId);
        if (gift == null) {
            throw new NotFoundException();
        }

        if (gift.isReserved()) {
            throw new GiftAlreadyReserved();
        }

        gift.setReserved(true);
        giftRepository.save(gift);

        model.addAttribute("gift", gift);
        return "gift";
    }
}
