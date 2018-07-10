package controllers;

import db.DBHelper;
import models.Department;
import models.Manager;
import spark.ModelAndView;
import spark.template.velocity.VelocityTemplateEngine;

import java.util.HashMap;
import java.util.List;

import static spark.Spark.get;
import static spark.Spark.post;

public class ManagersController {

    public ManagersController(){
        this.setupEndpoints();
    }

    private void setupEndpoints(){

        get("/managers", (req,res) ->{
            HashMap<String, Object> model = new HashMap<>();
            List<Manager> managers = DBHelper.getAll(Manager.class);
            model.put("template", "templates/managers/index.vtl");
            model.put("managers", managers);
            return new ModelAndView(model, "templates/layout.vtl");
        }, new VelocityTemplateEngine());

        get("/managers/new", (req, res) ->{
            HashMap<String, Object> model = new HashMap<>();
            List<Department> departments = DBHelper.getAll(Department.class);
            model.put("departments", departments);
            model.put("template", "/templates/managers/create.vtl");
            return new ModelAndView(model, "templates/layout.vtl");
        }, new VelocityTemplateEngine());

        post("/managers", (req, res) ->{
            int departmentId = Integer.parseInt(req.queryParams("department"));
            Department department = DBHelper.find(departmentId, Department.class);

            String firstName = req.queryParams("firstName");
            String lastName = req.queryParams("lastName");
            int salary = Integer.parseInt(req.queryParams("salary"));
            int budget = Integer.parseInt(req.queryParams("budget"));

            Manager newManager = new Manager(firstName, lastName, salary, department, budget);
            DBHelper.save(newManager);

            res.redirect("/managers");
            return null;
        }, new VelocityTemplateEngine());



        get("/managers/:id", (req,res) ->{
            String strId = req.params(":id");
            Manager managers = DBHelper.find(Integer.parseInt(strId), Manager.class);
            HashMap<String, Object> model = new HashMap<>();
            model.put("manager", managers);
            model.put("template", "templates/managers/view.vtl");
            return new ModelAndView(model, "templates/layout.vtl");
        }, new VelocityTemplateEngine());

        get("/managers/:id/edit", (req, res) ->{
            String strId = req.params(":id");
            Manager manager = DBHelper.find(Integer.parseInt(strId), Manager.class);
            List<Department> departments = DBHelper.getAll(Department.class);
            HashMap<String, Object> model = new HashMap<>();
            model.put("manager", manager);
            model.put("departments", departments);
            model.put("template", "templates/managers/edit.vtl");
            return new ModelAndView(model, "templates/layout.vtl");
        }, new VelocityTemplateEngine());

        post("/managers/:id", (req, res) ->{

            String strId = req.params(":id");

           Department department = DBHelper.find(Integer.parseInt(req.queryParams("department")), Department.class);

            int id = Integer.parseInt(req.queryParams("id"));
            String firstName = req.queryParams("firstName");
            String lastName = req.queryParams("lastName");
            int salary = Integer.parseInt(req.queryParams("salary"));
            Double budget = Double.parseDouble(req.queryParams("budget"));

            Manager manager = DBHelper.find(Integer.parseInt(strId), Manager.class);

            manager.setId(id);
            manager.setFirstName(firstName);
            manager.setLastName(lastName);
            manager.setSalary(salary);
            manager.setBudget(budget);
            manager.setDepartment(department);

            DBHelper.save(manager);

            res.redirect("/managers");
            return null;
        }, new VelocityTemplateEngine());


    }
}
