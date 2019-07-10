package su.opencode.project.web.project.persistence.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import su.opencode.project.web.project.persistence.model.Employees;

import java.util.Optional;

@Repository
public interface EmployeesCrudRepository extends CrudRepository<Employees, Long> {
    Optional<Employees> findByName(String name);
}
