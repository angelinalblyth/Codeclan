import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestAirport {

    Airport airport;


    @Before
    public void Before(){
       airport = new Airport("Spain");
    }

    @Test
    public void airportHasLocation(){
        assertEquals("Spain", airport.getLocation());
    }

    @Test
    public void passengerLoungeStartsEmpty(){
        assertEquals(0, airport.getPassengerLounge());
    }
}