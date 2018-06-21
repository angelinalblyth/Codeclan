import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestChimpanzee {

    Chimpanzee chimpanzee;

    @Before
    public void setUp() throws Exception {
        chimpanzee = new Chimpanzee ("George", "Orange", "ooh-ooh-ooh-eee-eee", "Swings from trees");
    }

    @Test
    public void chimpanzeeHasName() {
        assertEquals("George", chimpanzee.getName());
    }

    @Test
    public void chimpanzeeCanWalk() {
        assertEquals("Swings from trees", chimpanzee.walk());
    }
}
