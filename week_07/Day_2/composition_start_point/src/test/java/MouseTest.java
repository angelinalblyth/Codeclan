import device_management.Mouse;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class MouseTest {

    Mouse mouse;

    @Before
    public void setUp() throws Exception {
        mouse = new Mouse("Wired", 3);
    }

    @Test
    public void getType() {
        assertEquals("Wired", mouse.getType());
    }

    @Test
    public void getHowManyButtons() {
        assertEquals(3, mouse.getButtons());
    }

    @Test
    public void mouseHasInput(){
        assertEquals("mouse: right clicked", mouse.sendData("right clicked"));
    }
}
