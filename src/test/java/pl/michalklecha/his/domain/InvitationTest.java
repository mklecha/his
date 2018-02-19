package pl.michalklecha.his.domain;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;
import pl.michalklecha.his.domain.model.Invitation;
import pl.michalklecha.his.domain.repositories.InvitationRepository;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@DataJpaTest
public class InvitationTest {

    @Autowired
    private InvitationRepository invitationRepository;

    @Before
    public void setUp(){
        invitationRepository.deleteAll();
    }

    @Test
    public void isEmpty() {
        List<Invitation> invitations = invitationRepository.findAll();
        assertThat(invitations).isEmpty();
    }

    @Test
    public void saveAndFetchInvitation() {
        Invitation invitation = new Invitation("key", "message", false);
        invitationRepository.save(invitation);

        Invitation fetchedInvitation = invitationRepository.findOne(invitation.getPageKey());

        assertThat(fetchedInvitation).isNotNull();
    }
}
