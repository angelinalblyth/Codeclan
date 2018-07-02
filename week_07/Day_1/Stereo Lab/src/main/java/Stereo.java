public class Stereo extends Component {

    private String make;
    private String model;
    private String name;

    public Stereo(String name, String make, String model) {
        super(make, model);
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
