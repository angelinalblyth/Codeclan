import java.util.ArrayList;

public class CharityShop {

    private ArrayList<Employee> employees;

    public CharityShop() {
         employees = new ArrayList<Employee>();
    }

    public void addEmployee(Employee employee) {
        this.employees.add(employee);
    }

    public int staffCount() {
        return employees.size();
    }

    public void payStaff() {
// loop over all employees
        for(Employee employee : this.employees){

            // if we found a manager
            if (employee instanceof Manager){

                //convert the employee to a manager
                Manager manager = (Manager) employee;
                //pay that manager
                manager.pay(1500);
                //or else do the below
//                ((Manager) employee).pay(1500);
            }
        }
    }
}
