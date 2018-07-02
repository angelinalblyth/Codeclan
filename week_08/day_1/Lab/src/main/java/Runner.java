import db.DBGolfer;
import models.Golfer;

import java.util.List;

public class Runner {

    public static void main(String[] args) {
        Golfer golfer1 = new Golfer("Angie", "Blyth", 28);
        DBGolfer.save(golfer1);
        Golfer golfer2 = new Golfer("Louse", "Blyth", 28);
        DBGolfer.save(golfer2);
        Golfer golfer3 = new Golfer("Abi", "Blyth", 28);
        DBGolfer.save(golfer3);
        Golfer golfer4 = new Golfer("Jamie", "Blyth", 28);
        DBGolfer.save(golfer4);

        List<Golfer> allGolfers = DBGolfer.getAll();
        Golfer louise = DBGolfer.find(golfer2.getId());
        DBGolfer.deleteAll();
        List<Golfer> listAfterDelete = DBGolfer.getAll();
    }
}
