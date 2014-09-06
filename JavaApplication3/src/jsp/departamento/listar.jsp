<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamento</title>
    </head>
    <body>
        <h2>Departamento</h2>
        <a href="${pageContext.request.contextPath}/controller?opcao=departamento.pre-inserir">inserir</a> | 
        <a href="${pageContext.request.contextPath}/controller?opcao=departamento.pre-alterar">alterar</a> | 
        <a href="${pageContext.request.contextPath}/controller?opcao=departamento.pre-excluir">remover</a> | 
        <a href="${pageContext.request.contextPath}">principal</a> | 

        <br><br>
        
        <c:forEach var="departamento" items="${departamentos}">
            <c:out value="${departamento.codigo}"/> - <c:out value="${departamento.nome}"/><br>
        </c:forEach>
            
    </body>
</html>
