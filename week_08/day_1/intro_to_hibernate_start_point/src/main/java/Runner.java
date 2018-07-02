import db.DBPirate;
import db.DBShip;
import models.Pirate;
import models.Ship;

public class Runner {

    public static void main(String[] args) {

        Pirate pirate = new Pirate("Jack", "Sparrow", 32);
        DBPirate.save(pirate);

        Ship ship = new Ship("Jolly Rancher");
        DBShip.save(ship);
    }

}
