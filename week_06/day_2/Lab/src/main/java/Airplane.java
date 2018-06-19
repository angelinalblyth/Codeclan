import java.util.ArrayList;

public class Airplane {

    private String destination;
    private int capacity;
    private ArrayList<Person> person;

    public Airplane(String destination, int capacity){
        this.destination = destination;
        this.capacity = capacity;
        this.person = new ArrayList<Person>();
    }

    public String getDestinaton() {
        return this.destination;
    }

    public int getCapacity() {
        return capacity;
    }

    public int passengerCount() {
        return person.size();
    }

    public void addPassenger(Person person){
        if (this.person.size() < this.capacity){
        this.person.add(person);
        }
    }

    public void deplane(Person person) {
         this.person.remove(person);
    }
}
