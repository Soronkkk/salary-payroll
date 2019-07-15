package su.opencode.project.web.project.persistence.model;

import javax.persistence.MappedSuperclass;
import java.time.LocalDate;

@MappedSuperclass
public abstract class CreatedInfo {

    private String createdBy;

    private LocalDate createdWhen;

    public CreatedInfo() {
    }

    public CreatedInfo(String createdBy, LocalDate createdWhen) {
        this.createdBy = createdBy;
        this.createdWhen = createdWhen;
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

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("CreatedInfo{");
        sb.append("createdBy='").append(createdBy).append('\'');
        sb.append(", createdWhen=").append(createdWhen);
        sb.append('}');
        return sb.toString();
    }
}
