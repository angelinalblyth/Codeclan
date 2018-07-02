import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestCDPlayer {

    CDPlayer cdplayer;

    @Before
    public void setUp() throws Exception {
        cdplayer = new CDPlayer(3, "Alba", "513/5451");
    }

    @Test
    public void getHowManyCDsCanbePlayed() {
        assertEquals((Integer)3, cdplayer.getCds());
    }

    @Test
    public void getMake() {
        assertEquals("Alba", cdplayer.getMake());
    }

    @Test
    public void getModel() {
        assertEquals("513/5451", cdplayer.getModel());
    }

    @Test
    public void cdPlayerCanPlay() {
        assertEquals("Now playing", cdplayer.play("Now playing"));
    }
}
