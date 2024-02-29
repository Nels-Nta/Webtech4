<%@page import="Dao.UserDao"%>
<%@ page import="entity.UserEntity" %>
<jsp:useBean id="u" class="entity.UserEntity"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    UserDao userDao = new UserDao();
    UserEntity user = userDao.saveUser(u);
    if (user != null) {
        response.sendRedirect("adduser-success.jsp");
    } else {
        response.sendRedirect("adduser-error.jsp");
    }
%>