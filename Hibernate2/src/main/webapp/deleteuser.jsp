<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.UserEntity" %>

<%@page import="Dao.UserDao"%>
<jsp:useBean id="u" class="Dao.UserDao"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    UserDao.deleteUser( u );
    response.sendRedirect("viewusers.jsp");
%>