package pl.michalklecha.his.auth;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Arrays;
import java.util.List;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class AuthorizedPageTest {
    @Autowired
    private MockMvc mockMvc;

    private List<String> authorizedPages = Arrays.asList("reception.html", "gifts.html");

    @Test
    public void receptionPageAccessible() throws Exception {
        String url = "/" + authorizedPages.get(0);
        this.mockMvc.perform(get(url)).andExpect(status().is3xxRedirection());
    }

    @Test
    public void giftsPageAccessible() throws Exception {
        String url = "/" + authorizedPages.get(1);
        this.mockMvc.perform(get(url)).andExpect(status().is3xxRedirection());
    }
}
