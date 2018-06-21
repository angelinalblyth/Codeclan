public class Human extends Mammal{

    private String walk;

    public Human(String name, String colour, String talk, String walk) {
        super(name, colour, talk);

        this.walk = walk;
    }

    public String walk() {
        return this.walk;
    }
}
