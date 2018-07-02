public class RecordDeck extends Component{

    private Integer speed;
    private String model;
    private String make;

    public RecordDeck(Integer speed, String make, String model) {
        super(make, model);
        this.speed = speed;
    }

    public Integer getSpeed() {
        return speed;
    }
}
