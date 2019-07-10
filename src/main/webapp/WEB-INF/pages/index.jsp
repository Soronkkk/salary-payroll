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

</head>
<body>

<div class="container" style="display: none;">
    <h2>Cards with Contextual Classes</h2>
    <div class="card">
        <div class="card-body">Basic card</div>
    </div>
    <br>
    <div class="card bg-primary text-white">
        <div class="card-body">Primary card</div>
    </div>
    <br>
    <div class="card bg-success text-white">
        <div class="card-body">Success card</div>
    </div>
    <br>
    <div class="card bg-info text-white">
        <div class="card-body">Info card</div>
    </div>
    <br>
    <div class="card bg-warning text-white">
        <div class="card-body">Warning card</div>
    </div>
    <br>
    <div class="card bg-danger text-white">
        <div class="card-body">Danger card</div>
    </div>
    <br>
    <div class="card bg-secondary text-white">
        <div class="card-body">Secondary card</div>
    </div>
    <br>
    <div class="card bg-dark text-white">
        <div class="card-body">Dark card</div>
    </div>
    <br>
    <div class="card bg-light text-dark">
        <div class="card-body">Light card</div>
    </div>
</div>

<form action="${pageContext.request.contextPath}/crud" method="post">
    <div>
        <p><input type="radio" name="action" value="save">save</p>
        <p><input type="radio" name="action" value="delete">delete</p>
        <p><input type="radio" name="action" value="find">find</p>
        <br>
    </div>
    id:<input type="text" name="id"/><br>
    name:<input type="text" name="name"/><br>
    <input type="submit"/>
</form>
</br>
    <table class="table table-hoover">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employees}" var="employees">
            <tr>
                <td>id=${employees.id}</td>
                <td>${employees.name}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</body>
</html>