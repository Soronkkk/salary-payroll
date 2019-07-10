package su.opencode.project.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import su.opencode.project.web.project.persistence.model.Employees;
import su.opencode.project.web.project.persistence.services.EmployeesDataService;

import java.text.ParseException;
import java.time.LocalDate;

@Controller
@RequestMapping("/init")
public class InitController {

    @Autowired
    EmployeesDataService employeesDataService;


    @GetMapping
    public String init() {

        Employees newEmployees = new Employees("Иван", LocalDate.now());
        newEmployees.setName("Иван");
        newEmployees.setSurname("Иванов");
        newEmployees.setSalary(45000);
        newEmployees.setBirthDate(LocalDate.parse("1980-12-02"));
        newEmployees.setDepartmentName("Developer");
        newEmployees.setLastPayrollDate(LocalDate.parse("2019-07-05"));
        newEmployees.setEmail("ivan@mail.ru");
        employeesDataService.save(newEmployees);

        newEmployees = new Employees("Алексей", LocalDate.now());
        newEmployees.setName("Алексей");
        newEmployees.setSurname("Петров");
        newEmployees.setSalary(35000);
        newEmployees.setBirthDate(LocalDate.parse("1991-12-02"));
        newEmployees.setDepartmentName("Designer");
        newEmployees.setLastPayrollDate(LocalDate.parse("2019-07-04"));
        newEmployees.setEmail("alex@mail.ru");
        employeesDataService.save(newEmployees);

        newEmployees = new Employees("Петр", LocalDate.now());
        newEmployees.setName("Петр");
        newEmployees.setSurname("Алексеев");
        newEmployees.setSalary(67000);
        newEmployees.setBirthDate(LocalDate.parse("1986-12-02"));
        newEmployees.setDepartmentName("Project Manager");
        newEmployees.setLastPayrollDate(LocalDate.parse("2019-07-06"));
        newEmployees.setEmail("petr@mail.ru");
        employeesDataService.save(newEmployees);
        return "redirect:/index";
    }

}
