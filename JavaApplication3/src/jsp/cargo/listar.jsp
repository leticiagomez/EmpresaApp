<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cargo</title>
    </head>
    <body>
        <h2>Cargo</h2>
        <a href="${pageContext.request.contextPath}/controller?opcao=cargo.pre-inserir">inserir</a> | 
        <a href="${pageContext.request.contextPath}/controller?opcao=cargo.pre-alterar">alterar</a> | 
        <a href="${pageContext.request.contextPath}/controller?opcao=cargo.pre-excluir">remover</a> | 
        <a href="${pageContext.request.contextPath}">principal</a> | 

        <br><br>
        
        <c:forEach var="cargo" items="${cargos}">
            <c:out value="${cargo.codigo}"/> - <c:out value="${cargo.nome}"/><br>
        </c:forEach>
            
    </body>
</html>
