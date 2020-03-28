<%--
  Created by IntelliJ IDEA.
  User: Kike
  Date: 27/03/2020
  Time: 11:50 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<html>
<head>
    <title>Editar libro</title>
</head>
<body>
<h1 align="center">Gestion de biblioteca</h1>
<jsp:include page="nav.html"/>
<%
    Book book = (Book)session.getAttribute("resultbook");
%>
<form action="BookAction?action=EditDone" method="post">
    <div class="detail">
        <div class="title">
            <span>Editar detalles</span>
        </div>
        <div>
            <span class="infotitle">ID：</span><input name="id" value="<%=book.getId()%>" readonly="readonly">
        </div>
        <div>
            <span class="infotitle">Titulo：</span><input name="name" value="<%=book.getName()%>">
        </div>
        <div>
            <span class="infotitle">Autor：</span><input name="author" value="<%=book.getAuthor()%>">
        </div>
        <div>
            <span class="infotitle">Editorial：</span><input name="publisher" value="<%=book.getPublisher()%>">
        </div>
        <div>
            <span class="infotitle">Precio：</span><input name="price" value="<%=book.getPrice()%>">
        </div>
        <div>
            <span class="infotitle">Categoria：</span><input name="category" value="<%=book.getCategory()%>">
        </div>
        <div>
            <span class="infotitle">inventario：</span><input name="store" value="<%=book.getStore()%>">
        </div>
        <div>
            <span class="infotitle">estante(ubicacion)：</span><input name="location" value="<%=book.getLocation()%>">
        </div>
        <div>
            <span class="infotitle">detalles：</span><textarea name="desc"><%=book.getDesc()%></textarea>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success">Guardar</button>
            <a href="BookAction?action=DeleteById&id=<%=book.getId()%>"><button type="button" class="btn btn-danger">Borrar</button></a>
            <a href="BookAction?action=getall"><button type="button" class="btn btn-info">Regresar a la lista</button></a>
        </div>
    </div>
</form>
</body>
</html>