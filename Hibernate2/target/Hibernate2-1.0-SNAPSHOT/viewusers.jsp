<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="entity.UserEntity" scope="request" />

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Users</title>
</head>
<body>

<%@page import="Dao.UserDao,entity.UserEntity.*,java.util.*"%>
<%@ page import="entity.UserEntity" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>

<h1>Users List</h1>

<%
    UserDao userDao = new UserDao();
    List<UserEntity> list = userDao.getAllUsers();
    request.setAttribute("list", list);
%>


<table>
    <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
        <th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach items="${list}" var="u">
        <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>
            <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
            <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
            <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
    </c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a>
</body>
</html>