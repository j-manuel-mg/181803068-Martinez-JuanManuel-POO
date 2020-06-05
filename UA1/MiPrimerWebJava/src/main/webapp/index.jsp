<%-- 
    Document   : index
    Created on : 20 may. 2020, 8:50:49
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usando Java</title>
    </head>
    <body>
        <h1>Numeracion: </h1><br>
        <%
            for (int i = 0; i < 10; i++) {
                System.out.println(i); //Imprime del lado del servidor
                    out.println(i); //Imprime del lado del cliente
                }
        %>
    </body>
</html>
