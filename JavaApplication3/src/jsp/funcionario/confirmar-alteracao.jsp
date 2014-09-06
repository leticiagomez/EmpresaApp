<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>App-Empresa</title>
    </head>
    <body onload="document.getElementById('cargos').selectedIndex = ${funcionario.cargo.codigo}">
        <header>
            <h2>Confirmar alteração?</h2>
        </header>
            <a href="${pageContext.request.contextPath}/index.jsp">principal</a> |
            <br>
            
        <form method="POST" action="controller?opcao=funcionario.alterar">
            <label for="codigo">Código:</label>
            <input type="text" size="6" readonly="true" name="codigo" value="${funcionario.codigo}"/>
            <br/>
            <label for="nome">Nome:</label>
            <input type="text" size="40" name="nome" value="${funcionario.nome}"/>
            <br/>
            <select name="cargos" onchange="this.form.submit()">
                <option id="" value="">--selecione--</option>
                <c:forEach var="cargo" items="${cargos}">
                    <option value="${cargo.codigo}">
                    <c:out value="${cargo.nome}"/></option>
                </c:forEach>
            </select>
<!--                <select name="cargos">
                <option id="" value="">--selecione--</option>
                <c:forEach var="cargo" items="${cargos}">
                    <option value="${cargo.codigo}">
                        <c:out value="${cargo.nome}"/></option>
                </c:forEach>
            </select>-->
            <select name="departamentos">
                <option id="" value="">--selecione--</option>
                <c:forEach var="departamento" items="${departamentos}">
                    <option value="${departamento.codigo}">
                        <c:out value="${departamento.nome}"/></option>
                </c:forEach>
            </select>
            <input type="submit" value="Alterar"/>
            <input type=button onClick="location.href = '${pageContext.request.contextPath}/controller?opcao=funcionario.listar'" value='Cancelar'/>
        </form>
    </body>
</html>
