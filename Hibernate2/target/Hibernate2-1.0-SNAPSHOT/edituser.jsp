<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.UserEntity" %>
<%@page import="Dao.UserDao"%>
<jsp:useBean id="u" class="entity.UserEntity"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i=UserDao.updateUser(u);
    response.sendRedirect("viewusers.jsp");
%>