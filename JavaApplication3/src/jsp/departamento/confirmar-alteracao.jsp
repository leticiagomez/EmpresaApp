<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>App-Empresa</title>
    </head>
    <body>
        <header>
            <h2>Confirmar alteração?</h2>
        </header>
            <a href="${pageContext.request.contextPath}/index.jsp">principal</a> |
            <br>
            
        <form method="POST" action="controller?opcao=departamento.alterar">
            <label for="codigo">Código:</label>
            <input type="text" size="6" readonly="true" name="codigo" value="${departamento.codigo}"/>
            <br/>
            <label for="nome">Nome:</label>
            <input type="text" size="40" name="nome" value="${departamento.nome}"/>
            <br/>
            <input type="submit" value="Alterar"/>
            <input type=button onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=departamento.listar'" value='Cancelar'/>
        </form>
    </body>
</html>
