package pl.michalklecha.his.auth.selenium;


import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.TimeUnit;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.fail;


@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class AuthorizedPageTest {
    private WebDriver driver;

    private static final String ADMIN_PASSWORD = "1";
    private static final String GUEST_PASSWORD = "a";


    @LocalServerPort
    private int port;

    @BeforeClass
    public static void setUpClass() throws Exception {
        System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\SeleniumDrivers\\chromedriver.exe");
    }

    @Before
    public void setUp() {
        driver = new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
        driver.get("localhost:" + port);
        Utils.logOut(driver);
        Utils.makeAllPageVisible(driver);
    }

    @Test
    public void loginGuest() {
        login(GUEST_PASSWORD);
        try {
            driver.findElement(By.linkText("WYLOGUJ"));
        } catch (Exception e) {
            fail(e.getMessage());
        }
    }

    @Test
    public void loginAdmin() {
        login(ADMIN_PASSWORD);
        try {
            driver.findElement(By.linkText("WYLOGUJ"));
        } catch (Exception e) {
            fail(e.getMessage());
        }
    }

    @Test
    public void guestCanAccessGiftsPage() {
        login(GUEST_PASSWORD);
        driver.get("localhost:" + port + "/gifts.html");
        WebElement title = driver.findElement(By.id("title"));
        WebDriverWait wait = new WebDriverWait(driver, 5);
        try {
            wait.until(ExpectedConditions.textToBePresentInElement(title, "LISTA PREZENTÓW"));
        } catch (TimeoutException e) {
            fail(e.getMessage());
        }
    }

    @Test
    public void guestCantAccessAdminPage() {
        login(GUEST_PASSWORD);
        driver.get("localhost:" + port + "/admin.html");
        Utils.makeAllPageVisible(driver);
        WebElement title = driver.findElement(By.tagName("h1"));
        WebDriverWait wait = new WebDriverWait(driver, 5);
        try {
            wait.until(ExpectedConditions.textToBePresentInElement(title, "POPSOWAŁO SIĘ :("));
        } catch (TimeoutException e) {
            fail(e.getMessage());
        }
    }

    @Test
    public void adminCanAccessAdminPage() {
        login(ADMIN_PASSWORD);
        driver.get("localhost:" + port + "/admin.html");
        assertThat(driver.findElement(By.id("gifts")).getText()).isEqualToIgnoringCase("prezenty");
    }

    @After
    public void tearUp() {
        driver.close();
    }

    private WebDriver login(String password) {
        driver.findElement(By.name("password")).click();
        driver.findElement(By.name("password")).clear();
        driver.findElement(By.name("password")).sendKeys(password);
        driver.findElement(By.id("login-form")).submit();
        return driver;
    }
}
