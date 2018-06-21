import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestAnimal {

    Animal animal;

    @Before
    public void before(){
        animal = new Animal ("Fluffy", "Brown");
    }

    @Test
    public void animalHasName(){
        assertEquals("Fluffy", animal.getName());
    }

    @Test
    public void animalHasColour() {
        assertEquals("Brown", animal.getColour());
    }

    @Test
    public void animalCanEat(){
        assertEquals("Eating salmon", animal.eat("salmon"));
    }

    @Test
    public void animalCanBreathe() {
        assertEquals("sigh!", animal.breathe());
    }
}
