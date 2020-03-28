<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/loginScript.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>本
    <title>Biblioteca</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") != null && session.getAttribute("logout") == null){
        response.sendRedirect("/Library/main.jsp");
    }
%>
<div class="welcome">
    <img src="img/welcome.jpg" >
</div>

<div class="Cita">
      <span>
          Los libros son la escalera <br>al progreso humano. <br>- Gorky
      </span>
</div>
<div class="loginform">
    <div class="col-md-2 column">
        <span id="labellogin">Login</span><br>
        <div class="form-group">
            <input type="text" class="form-control" id="usernameinput" name="username" placeholder="Nombre de usuario"/>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="passwordinput" name="password" placeholder="Contraseña"/>
        </div>
        <button id="loginbutton" class="btn btn-primary" onclick="logincheck()">Login</button>
        <span class="errorsubmit" id="checkinfo"></span>
    </div>
</div>
</body>
</html>