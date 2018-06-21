public class Animal {

    private String name;
    private String colour;

    public Animal(String name, String colour) {
        this.name = name;
        this.colour = colour;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColour() {
        return this.colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public String eat(String food) {
        return "Eating " + food;
    }

    public String breathe() {
        return "sigh!";
    }
}
