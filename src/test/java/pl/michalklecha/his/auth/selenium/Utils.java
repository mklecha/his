package pl.michalklecha.his.auth.selenium;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

public class Utils {

    public static void makeAllPageVisible(WebDriver driver) {
        JavascriptExecutor jse = (JavascriptExecutor) driver;
        jse.executeScript("window.scrollBy(0, document.body.scrollHeight)", "");
    }

    public static void logOut(WebDriver driver) {
        driver.manage().deleteAllCookies();
        driver.navigate().refresh();
    }
}
