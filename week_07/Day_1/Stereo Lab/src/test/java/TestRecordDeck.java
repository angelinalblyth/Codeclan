import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestRecordDeck {

    RecordDeck recorddeck;

    @Before
    public void setUp() throws Exception {
        recorddeck = new RecordDeck(45, "Audio Technology", "AT-LP60BT");
    }

    @Test
    public void getPlaySpeed() {
        assertEquals((Integer)45, recorddeck.getSpeed());
    }

    @Test
    public void getMake() {
        assertEquals("Audio Technology", recorddeck.getMake());
    }

    @Test
    public void getModel() {
        assertEquals("AT-LP60BT", recorddeck.getModel());
    }
}
