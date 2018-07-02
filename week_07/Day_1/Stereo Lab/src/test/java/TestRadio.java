import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestRadio {

    Radio radio;


    @Before
    public void setUp() throws Exception {
        radio = new Radio("Channel 1");
    }

    @Test
    public void getChannel() {
        assertEquals("Channel 1", radio.getChannel());
    }


}
