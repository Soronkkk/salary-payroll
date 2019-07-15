package su.opencode.project.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import su.opencode.project.web.project.persistence.model.Employees;
import su.opencode.project.web.project.persistence.model.JobTitle;
import su.opencode.project.web.project.persistence.services.EmployeesDataService;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

/**
 * Created by popov on 13.11.18.
 */

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    @Autowired
    EmployeesDataService employeesDataService;

    @PostMapping(value = "/crud", produces = "application/json")
    @ResponseBody
    public Employees crud(
            @RequestParam("id") Long id,
            @RequestParam("name") String name,
            @RequestParam("surname") String surname,
            @RequestParam("jobTitle") String jobTitle,
            @RequestParam("salary") int salary,
            @RequestParam("birthDate") String birthDate,
            @RequestParam("department") String departmentName,
            @RequestParam("lastPayrollDate") String lastPayrollDate,
            @RequestParam("email") String email
    ) {

        Employees newEmployees = new Employees("test", LocalDate.now());
        newEmployees.setId(id);
        newEmployees.setJobTitle(jobTitle);
        newEmployees.setName(name);
        newEmployees.setSalary(salary);
        newEmployees.setSurname(surname);
        newEmployees.setBirthDate(LocalDate.parse(birthDate));
        newEmployees.setDepartmentName(departmentName);
        newEmployees.setLastPayrollDate(LocalDate.parse(lastPayrollDate));
        newEmployees.setEmail(email);

        return employeesDataService.save(newEmployees);
    }


    @GetMapping
    public ModelAndView getEmployeePage(){
        List<Employees> employees = new ArrayList<>((Collection<? extends Employees>) employeesDataService.findAll());
        //System.out.println(Arrays.toString(employees.toArray()));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("employees", employees);
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @PostMapping("/delete/{id}")
    @ResponseBody
    public Boolean delete(@PathVariable("id") long id) {
        this.employeesDataService.deleteById(id);
        return true;
    }

    @RequestMapping("/edit/{id}")
    public ModelAndView update(@PathVariable("id") long id, Model model) {
        model.addAttribute("employees", this.employeesDataService.findById(id));


       // model.addAttribute("listEmployees", this.employeesDataService.findAll());
        return getEmployeePage();
    }


}
