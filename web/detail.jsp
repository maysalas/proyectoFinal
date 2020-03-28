<%@ page import="Entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2018/1/14
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Detalle del Libro</title>
</head>
<body>
<h1 align="center">Gestion de Bilbioteca</h1>
<jsp:include page="nav.html"/>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<%
    Book book = (Book)session.getAttribute("resultbook");
%>
<div class="detail">
    <div class="title">
        <span>Detalle del Libro</span>
    </div>
    <div id="id">
        <span class="infotitle">ID：</span><span class="info"><%=book.getId()%></span>
    </div>
    <div>
        <span class="infotitle">Titulo：</span><span class="info"><%=book.getName()%></span>
    </div>
    <div>
        <span class="infotitle">Autor：</span><span class="info"><%=book.getAuthor()%></span>
    </div>
    <div>
        <span class="infotitle">Editorial：</span><span class="info"><%=book.getPublisher()%></span>
    </div>
    <div>
        <span class="infotitle">Precio：</span><span class="info"><%=book.getPrice()%>Pesos</span>
    </div>
    <div>
        <span class="infotitle">Categoria：</span><span class="info"><%=book.getCategory()%></span>
    </div>
    <div>
        <span class="infotitle">Inventario：</span><span class="info"><%=book.getStore()%>Piezas</span>
    </div>
    <div>
        <span class="infotitle">Estante(ubicacion)：</span><span class="info"><%=book.getLocation()%></span>
    </div>
    <div>
        <span class="infotitle">Detalle：</span><span class="info"><%=book.getDesc()%></span>
    </div>
    <div class="button">
        <a href="BookAction?action=querybookbyid&id=<%=book.getId()%>&next=edit"><button type="button" class="btn btn-default">Editar</button></a>
        <a href="BookAction?action=getall"><button type="button" class="btn btn-info">Regresar a la lista</button></a>
    </div>
</div>
</body>
</html>
