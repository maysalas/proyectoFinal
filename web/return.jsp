<%--
  Created by IntelliJ IDEA.
  User: Kike
  Date: 2020/03/27
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/returnpage.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/return.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Devolucion de Libro</title>
</head>
<body>
<h1 align="center">Gestion de Biliotecas</h1>
<jsp:include page="nav.html"/>
</body>
<div class="returninfo">
    <div class="title">
        Introduce el ID de miembro
    </div>
    <form action="ReaderAction?action=GetBorrowListById" onsubmit="return errorsubmit()" method="post">
        <div>
            <span class="infotitle">ID miembro：</span><input type="text" onkeyup="readercheck()" name="readerid" id="readerid"><span id="readeridcheck" class="error"></span>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success">Enviar</button>
            <button type="reset" class="btn btn-default">resetear</button>
        </div>
    </form>
</div>
</html>
