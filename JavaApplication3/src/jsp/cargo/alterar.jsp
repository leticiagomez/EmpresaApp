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
            <h1>Cargo:editar!</h1>
        </header>

        <a href="${pageContext.request.contextPath}/index.jsp">principal</a> |
        <br>
        
        <form method="POST" action="${pageContext.request.contextPath}/controller?opcao=cargo.alterarPorId" >
            <select name="cargos" onchange="this.form.submit()">
                <option id="" value="">--selecione--</option>
                <c:forEach var="cargo" items="${cargos}">
                    <option value="${cargo.codigo}">
                        <c:out value="${cargo.nome}"/></option>
                </c:forEach>
            </select>
            <br>
            <input type=button onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=cargo.listar'" value='Cancelar'/>
        </form>
    </body>
</html>
