package su.opencode.project.web.project.persistence.model;

import javax.persistence.*;
import java.io.Serializable;
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
    @Column(name = "CREATED_BY", nullable = false)
    private String createdBy;
    @Column(name = "CREATED_WHEN", nullable = false)
    @Temporal(value = TemporalType.TIMESTAMP)
    private Date createdWhen;
    @Column(name="SALARY", nullable = false)
    private int Salary;

    public Employees() {
    }

    public Employees(String createdBy, Date createdWhen) {
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

    public Date getCreatedWhen() {
        return createdWhen;
    }

    public void setCreatedWhen(Date createdWhen) {
        this.createdWhen = createdWhen;
    }

    public int getSalary() {
        return Salary;
    }

    public void setSalary(int salary) {
        Salary = salary;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Employees employees = (Employees) o;
        return Objects.equals(id, employees.id) &&
                Objects.equals(name, employees.name) &&
                Objects.equals(createdBy, employees.createdBy) &&
                Objects.equals(createdWhen, employees.createdWhen);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, createdBy, createdWhen);
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Employees{");
        sb.append("id=").append(id);
        sb.append(", name='").append(name).append('\'');
        sb.append(", createdBy='").append(createdBy).append('\'');
        sb.append(", createdWhen=").append(createdWhen);
        sb.append('}');
        return sb.toString();
    }
}
