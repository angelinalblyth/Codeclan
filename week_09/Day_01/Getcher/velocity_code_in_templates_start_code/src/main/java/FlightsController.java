import spark.ModelAndView;
import spark.template.velocity.VelocityTemplateEngine;

import java.util.ArrayList;
import java.util.HashMap;

import static spark.Spark.get;
import static spark.SparkBase.staticFileLocation;

public class FlightsController {
    public static void main(String[] args) {
        VelocityTemplateEngine velocityTemplateEngine = new VelocityTemplateEngine();
        staticFileLocation("/public");

        ArrayList<Flight> flights = new ArrayList();

        Flight flight1 = new Flight("SC666", "Scottish Airways","Inverness", "New York");
        Flight flight2 = new Flight("AB123", "Ryanair", "Glasgow", "Dublin");
        Flight flight3 = new Flight("US627", "BA", "London", "Dubai");

        flights.add(flight1);
        flights.add(flight2);
        flights.add(flight3);

        get("/flights", (req, res) -> {

            HashMap<String, Object> model = new HashMap<>();
            model.put("flights", flights);
            model.put("template", "flights.vtl");
            return new ModelAndView(model, "layout.vtl");
        }, velocityTemplateEngine);
    }
}
