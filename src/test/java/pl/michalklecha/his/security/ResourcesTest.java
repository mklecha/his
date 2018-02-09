package pl.michalklecha.his.security;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import pl.michalklecha.his.domain.repositories.InvitationRepository;

import java.util.HashMap;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class ResourcesTest {

    @Autowired
    private MockMvc mockMvc;

    private HashMap directories = new HashMap<String, String>();

    {
        directories.put("css", "my-style.css");
        directories.put("js", "main.js");
        directories.put("img", "favicon.ico");
        directories.put("webjars", "bootstrap/3.3.7/css/bootstrap.min.css");
    }


    @Test
    public void cssDirectoryAccessible() throws Exception {
        String key = "css";
        String url = "/" + key + "/" + directories.get(key);
        this.mockMvc.perform(get(url)).andExpect(status().isOk());
    }

    @Test
    public void jsDirectoryAccessible() throws Exception {
        String key = "js";
        String url = "/" + key + "/" + directories.get(key);
        this.mockMvc.perform(get(url)).andExpect(status().isOk());
    }

    @Test
    public void imgDirectoryAccessible() throws Exception {
        String key = "img";
        String url = "/" + key + "/" + directories.get(key);
        this.mockMvc.perform(get(url)).andExpect(status().isOk());
    }

    @Test
    public void webjarsDirectoryAccessible() throws Exception {
        String key = "webjars";
        String url = "/" + key + "/" + directories.get(key);
        this.mockMvc.perform(get(url)).andExpect(status().isOk());
    }
}
