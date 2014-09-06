<%-- 
    Document   : confirmar-exclusao
    Created on : 07/04/2014, 11:07:31
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
        <h1>Confirmar Exclusão?</h1>

        <a href="${pageContext.request.contextPath}/index.jsp">principal</a> |
        <br>

        <form method="POST" action="controller?opcao=cargo.excluir">
            <label for="codigo">Código:</label>
            <input type="text" size="6" readonly="true" name="codigo" value="${cargo.codigo}"/>
            <br/>
            <label for="nome">Nome:</label>
            <input type="text" size="40" name="nome" value="${cargo.nome}"/>
            <br/>
            <input type="submit" value="Remover"/>
            <input type=button onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=cargo.listar'" value='Cancelar'/>
        </form>
    </body>
</html>
