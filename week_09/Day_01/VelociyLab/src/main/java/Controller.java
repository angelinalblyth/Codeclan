import spark.ModelAndView;
import spark.template.velocity.VelocityTemplateEngine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

import static spark.Spark.get;

public class Controller {

    public static void main(String[] args) {

        VelocityTemplateEngine velocityTemplateEngine = new VelocityTemplateEngine();

        ArrayList<String> games = new ArrayList<>();
        games.add("Crash Bandicoot");
        games.add("Rayman");
        games.add("Looney Toons");
        games.add("Spyro");

        get("/randomgame", (req, res) ->{
            Collections.shuffle(games);
            String result = games.get(0);
            HashMap<String, Object> model = new HashMap<>();
            model.put("result", result);
            return new ModelAndView(model, "random.vtl");
        }, velocityTemplateEngine);
    }
}
