public class Mammal extends Animal {

    private String talk;

    public Mammal(String name, String colour, String talk) {
        super(name, colour);

        this.talk = talk;
    }

    public String talk() {
        return this.talk;
    }
}
