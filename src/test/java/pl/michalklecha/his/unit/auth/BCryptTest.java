package pl.michalklecha.his.unit.auth;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static org.assertj.core.api.Assertions.*;


public class BCryptTest {

    private static final int BCRYPT_STRENGTH = 4;
    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(BCRYPT_STRENGTH);

    @Test
    public void testEncodeA() {
        assertThat(encoder.matches("a", "$2a$04$5bDXD19RR94ofSDhG6jN8eMs5KOseL7JZw6uPpugn2nLEEFHDJHMm")).isTrue();
    }

    @Test
    public void testEncode1() {
        assertThat(encoder.matches("1", "$2a$04$PYz2.PkQOSVzQcwye0b5N.5GMl2TpKfknhmkjnOpVOn0nPyX6vPi6")).isTrue();
    }

    @Test
    public void testEncode() {
        String hash = encoder.encode("a");
        assertThat(encoder.matches("a", hash)).isTrue();
    }
}
