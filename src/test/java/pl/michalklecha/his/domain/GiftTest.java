package pl.michalklecha.his.domain;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;
import pl.michalklecha.his.domain.model.Gift;
import pl.michalklecha.his.domain.repositories.GiftRepository;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@DataJpaTest
public class GiftTest {
    @Autowired
    private GiftRepository giftRepository;

    @Before


    @Test
    public void isEmpty() {
        List<Gift> gifts = giftRepository.findAll();
        assertThat(gifts).isEmpty();
    }

    @Test
    public void saveAndFetchInvitation() {
        Gift gift = new Gift("giftName", "giftDescr", "giftLink");
        giftRepository.save(gift);

        Gift fetchedGift = giftRepository.findOne(gift.getId());

        assertThat(fetchedGift).isNotNull();
    }
}
