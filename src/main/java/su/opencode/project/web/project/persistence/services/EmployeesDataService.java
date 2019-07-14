package su.opencode.project.web.project.persistence.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import su.opencode.project.web.project.persistence.model.Employees;
import su.opencode.project.web.project.persistence.repositories.EmployeesCrudRepository;

import java.util.Optional;

@Service
public class EmployeesDataService {

    @Autowired
    private EmployeesCrudRepository employeesCrudRepository;

    @Transactional
    public Iterable<Employees> findAll() {
        return employeesCrudRepository.findAll();
    }

    @Transactional
    public void deleteById(Long id) {
        employeesCrudRepository.deleteById(id);
    }

    @Transactional
    public Employees save(Employees employees) {
        return employeesCrudRepository.save(employees);
    }

    @Transactional
    public Optional<Employees> findByName(String name) {
        return employeesCrudRepository.findByName(name);
    }

    @Transactional
    public Optional<Employees> findById(long id){
        return employeesCrudRepository.findById(id);
    }


}
