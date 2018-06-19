import org.junit.Before;
import org.junit.Test;

import javax.print.attribute.standard.Destination;

import static org.junit.Assert.assertEquals;

public class TestAirplane {

     Airplane airplane;
     Person person;


    @Before
    public void before(){
        airplane = new Airplane("Spain", 3);
    }

    @Test
    public void airplaneHasDestination(){
        assertEquals("Spain", airplane.getDestinaton());
    }

    @Test
    public void airplaneHasCapacity(){
        assertEquals(3, airplane.getCapacity());
    }

    @Test
    public  void airplaneHasNoPassengers(){
        assertEquals(0, airplane.passengerCount());
    }

    @Test
    public void airplaneHasPassenger(){
        airplane.addPassenger(person);
        assertEquals(1, airplane.passengerCount());
    }

    @Test
    public void airplaneHasReachCapacity(){
        airplane.addPassenger(person);
        airplane.addPassenger(person);
        airplane.addPassenger(person);
        airplane.addPassenger(person);
        assertEquals(3, airplane.getCapacity());
    }

    @Test
    public void airplaneDeplane(){
        airplane.addPassenger(person);
        airplane.addPassenger(person);
        airplane.addPassenger(person);
        airplane.deplane();
        assertEquals(0, airplane.passengerCount());
    }

}
