<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ALL USERS</title>
</head>
<body>
<br>
<h1 style=text-align:left;color:#CC040F><U>ALL USERS</U></h1>
<c:url var="addUrl" value="/testTask/users/add"/>
<c:url var="filterUrl" value="/testTask/users/filter"/>
<table border="1" style="border: 2px solid; width: 850px; text-align:left">
    <thead style="background: #fc0;text-align: left">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>isAdmin</th>
        <th>Created Date</th>
        <th colspan="2"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <c:url var="editUrl" value="/testTask/users/edit?id=${user.id}"/>
        <c:url var="deleteUrl" value="/testTask/users/delete?id=${user.id}"/>
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.age}"/></td>
            <td><c:out value="${user.admin}"/></td>
            <td><c:out value="${user.date}"/></td>
            <td><a href="${editUrl}">Edit</a></td>
            <td><a href="${deleteUrl}">Delete</a></td>
        </tr>
    </c:forEach>

    </tbody>
    <tbody>
</table>

<a></a>
<c:if test="${usersfull.size() > -1}">
    <c:forEach begin="1" end="${count}" var="val">
        <c:url var="pageURL" value="/testTask/usersPage?numpage=${val}"/>
        <a href="${pageURL}">${val}</a>-.
    </c:forEach>
</c:if>
<br>
</br>

<c:if test="${empty users}">
    There is no users in database.
</c:if>


<br>

<c>
    <a href="${addUrl}">Add new user</a>
    <br>
    <br>
    <a href="${filterUrl}">Find user by name</a>.
</c>



</body>
</html>