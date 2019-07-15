package su.opencode.project.web.project.persistence.model;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;
import java.util.Objects;


@Entity
@Table(name = "EMPLOYEES")
public class Employees extends CreatedInfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", updatable = false, nullable = false)
    private Long id;

    @Column(name = "JOB_TITLE", nullable = false)
    private String jobTitle;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "SURNAME", nullable = false)
    private String surname;

    @Column(name = "BIRTH_DATE", nullable = false)
    //@Temporal(value = TemporalType.TIMESTAMP)
    private LocalDate birthDate;
    
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
        super(createdBy, createdWhen);
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

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Employees employees = (Employees) o;
        return Salary == employees.Salary &&
                Objects.equals(id, employees.id) &&
                Objects.equals(jobTitle, employees.jobTitle) &&
                Objects.equals(name, employees.name) &&
                Objects.equals(surname, employees.surname) &&
                Objects.equals(birthDate, employees.birthDate) &&
                Objects.equals(departmentName, employees.departmentName) &&
                Objects.equals(lastPayrollDate, employees.lastPayrollDate) &&
                Objects.equals(email, employees.email);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, jobTitle, name, surname, birthDate, Salary, departmentName, lastPayrollDate, email);
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Employees{");
        sb.append("id=").append(id);
        sb.append(", jobTitle='").append(jobTitle).append('\'');
        sb.append(", name='").append(name).append('\'');
        sb.append(", surname='").append(surname).append('\'');
        sb.append(", birthDate=").append(birthDate);
        sb.append(", Salary=").append(Salary);
        sb.append(", departmentName='").append(departmentName).append('\'');
        sb.append(", lastPayrollDate=").append(lastPayrollDate);
        sb.append(", email='").append(email).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
