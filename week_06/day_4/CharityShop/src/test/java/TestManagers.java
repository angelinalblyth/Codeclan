import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestManagers {

    Manager manager;

    @Before
    public void setUp() throws Exception {
       manager = new Manager ("Matt");
    }

    @Test
    public void startsWithZeroMoney() {
        assertEquals(0, manager.getBalance());
    }

    @Test
    public void canGetPaid() {
        manager.pay(1500);
        assertEquals(1500, manager.getBalance());
    }
}
