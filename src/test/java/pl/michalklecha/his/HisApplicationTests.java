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
    public void adminControllerLoads() {
        assertNotNull(adminController);
    }

    @Test
    public void exceptionControllerLoads() {
        assertNotNull(exceptionController);
    }

    @Test
    public void giftControllerLoads() {
        assertNotNull(giftController);
    }

    @Test
    public void invitationControllerLoads() {
        assertNotNull(invitationController);
    }

    @Test
    public void pageControllerLoads() {
        assertNotNull(pageController);
    }


}
