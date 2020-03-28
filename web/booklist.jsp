<%@ page import="app.datasim.Dao.BookDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="app.modelo.Book" %>
<%--
  Created by IntelliJ IDEA.
  User: Kike
  Date: 2020/03/27
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
    ArrayList<Book> booklist = (ArrayList<Book>)session.getAttribute("allbooklist");
%>
<html>
<head>
    <title>Libros</title>
</head>
<body>
<h1 align="center">Bienvenido a la biblioteca</h1>
<jsp:include page="nav.html"/>
<table class="table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Titulo</th>
        <th>Autor</th>
        <th>Editorial</th>
        <th>Precio</th>
        <th>Categoria</th>
        <th>Ejemplares</th>
        <th>Veces Consultado</th>
        <th>Disponibles</th>
        <th>Estante</th>
        <th>Accion</th>
    </tr>
    </thead>
    <tbody>
    <%
        if(booklist!=null && booklist.size() > 0)
        {
            for(int i = 0; i < booklist.size(); i++)
            {
                Book b = booklist.get(i);
    %>
    <tr>
        <td><%=b.getId()%></td>
        <td><a href="BookAction?action=querybookbyid&id=<%=b.getId()%>&next=check"><%=b.getName()%></a> </td>
        <td><%=b.getAuthor()%></td>
        <td><%=b.getPublisher()%></td>
        <td><%=b.getPrice()%></td>
        <td><%=b.getCategory()%></td>
        <td><%=b.getStore()%></td>
        <td><%=b.getLend()%></td>
        <td><%=b.getRemain()%></td>
        <td><%=b.getLocation()%></td>
        <td><a href="BookAction?action=querybookbyid&id=<%=b.getId()%>&next=edit">Editar</a></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>

</body>
</html>
