public class Chimpanzee extends Mammal{

    private String walk;

    public Chimpanzee(String name, String colour, String talk, String walk) {
        super(name, colour, talk);

        this.walk = walk;
    }

    public String walk() {
        return this.walk;
    }
}

