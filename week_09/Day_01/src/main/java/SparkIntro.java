import static spark.Spark.get;

public class SparkIntro {

    public static void main(String[] args) {
        get("/hello", (req, res) -> {return "Hello World!";});
    }
}
