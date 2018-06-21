import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestMammal {

    Mammal mammal;

    @Before
    public void setUp() throws Exception {
        mammal = new Mammal("Sootie", "Black", "Meow");
    }

    @Test
    public void mammalHasName() {
        assertEquals("Sootie", mammal.getName());
    }

    @Test
    public void mammalHasColour() {
        assertEquals("Black", mammal.getColour());
    }

    @Test
    public void mammalHasTalk(){
        assertEquals("Meow", mammal.talk());
    }
}
