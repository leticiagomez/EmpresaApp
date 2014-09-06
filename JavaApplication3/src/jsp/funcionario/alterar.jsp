<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>App-Empresa</title>
    </head>
    <body>
        <header>
            <h1>Funcionario:editar!</h1>
        </header>

        <a href="${pageContext.request.contextPath}/index.jsp">principal</a> |
        <br>
        
        <form method="POST" action="${pageContext.request.contextPath}/controller?opcao=funcionario.alterarPorId" >
            <select name="funcionarios" onchange="this.form.submit()">
                <option id="" value="">--selecione--</option>
                <c:forEach var="funcionario" items="${funcionarios}">
                    <option value="${funcionario.codigo}">
                        <c:out value="${funcionario.nome}"/></option>
                </c:forEach>
            </select>
            <br>
            <input type=button onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=funcionario.listar'" value='Cancelar'/>
        </form>
    </body>
</html>
