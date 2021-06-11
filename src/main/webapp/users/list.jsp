<%--
  Created by IntelliJ IDEA.
  User: angelika
  Date: 10.06.2021
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
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
    <a href="<c:url value="/users/addUser"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nazwa użytkownika</th>
                    <th>Email</th>
                    <th>Akcja</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>
                            <a href='<c:url value="/users/deleteUser?id=${user.id}"/>'>Usuń</a>
                            <a href='<c:url value="/users/editUser?id=${user.id}"/>'>Edytuj</a>
                            <a href='<c:url value="/users/showUser?id=${user.id}"/>'>Pokaż</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
