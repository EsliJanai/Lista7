<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado da Tabuada</title>
</head>
<body>
    <h1>Resultado da Tabuada</h1>
    <%
        String numeroStr = request.getParameter("numero");
        int numero = Integer.parseInt(numeroStr);
    %>
    <p>Tabuada do número <%= numero %>:</p>
    <table border="1">
        <tr>
            <th>Operação</th>
            <th>Resultado</th>
        </tr>
        <%
            for (int i = 1; i <= 10; i++) {
                int resultado = numero * i;
        %>
        <tr>
            <td><%= numero %> x <%= i %></td>
            <td><%= resultado %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
