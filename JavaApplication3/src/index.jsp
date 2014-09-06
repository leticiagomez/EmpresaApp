<%-- 
    Document   : index
    Created on : 08/03/2014, 13:50:40
    Author     : Israel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>AppEmpresa</h1>
        <a href="${pageContext.request.contextPath}/controller?opcao=cargo.listar">cargo</a> | 
        <a href="${pageContext.request.contextPath}/controller?opcao=funcionario.listar">funcionário</a> |
        <a href="${pageContext.request.contextPath}/controller?opcao=departamento.listar">departamento</a>
    </body>
</html>
