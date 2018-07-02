package models;

import javax.persistence.*;

@Entity
@Table(name="golfers")
public class Golfer {

    private int id;
    private String firstName;
    private String lastName;
    private int age;

    public Golfer() {
    }

    public Golfer(String firstName, String lastName, int age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
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

    @Column(name="firstName")
    public String getFirstName() {
        return firstName;
    }

    @Column(name="lastName")
    public String getLastName() {
        return lastName;
    }

    @Column(name="age")
    public int getAge() {
        return age;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
