import db.DBChild;
import db.DBHelper;
import models.Child;

import java.util.List;

public class Runner {

    public static void main(String[] args) {

        Child liesl = new Child("Liesl", 16, "Soprano");
        Child friedrich = new Child("Friedrich", 14, "Tenor");
        Child louisa = new Child("Louisa", 13, "Contralto");
        Child kurt = new Child("Kurt", 11, "Tenor");
        Child brigitta = new Child("Brigitta", 10, "Soprano");
        Child marta = new Child("Marta", 7, "Mezzo-Soprano");
        Child gretl = new Child("Gretl", 5, "Soprano");

        DBHelper.save(liesl);
        DBHelper.save(friedrich);
        DBHelper.save(louisa);
        DBHelper.save(kurt);
        DBHelper.save(brigitta);
        DBHelper.save(marta);
        DBHelper.save(gretl);

        List<Child> allChildren = DBHelper.getAll(Child.class);

        Child findByName = DBChild.findByName(friedrich.getName());

        List<Child> orderByAge = DBChild.orderByAge();

        List<Child> sopranoRange = DBChild.sopranos();

        friedrich.setAge(15);
        friedrich.setRange("Bass");
        DBHelper.update(friedrich);

        List<Child> youngestChildren = DBChild.youngestChildren();

        Double averageAge = DBChild.getAverageAge();
        Integer oldestChild = DBChild.getOldestChild();
        Integer youngestChild = DBChild.getYoungestChild();
        Long totalAge = DBChild.totalAge();

    }
}
