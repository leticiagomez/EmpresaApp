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

        <form method="POST" action="controller?opcao=funcionario.excluir">
            <label for="codigo">Código:</label>
            <input type="text" size="6" readonly="true" name="codigo" value="${funcionario.codigo}"/>
            <br/>
            <br/>
            <label for="nome">Funcionário:</label>
            <input type="text" size="40" readonly="true" name="nome" value="${funcionario.nome}"/>
            <br/>
            <label for="nome">Cargo:</label>
            <input type="text" size="40" name="nome" readonly="true" value="${funcionario.cargo.nome}"/>
            <br/>
            <label for="nome">Departamento:</label>
            <input type="text" size="40" name="nome" readonly="true" value="${funcionario.departamento.nome}"/>
            <br/>
            <input type="submit" value="Remover"/>
            <input type=button onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=funcionario.listar'" value='Cancelar'/>
        </form>
    </body>
</html>
