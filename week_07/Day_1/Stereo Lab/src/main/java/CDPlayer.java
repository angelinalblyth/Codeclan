public class CDPlayer extends Component implements IPlay {

    private Integer noOfCDs;
    private String make;
    private String model;

    public CDPlayer(Integer noOfCDs, String make, String model) {
        super(make, model);
        this.noOfCDs = noOfCDs;

    }

    public Integer getCds() {
        return noOfCDs;
    }

    public String play(String play){
        return play;
    }
}

