import db.DBHelper;
import db.DBPirate;
import db.DBRaid;
import db.DBShip;
import models.*;

import java.util.List;

public class Runner {

    public static void main(String[] args) {

        Ship pearl = new Ship("The Black Pearl");
        DBHelper.save(pearl);

        Ship dutchman = new Ship("The Flying Dutchman");
        DBHelper.save(dutchman);

        Pirate pirate1 = new Pirate("Will", "Turner", 23, Weapon.DAGGER, pearl);
        DBHelper.save(pirate1);
        Pirate pirate2 = new Pirate("Elizabeth", "Swanson", 24, Weapon.PISTOL, dutchman);
        DBHelper.save(pirate2);
        Pirate pirate3 = new Pirate("Davey", "Jones", 154, Weapon.CUTLASS, dutchman);
        DBHelper.save(pirate3);

        Captain captain1 = new Captain("Jack", "Sparrow", 32, Weapon.CUTLASS, 100, pearl);
        DBHelper.save(captain1);
        Captain captain2 = new Captain("Captain", "Hook", 24, Weapon.PISTOL, 50, dutchman);
        DBHelper.save(captain2);


        List<Pirate> pirates = DBHelper.getAll(Pirate.class);

        List<Ship> ships = DBHelper.getAll(Ship.class);

        Pirate foundPirate = DBHelper.find(Pirate.class, pirate1.getId());

        List<Pirate> piratesOnPearl = DBShip.getCrewForShip(pearl);

        Captain captainOnShip = DBShip.getCaptain(pearl);

        Captain foundCaptain = DBPirate.getPiratesCaptain(pirate1);

        Raid raid1 = new Raid("Horn of Africa",1000);
        DBHelper.save(raid1);
        Raid raid2 = new Raid("Booty Bay",1000);
        DBHelper.save(raid2);

        DBPirate.addPirateToRaid(pirate1, raid1);
        DBPirate.addPirateToRaid(pirate2, raid1);
        DBPirate.addPirateToRaid(pirate2, raid2);

        Pirate foundPirates = DBHelper.find(Pirate.class, pirate1.getId());

        List<Pirate> raidPirates = DBRaid.getRaidPirates(raid1);
        List<Raid> pirateRaids = DBPirate.getPiratesOnRaid(pirate2);
    }
}
