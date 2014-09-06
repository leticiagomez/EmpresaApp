<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionário</title>
    </head>
    <body>
        <h2>Funcionário</h2>
        <a href="${pageContext.request.contextPath}/controller?opcao=funcionario.pre-inserir">inserir</a> | 
        <a href="${pageContext.request.contextPath}/controller?opcao=funcionario.pre-alterar">alterar</a> | 
        <a href="${pageContext.request.contextPath}/controller?opcao=funcionario.pre-excluir">remover</a> | 
        <a href="${pageContext.request.contextPath}">principal</a> | 

        <br><br>
        
        <c:forEach var="funcionario" items="${funcionarios}">
            <c:out value="${funcionario.codigo}"/> <c:out value="${funcionario.nome}"/> - <c:out value="${funcionario.cargo.nome}"/> - <c:out value="${funcionario.departamento.nome}"/><br>
        </c:forEach>
            
    </body>
</html>
