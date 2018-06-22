import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestHuman {

    Human human;

    @Before
    public void setUp() throws Exception {
        human = new Human("Angie", "Purple", "Hello!", "Walks like a Badass");
    }

    @Test
    public void humanHasName() {
        assertEquals("Angie", human.getName());
    }

    @Test
    public void humanCanTalk() {
        assertEquals("Hello!", human.talk());
    }

    @Test
    public void humanCanWalk() {
        assertEquals("Walks like a Badass", human.walk());
    }

    @Test
    public void humanCanEat(){
        assertEquals("Nom nom nom", human.eat());
    }
}
