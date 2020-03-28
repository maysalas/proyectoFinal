<%--
  Created by IntelliJ IDEA.
  User: Kike
  Date: 2020/03/25
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/borrow.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/InfoScript.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Prestamo de Libro</title>
</head>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<body>
<h1 align="center">Gestion de Biblioteca</h1>
<jsp:include page="nav.html"/>
<div class="borrowinfo">
    <div class="title">
        Prestamo de Libro
    </div>
    <form action="IOAction?action=borrow" onsubmit="return errorsubmit()" method="post">
        <div>
            <span class="infotitle">ID Miembro：</span><input type="text" onkeyup="readercheck()" name="readerid" id="readerid"><span id="readeridcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">Nombre：</span><input type="text" name="readername" id="readername" disabled>
        </div> 
        <div>
            <span class="infotitle">Clase y Grupo：</span><input type="text" name="readername" id="readerclass" disabled>
        </div>
        <div>
            <span class="infotitle">Status：</span><input type="text" name="readername" id="readerstatus" disabled><span id="readerstatuscheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">Libros en posesion：</span><input type="text" name="readerborrow" id="readerborrow" disabled><span id="readerborrowcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">ID Libro：</span><input type="text" name="bookid" onkeyup="bookcheck()" id="bookid"><span id="bookidcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">Titulo：</span><input type="text" name="bookname" id="bookname"disabled>
        </div>
        <div>
            <span class="infotitle">Autor：</span><input type="text" name="bookauthor" id="bookauthor" disabled>
        </div>
        <div>
            <span class="infotitle">Editorial：</span><input type="text" name="bookpublisher" id="bookpublisher" disabled>
        </div>
        <div>
            <span class="infotitle">Disponible：</span><input type="text" name="bookremain" id="bookremain" disabled><span id="booknumcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">Tiempo de prestamo：</span>
            <select name="borrowday">
                <option value="7">7 dias</option>
                <option value="14">14 dias</option>
            </select>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success">Prestar</button>
            <button type="reset" class="btn btn-default">borrar formulario</button>
        </div>
    </form>
</div>
</body>
</html> 
