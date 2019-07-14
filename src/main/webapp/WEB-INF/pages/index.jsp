<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Тестовая система</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.2/dist/bootstrap-table.min.css">

    <link rel="stylesheet" href="https://drvic10k.github.io/bootstrap-sortable/Contents/bootstrap-sortable.css"/>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.15.2/dist/bootstrap-table.min.js"></script>
    <script src="https://drvic10k.github.io/bootstrap-sortable/Scripts/bootstrap-sortable.js"></script>



    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#payroll-datepicker").datepicker({
                dateFormat: 'yy-mm-dd',
                changeMonth: true,
                changeYear: true,
                yearRange: "-100:+0"
            });
            $("#birth-datepicker").datepicker({
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                changeYear: true,
                yearRange: "-100:+0"
            });
        });
    </script>
</head>
<body>

<div class="text-center">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#employeeAddModal">
        Add employee
    </button>
</div>

<!-- Modal -->
<div class="modal fade" id="employeeAddModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Add employee</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form autocomplete="off" action="${pageContext.request.contextPath}/crud" method="post"
                      class="needs-validation"
                      novalidate>
                    <div class="form-row" style="text-align: center;">
                        <%--Job Title--%>
                        <div class="col-md-4 mb-3">
                            <label for="jobTitle">Job title</label>
                            <select name="jobTitle" id="jobTitle" class="form-control">
                                <option value="Программист">Программист</option>
                                <option value="Менеджер">Менеджер</option>
                                <option value="Дизайнер">Дизайнер</option>
                            </select>
                        </div>
                        <%--Name--%>
                        <div class="col-md-4 mb-3">
                            <label for="validationTooltip02">Name</label>
                            <input type="text" name="name" class="form-control" id="validationTooltip02"
                                   placeholder="Name" required>
                            <div class="invalid-feedback">
                                Please choose a name
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                        <%--Surname--%>
                        <div class="col-md-4 mb-3">
                            <label for="validationTooltip03">Surname</label>
                            <input type="text" name="surname" class="form-control" id="validationTooltip03"
                                   placeholder="Surname"
                                   required>
                            <div class="invalid-feedback">
                                Please choose a surname
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                        <%--Salary--%>
                        <div class="col-md-4 mb-3">
                            <label for="validationTooltip04">Salary</label>
                            <input type="number" name="salary" class="form-control" id="validationTooltip04"
                                   placeholder="Salary"
                                   required>
                            <div class="invalid-feedback">
                                Please choose a salary
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                        <%--email--%>
                        <div class="col-md-4 mb-3">
                            <label for="validationTooltip05">Email</label>
                            <input type="text" name="email" class="form-control" id="validationTooltip05"
                                   placeholder="Email"
                                   required>
                            <div class="invalid-feedback">
                                Please choose a email
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                        <%--Birth date--%>
                        <div class="col-md-4 mb-3">
                            <label for="birth-datepicker">Birth date</label>
                            <input type="text" name="birthDate" class="form-control" id="birth-datepicker"
                                   placeholder="Birth date"
                                   required>
                            <div class="invalid-feedback">
                                Please choose a dirth date
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                        <%--Department--%>
                        <div class="col-md-4 mb-3">
                            <label for="department">Department</label>
                            <select name="department" id="department" class="form-control">
                                <option value="Отдел кадров">Отдел кадров</option>
                                <option value="Отдел разработки">Отдел разработки</option>
                                <option value="Отдел проектировки">Отдел проектирования</option>
                            </select>
                        </div>
                        <%--Last payroll date--%>
                        <div class="col-md-4 mb-3">
                            <label for="payroll-datepicker">Last payroll date</label>
                            <input type="text" name="lastPayrollDate" class="form-control" id="payroll-datepicker"
                                   placeholder="Last payroll date"
                                   required>
                            <div class="invalid-feedback">
                                Please choose a last payroll date
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary" type="submit" name="action" value="save">Save changes</button>
                    </div>
                </form>
                <script>
                    (function () {
                        'use strict';
                        window.addEventListener('load', function () {
                            var forms = document.getElementsByClassName('needs-validation');
                            var validation = Array.prototype.filter.call(forms, function (form) {
                                form.addEventListener('submit', function (event) {
                                    if (form.checkValidity()===false){
                                        event.preventDefault();
                                        event.stopPropagation();
                                    }
                                    form.classList.add('was-validated');
                                }, false);
                            });
                        }, false);
                    })();
                </script>
            </div>
        </div>
    </div>
</div>

</br>
<table id="table-id" class="table table-striped table-bordered sortable" style="width:100%">
    <thead>
    <tr>
        <th>Job Title</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
        <th>Salary</th>
        <th>Birth date</th>
        <th>Department</th>
        <th>Last payroll date</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employees}" var="employees">
        <tr>
            <td>${employees.jobTitle}</td>
            <td>${employees.name}</td>
            <td>${employees.surname}</td>
            <td>${employees.email}</td>
            <td>${employees.salary}</td>
            <td>${employees.birthDate}</td>
            <td>${employees.departmentName}</td>
            <td>${employees.lastPayrollDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>