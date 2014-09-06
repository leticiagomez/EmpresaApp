<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Remover:Departamento</h1>
        <a href="${pageContext.request.contextPath}/index.jsp">principal</a> |
        <br>

        <form method="POST" action="${pageContext.request.contextPath}/controller?opcao=departamento.excluirPorId" >
            <select name="departamentos" onchange="this.form.submit()">
                <option id="" value="">--selecione--</option>
                <c:forEach var="departamento" items="${departamentos}">
                    <option value="${departamento.codigo}">
                    <c:out value="${departamento.nome}"/></option>
                </c:forEach>
            </select>
            <br>
            <input type=button onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=departamento.listar'" value='Cancelar'/>
        </form>
    </body>
</html>
