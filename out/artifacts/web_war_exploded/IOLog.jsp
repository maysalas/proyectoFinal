<%@ page import="java.util.ArrayList" %>
<%@ page import="app.modelo.Log" %><%--
  Created by IntelliJ IDEA.
  User: Kike
  Date: 2020/03/26
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Devolucion de libros</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<h1 align="center">Gestion de Biblioteca</h1>
<jsp:include page="nav.html"/>
<table class="table">
    <thead>
    <tr>
        <th>ID de libro(Titulo)</th>
        <th>Id miembro</th>
        <th>Prestamo/Devolucion</th>
        <th>Tiempo</th>
        <th>Restante(dias)</th>
        <th>Devolver</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<Log> loglist = (ArrayList<Log>)session.getAttribute("loglist");
        if(loglist!=null && loglist.size() > 0)
        {
            for(int i = loglist.size() - 1; i >= 0 ; i--)
            {
                Log log = loglist.get(i);
    %>
    <tr>
        <td><%=log.getBookid()%></td>
        <td><%=log.getReaderid()%></td>
        <td><%=log.getService()%></td>
        <td><%=log.getBorrowtime()%></td>
        <td><%=log.getBorrowday()%></td>
        <td><%=log.getComplete()%></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
</body>
</html>
