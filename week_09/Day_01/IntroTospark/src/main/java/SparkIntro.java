import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import static spark.Spark.get;

public class SparkIntro {

    public static void main(String[] args) {

        ArrayList<String> names = new ArrayList<>();
        names.add("Colin");
        names.add("Louise");
        names.add("Steve");
        names.add("John");

        get("/hello", (req, res) -> {return "Hello World!";});

        get("/random", (req, res) -> {

            Collections.shuffle(names);

            return names.get(0);
        });

        get("/hello/:name", (req, res) -> {
           return "Hello " + req.params(":name");
        });

        get("/bestpals/:number", (req, res) -> {
           int index = Integer.parseInt(req.params(":number"));
           return names.get(index);
        });

        get("/add/:num1/:num2", (req, res) -> {
            int num1 = Integer.parseInt(req.params(":num1"));
            int num2 = Integer.parseInt(req.params(":num2"));
            return  num1 + num2;
        });

        get("/subtract/:num1/:num2", (req,res) -> {
            int num1 = Integer.parseInt(req.params(":num1"));
            int num2 = Integer.parseInt(req.params(":num2"));
            return  num1 - num2;
        });

        get("/divide/:num1/:num2", (req,res) ->{
            int num1 = Integer.parseInt(req.params(":num1"));
            int num2 = Integer.parseInt(req.params(":num2"));
            return  num1 / num2;
        });

        get("/multiply/:num1/:num2", (req,res) ->{
            int num1 = Integer.parseInt(req.params(":num1"));
            int num2 = Integer.parseInt(req.params(":num2"));
            return  num1 * num2;
        });
    }






}
