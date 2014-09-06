<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Funcionario:inserir!</h2>

        <a href="${pageContext.request.contextPath}">principal</a> | 

        <form method="POST" action="${pageContext.request.contextPath}/controller?opcao=funcionario.inserir">
            <label for="cargos">cargos:</label>
            <select name="cargos">
                <option id="" value="">--selecione--</option>
                <c:forEach var="cargo" items="${cargos}">
                    <option value="${cargo.codigo}">
                    <c:out value="${cargo.nome}"/></option>
                </c:forEach>
            </select>
            <br/>
            <label for="departamentos">departamentos:</label>
            <select name="departamentos">
                <option id="" value="">--selecione--</option>
                <c:forEach var="departamento" items="${departamentos}">
                    <option value="${departamento.codigo}">
                    <c:out value="${departamento.nome}"/></option>
                </c:forEach>
            </select>
            <br>
            <label for="nome">nome</label>
            <input type="text" name="nome" required="true" size="80"/>
            <br>
            <input type="submit"/>
            <input type=button 
                   onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=funcionario.listar'"
                   value='Cancelar'/>
        </form>
    </body>
</html>
