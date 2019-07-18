package su.opencode.project.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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

    @ModelAttribute("employee")
    public Employees getPerson(){
        return new Employees("test",LocalDate.now());
    }

    @PostMapping(value = "/save", produces = "application/json")
    @ResponseBody
    public Employees save(@ModelAttribute("employee") Employees employee, BindingResult bindingResult) {
        return employeesDataService.save(employee);
    }


    @GetMapping
    public ModelAndView getEmployeePage(){
        List<Employees> employees = new ArrayList<>((Collection<? extends Employees>) employeesDataService.findAll());
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
}
