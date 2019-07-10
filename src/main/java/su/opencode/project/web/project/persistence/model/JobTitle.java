package su.opencode.project.web.project.persistence.model;

public enum JobTitle {
    PROJECT_MANAGER("Менеджер проекта"),
    DEVELOPER("Разработчик"),
    DESIGNER("Дизайнер");

    private String title;

    JobTitle(String title){
        this.title=title;
    }

    @Override
    public String toString() {
        return title;
    }
}
