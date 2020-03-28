<%@ page import="app.modelo.Book" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Kike
  Date: 2020/03/28
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addbook.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Agregar Libro</title>
</head>
<body>
<h1 align="center">Gestion de Biblioteca</h1>
</body>
<body>
<jsp:include page="nav.html"/>
<%
    request.setCharacterEncoding("utf-8");
    if (session.getAttribute("adminname") == null) {
        response.sendRedirect("/Library/index.jsp");
    }
    ArrayList<Book> addbooklist = (ArrayList<Book>) session.getAttribute("addbooklist");
%>
<table class="table">
    <thead>
    <tr>
        <th> Número de libro</th>
                
        <th> Título</th>
                
        <th> Autor</th>
                
        <th> Editorial</th>
                
        <th> Precio</th>
                
        <th> Categoría</th>
                
        <th> Inventario</th>
                
        <th> Ubicación (estante)</th>
    </tr>
    </thead>
    <tbody>
    <%
        if (addbooklist != null && addbooklist.size() > 0) {
            for (int i = 0; i < addbooklist.size(); i++) {
                Book b = addbooklist.get(i);
    %>
    <tr>
        <td><%=b.getId()%>
        </td>
        <td><%=b.getName()%>
        </td>
        <td><%=b.getAuthor()%>
        </td>
        <td><%=b.getPublisher()%>
        </td>
        <td><%=b.getPrice()%>
        </td>
        <td><%=b.getCategory()%>
        </td>
        <td><%=b.getStore()%>
        </td>
        <td><%=b.getLocation()%>
        </td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<div class="button">
    <button onclick="location.href='BookAction?action=confirm'" class="btn btn-success">Guardar</button>
    <button onclick="location.href='BookAction?action=truncatetable'" class="btn btn-danger">Borrar</button>
</div>
</body>
</html>
