package su.opencode.project.web.project.persistence.model;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;
import java.util.Objects;

/**
 * Created by popov on 12.10.18.
 */
@Entity
@Table(name = "EMPLOYEES")
public class Employees implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", updatable = false, nullable = false)
    private Long id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "SURNAME", nullable = false)
    private String surname;

    @Column(name = "BIRTH_DATE", nullable = false)
    //@Temporal(value = TemporalType.TIMESTAMP)
    private LocalDate birthDate;

    @Column(name = "CREATED_BY", nullable = false)
    private String createdBy;

    @Column(name = "CREATED_WHEN", nullable = false)
    //@Temporal(value = TemporalType.TIMESTAMP)
    private LocalDate createdWhen;

    @Column(name="SALARY", nullable = false)
    private int Salary;

    @Column(name="DEPARTMENT_NAME", nullable = false)
    private String departmentName;

    @Column (name="LAST_PAYROLL_DATE", nullable = false)
    private LocalDate lastPayrollDate;

    @Column(name = "EMAIL", nullable = false)
    private String email;

    public Employees() {
    }

    public Employees(String createdBy, LocalDate createdWhen) {
        this.createdBy = createdBy;
        this.createdWhen = createdWhen;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public LocalDate getCreatedWhen() {
        return createdWhen;
    }

    public void setCreatedWhen(LocalDate createdWhen) {
        this.createdWhen = createdWhen;
    }

    public int getSalary() {
        return Salary;
    }

    public void setSalary(int salary) {
        Salary = salary;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public LocalDate getLastPayrollDate() {
        return lastPayrollDate;
    }

    public void setLastPayrollDate(LocalDate lastPayrollDate) {
        this.lastPayrollDate = lastPayrollDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Employees employees = (Employees) o;
        return Salary == employees.Salary &&
                Objects.equals(id, employees.id) &&
                Objects.equals(name, employees.name) &&
                Objects.equals(surname, employees.surname) &&
                Objects.equals(birthDate, employees.birthDate) &&
                Objects.equals(createdBy, employees.createdBy) &&
                Objects.equals(createdWhen, employees.createdWhen) &&
                Objects.equals(departmentName, employees.departmentName) &&
                Objects.equals(lastPayrollDate, employees.lastPayrollDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, surname, birthDate, createdBy, createdWhen, Salary, departmentName, lastPayrollDate);
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Employees{");
        sb.append("id=").append(id);
        sb.append(", name='").append(name).append('\'');
        sb.append(", surname='").append(surname).append('\'');
        sb.append(", birthDate=").append(birthDate);
        sb.append(", createdBy='").append(createdBy).append('\'');
        sb.append(", createdWhen=").append(createdWhen);
        sb.append(", Salary=").append(Salary);
        sb.append(", departmentName='").append(departmentName).append('\'');
        sb.append(", lastPayrollDate=").append(lastPayrollDate);
        sb.append('}');
        return sb.toString();
    }
}
