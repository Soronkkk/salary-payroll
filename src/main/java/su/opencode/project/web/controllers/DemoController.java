package su.opencode.project.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import su.opencode.project.web.project.persistence.model.Employees;
import su.opencode.project.web.project.persistence.services.EmployeesDataService;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

/**
 * Created by popov on 13.11.18.
 */

@Controller
public class DemoController {

    @Autowired
    EmployeesDataService employeesDataService;

    @RequestMapping(method = RequestMethod.POST, value = "/crud")
    public ModelAndView crud(
            @RequestParam("action") String action,
            @RequestParam("name") String name,
            @RequestParam("surname") String surname,
            @RequestParam("id") Long id,
            @RequestParam("salary") int salary,
            @RequestParam("birthDate") String birthDate,
            @RequestParam("department") String departmentName,
            @RequestParam("lastPayrollDate") String lastPayrollDate,
            @RequestParam("email") String email
    ) {
        List<Employees> employees = new ArrayList<>();
        if ("delete".equals(action)) {
            employeesDataService.deleteById(id);
        } else if ("save".equals(action)) {
            Employees newEmployees = new Employees("test", LocalDate.now());
            newEmployees.setName(name);
            newEmployees.setSalary(salary);
            newEmployees.setSurname(surname);
            newEmployees.setBirthDate(LocalDate.parse(birthDate));
            newEmployees.setDepartmentName(departmentName);
            newEmployees.setLastPayrollDate(LocalDate.parse(lastPayrollDate));
            newEmployees.setEmail(email);
            employeesDataService.save(newEmployees);
        } else if ("find".equals(action)) {
            Optional<Employees> optionalEmployees = employeesDataService.findByName(name);
            optionalEmployees.ifPresent(employees::add);
        }
        if (!"find".equals(action)) {
            employees.addAll((Collection<? extends Employees>) employeesDataService.findAll());
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("employees", employees);
        modelAndView.setViewName("index");
        return modelAndView;
    }
}
