package pl.michalklecha.his.unit;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static junit.framework.TestCase.assertTrue;

public class BCryptTest {

    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);

    @Test
    public void testEncodeA() {
        assertTrue(encoder.matches("a", "$2a$04$5bDXD19RR94ofSDhG6jN8eMs5KOseL7JZw6uPpugn2nLEEFHDJHMm"));
    }

    @Test
    public void testEncode1() {
        assertTrue(encoder.matches("1", "$2a$04$PYz2.PkQOSVzQcwye0b5N.5GMl2TpKfknhmkjnOpVOn0nPyX6vPi6"));
    }

    @Test
    public void testEncode() {
        String hash = encoder.encode("a");
        assertTrue(encoder.matches("a", hash));
    }
}
