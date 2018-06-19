import java.util.ArrayList;

public class Airport {

    private String location;
    private ArrayList<Person> passengerlounge;

    public Airport(String location){
        this.location = location;
        this.passengerlounge = new ArrayList<Person>();
    }

    public String getLocation() {
        return this.location;
    }

    public int getPassengerLounge() {
       return passengerlounge.size();
    }
}
