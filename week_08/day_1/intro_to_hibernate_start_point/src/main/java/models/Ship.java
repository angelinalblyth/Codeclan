package models;



import javax.persistence.*;


@Entity
@Table(name= "ships")

public class Ship {

    private int id;
    private String shipName;

    public Ship(){

    }

    public Ship(String shipName) {
        this.shipName = shipName;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name="shipName")
    public String getShipName() {
        return shipName;
    }

    public void setShipName(String shipName) {
        this.shipName = shipName;
    }
}
