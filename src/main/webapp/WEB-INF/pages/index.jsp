<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.5/css/fixedHeader.dataTables.min.css">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>



    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style type="text/css">
        thead th {
            font-size: 1.0em;
            padding: 1px !important;
            height: 30px;
        }
    </style>
</head>
<body>

<div class="text-center">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#employeeAddModal"
            onclick="clearModal()">
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
                <form:form autocomplete="off" id="addForm" method="post" modelAttribute="employee"
                           onsubmit="return false;"
                           class="needs-validation">
                    <input id="id" name="id" type="hidden">
                    <div class="form-row" style="text-align: center;">
                            <%--Job Title--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="jobTitle">Job title</form:label>
                            <form:select path="jobTitle" id="jobTitle" class="form-control">
                                <form:option value="Developer">Developer</form:option>
                                <form:option value="Project manager">Project manager</form:option>
                                <form:option value="Designer">Designer</form:option>
                            </form:select>
                        </div>
                            <%--Name--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="name">Name</form:label>
                            <form:input type="text" path="name" pattern="^[а-яА-Я]+$" class="form-control" id="name"
                                        placeholder="Name" required="required"/>
                            <div class="invalid-feedback">
                                Please choose a name
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                            <%--Surname--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="surname">Surname</form:label>
                            <form:input type="text" path="surname" pattern="^[а-яА-Я]+$" class="form-control"
                                        id="surname"
                                        placeholder="Surname"
                                        required=""/>
                            <div class="invalid-feedback">
                                Please choose a surname
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                            <%--Salary--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="salary">Salary</form:label>
                            <form:input type="number" min="0" path="salary" pattern="^[0-9]*$" class="form-control"
                                        id="salary"
                                        placeholder="Salary"
                                        required=""/>
                            <div class="invalid-feedback">
                                Please choose a salary
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                            <%--email--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="email">Email</form:label>
                            <form:input type="text" path="email" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}"
                                        class="form-control"
                                        id="email"
                                        placeholder="Email"
                                        required=""/>
                            <div class="invalid-feedback">
                                Please choose a email
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                            <%--Birth date--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="birthDate">Birth date</form:label>
                            <form:input type="date" path="birthDate"
                                        pattern="([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))"
                                        class="form-control" id="birth-datepicker"
                                        placeholder="Birth date"
                                        required=""/>
                            <div class="invalid-feedback">
                                Please choose a birth date
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                            <%--Department--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="departmentName">Department</form:label>
                            <form:select path="departmentName" id="department" class="form-control">
                                <form:option value="Personnel department">Personnel department</form:option>
                                <form:option value="Development department">Development department</form:option>
                                <form:option value="Design department">Design department</form:option>
                            </form:select>
                        </div>
                            <%--Last payroll date--%>
                        <div class="col-md-4 mb-3">
                            <form:label path="lastPayrollDate">Last payroll date</form:label>
                            <form:input type="date" path="lastPayrollDate"
                                        pattern="([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))"
                                        class="form-control" id="payroll-datepicker"
                                        placeholder="Last payroll date"
                                        required=""/>
                            <div class="invalid-feedback">
                                Please choose a last payroll date
                            </div>
                            <div class="valid-feedback">
                                Looks good
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary" type="submit" name="action" value="save"
                                onclick="saveEmployee()">Save changes
                        </button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

</br>
<table id="table-id" class="table table-hover table-bordered" style="width:100%">
    <thead>
    <tr>
        <th>id</th>
        <th>Job Title</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Birth date</th>
        <th>Salary</th>
        <th>Department</th>
        <th>Last payroll date</th>
        <th>Email</th>
        <th colspan="2"></th>
    </tr>
    </thead>
    <tbody id="tbodyId">
    <c:forEach items="${employees}" var="employees">
        <tr>
            <td>${employees.id}</td>
            <td>${employees.jobTitle}</td>
            <td>${employees.name}</td>
            <td>${employees.surname}</td>
            <td>${employees.birthDate}</td>
            <td>${employees.salary}</td>
            <td>${employees.departmentName}</td>
            <td>${employees.lastPayrollDate}</td>
            <td>${employees.email}</td>
            <td>
                <button class="btn btn-link" onclick="editEmployee(this.parentNode.parentNode)">Edit</button>
            </td>
            <td>
                <button class="btn btn-link" onclick="deleteEmployee(this.parentNode.parentNode)">Delete</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script>
    var editableRow;

    $(document).ready(function () {
        // Setup - add a text input to each footer cell
        $('#table-id thead tr').clone(true).appendTo('#table-id thead');
        $('#table-id thead tr:eq(1) th').each(function (i) {
            var title = $(this).text();
            if (title !== '')
            $(this).html('<input type="text" placeholder="Search ' + title + '" />');

            $('input', this).on('keyup change', function () {
                if (table.column(i).search() !== this.value) {
                    table
                        .column(i)
                        .search(this.value)
                        .draw();
                }
            });
        });

        var table = $('#table-id').DataTable({
            orderCellsTop: true,
            fixedHeader: true,
            info: false,
            "searching":false
        });
    });

    function saveEmployee() {
        var id = document.getElementById("id").value;
        var form = document.getElementById("addForm");
        if (form.checkValidity())
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/employees/save",
                data: $("#addForm").serialize(),
                success: function (data) {
                    if (id !== "")
                        editableRow.remove();
                    printEmployee(data);
                    // Скрыть модальное окно
                    $("#employeeAddModal").modal("hide");
                }
            });
    }

    function printEmployee(employee) {
        var row = document.createElement('tr');
        // Employee id column
        var cell = document.createElement('td');
        cell.innerHTML = employee.id;
        row.appendChild(cell);
        // Employee name column
        cell = document.createElement('td');
        cell.innerHTML = employee.jobTitle;
        row.appendChild(cell);
        // Employee position name column
        cell = document.createElement('td');
        cell.innerHTML = employee.name;
        row.appendChild(cell);
        // Employee salary column
        cell = document.createElement('td');
        cell.innerHTML = employee.surname;
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = employee.birthDate;
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = employee.salary;
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = employee.departmentName;
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = employee.lastPayrollDate;
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = employee.email;
        row.appendChild(cell);
        cell = document.createElement('td');
        var button = document.createElement('button');
        button.classList.add("btn");
        button.classList.add("btn-link");
        button.setAttribute('onclick', "editEmployee(this.parentNode.parentNode);");
        button.innerText = "Edit";
        cell.appendChild(button);
        row.appendChild(cell);
        cell = document.createElement('td');
        button = document.createElement('button');
        button.classList.add("btn");
        button.classList.add("btn-link");
        button.setAttribute('onclick', "deleteEmployee(this.parentNode.parentNode);");
        button.innerText = "Delete";
        cell.appendChild(button);
        row.appendChild(cell);
        document.getElementById("tbodyId").appendChild(row);
    }

    function editEmployee(row) {
        editableRow = row;
        fillModal(row);
        $("#employeeAddModal").modal("show");
    }

    function deleteEmployee(row) {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/employees/delete/" + row.children[0].innerText,
            success: function (data) {
                row.remove();
            }
        });
    }

    function fillModal(row) {
        document.getElementById('id').value = row.children[0].innerText;
        document.getElementById('jobTitle').value = row.children[1].innerText;
        document.getElementById('name').value = row.children[2].innerText;
        document.getElementById('surname').value = row.children[3].innerText;
        document.getElementById('birth-datepicker').value = row.children[4].innerText;
        document.getElementById('salary').value = row.children[5].innerText;
        document.getElementById('department').value = row.children[6].innerText;
        document.getElementById('payroll-datepicker').value = row.children[7].innerText;
        document.getElementById('email').value = row.children[8].innerText;
    }

    function clearModal() {
        document.getElementById('id').value = "";
        document.getElementById('name').value = "";
        document.getElementById('surname').value = "";
        document.getElementById('birth-datepicker').value = "";
        document.getElementById('salary').value = 0;
        document.getElementById('payroll-datepicker').value = "";
        document.getElementById('email').value = "";
        document.getElementById('jobTitle').children[0].selected = true;
        document.getElementById('department').children[0].selected = true;
    }
</script>
</body>
</html>