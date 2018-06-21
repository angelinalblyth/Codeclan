import java.util.HashMap;

public class HashMapDemo {

    public static void main(String[] args){
//        HashMap<String, String> favouriteFoods = new HashMap();
//
//        favouriteFoods.put("Roddy", "Bananas");
//        favouriteFoods.put("Cleyra", "Arepas");
//        favouriteFoods.put("Colin", "Knowledge");
//
//        System.out.println(favouriteFoods.get("Roddy"));

//        HashMap<String, Integer> ages = new HashMap<String, Integer>();
//        ages.put("Alice", 52);
//        ages.put("Bob", 78);
//
//        Integer aliceAge = ages.get("Alice");
//
//        String output = "Alice's age is " + aliceAge.toString();
//
//        System.out.println(output);


        HashMap<String, String> favouriteFoods = new HashMap();

        favouriteFoods.put("Roddy", "Bananas");
        favouriteFoods.put("Cleyra", "Arepas");
        favouriteFoods.put("Colin", "Knowledge");

        System.out.println(favouriteFoods.get("Roddy"));

        System.out.println(favouriteFoods.size());

    }
}
