<%--
  Created by IntelliJ IDEA.
  User: Kike
  Date: 2020/03/27
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css"  type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Biblioteca</title>
</head>
<body>
<h1 align="center">Bienvenido a la biblioteca</h1>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<jsp:include page="nav.html"/>
<%
out.println("<div style='height: 70px;'></div>");
out.println("<div id='btnencript'>");
    out.println("<input type='text' class='text_pro'>");
    out.println("<button type='button' class='boton_pro'>Encriptar</button>");
    out.println("</div>");
out.println("<div style='height: 70px;'></div>");
%>
</body>
</html>
