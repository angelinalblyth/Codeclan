import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestStereo {

    Stereo stereo;

    @Before
    public void setUp() throws Exception {
        stereo = new Stereo("Samsung", "Samsung", "2234");
    }

    @Test
    public void getStereoMake() {
        assertEquals("Samsung", stereo.getName());
    }
}
