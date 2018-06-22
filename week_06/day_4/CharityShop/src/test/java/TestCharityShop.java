import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestCharityShop {

    Volunteer volunteer1;
    Manager manager1;
    CharityShop charityShop;

    @Before
    public void setUp() throws Exception {

        volunteer1 = new Volunteer ("Tara");
        manager1 = new Manager("Matt");

        charityShop = new CharityShop();
    }

    @Test
    public void testCanAddEmployee() {
        charityShop.addEmployee(volunteer1);
        assertEquals(1, charityShop.staffCount());
    }

    @Test
    public void canAddManagerAndVolunteers() {
        charityShop.addEmployee(manager1);
        charityShop.addEmployee(volunteer1);
        assertEquals(2, charityShop.staffCount());
    }

    @Test
    public void canPayStaff() {
        charityShop.addEmployee(manager1);
        charityShop.addEmployee(volunteer1);
        charityShop.payStaff();
        assertEquals(1500, manager1.getBalance());
    }
}
