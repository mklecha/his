package pl.michalklecha.his;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import pl.michalklecha.his.controller.*;

import static org.junit.Assert.assertNotNull;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HisApplicationTests {

    @Autowired
    private AdminController adminController;
    @Autowired
    private ExceptionController exceptionController;
    @Autowired
    private GiftController giftController;
    @Autowired
    private InvitationController invitationController;
    @Autowired
    private PageController pageController;

    @Test
    public void adminLoads() {
        assertNotNull(adminController);
    }

    @Test
    public void exceptionLoads() {
        assertNotNull(exceptionController);
    }

    @Test
    public void giftLoads() {
        assertNotNull(giftController);
    }

    @Test
    public void invitationLoads() {
        assertNotNull(invitationController);
    }

    @Test
    public void pageLoads() {
        assertNotNull(pageController);
    }


}
