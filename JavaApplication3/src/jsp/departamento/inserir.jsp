<%-- 
    Document   : inserir
    Created on : 10/03/2014, 11:18:47
    Author     : 1146322
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Departamento:inserir!</h2>

        <a href="${pageContext.request.contextPath}">principal</a> | 

        <form method="POST" action="${pageContext.request.contextPath}/controller?opcao=departamento.inserir">
            <input type="text" name="nome" required="true" size="80"/><br>
            <input type="submit"/>
            <input type=button 
                   onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=departamento.listar'"
                   value='Cancelar'/>
        </form>
    </body>
</html>
