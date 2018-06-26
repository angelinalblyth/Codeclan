import device_management.Keyboard;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class KeyboardTest {

    Keyboard keyboard;

    @Before
    public void setUp() throws Exception {
        keyboard = new Keyboard("Wireless");
    }

    @Test
    public void getKeyboardType() {
        assertEquals("Wireless", keyboard.getType());
    }

    @Test
    public void keyboardHasInput(){
        assertEquals("typing: Hello World!", keyboard.sendData("Hello World!"));
    }
}
