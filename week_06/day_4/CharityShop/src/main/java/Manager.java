public class Manager extends Employee {

    private String name;
    private int balance;


    public Manager(String name) {
        super(name);

        this.balance = 0;

    }

    public String work() {
        return "I boss people around";
    }

    public int getBalance(){
        return this.balance;
    }


    public void pay(int pay) {
        this.balance += pay;
    }
}
