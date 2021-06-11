<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<body>
<%@ include file="/header.jsp" %>
<div class="container-fluid">
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/users/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i>Lista użytkowników</a>
</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th>Id</th>
                    <td>${user.id}</td>
                </tr>
                <tr>
                    <th>Nazwa użytkownika</th>
                    <td>${user.username}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${user.email}</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</div>

<%@ include file="/footer.jsp" %>
</body>
</html>
