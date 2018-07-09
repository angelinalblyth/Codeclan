package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "musketeers")
public class Musketeer extends Gunner {

    private String hat;

    public Musketeer() {
    }

    public Musketeer(String firstName, String lastName, int age, Weapon weapon, Ship ship, int ammo, String hat) {
        super(firstName, lastName, age, weapon, ship, ammo);
        this.hat = hat;
    }

    public String getHat() {
        return hat;
    }

    public void setHat(String hat) {
        this.hat = hat;
    }
}
