<%-- 
    Document   : index
    Created on : 22 may. 2020, 8:34:14
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarea Final</title>
    </head>
    <body>
        <h1>El que programa que debio ser y no fue (Sin try, sin JavaScript)</h1>
        
        <%
            if (request.getParameter("numero") != null) {

                int n = Integer.parseInt(request.getParameter("numero"));
        %>

        <h3>El ciclo del valor ingresado es: </h3>

        <%
            for (int i = 0; i <= n; i++) {
                out.println(i + ", ");
            }
        %>

        <form>

            <input type="hidden" /> 
            <br><input type="submit" value="Regresar" />

        </form>

        <%        
            } else {

        %>

        <form>
            <label>Introduce un numero:  </label><br>
            <input type="number" required name="numero" />
            <input type="submit" value="Enviar" />
        </form>

        <%                out.println("<br>No has ingresado ningun numero.");
            }

        %>
    </body>
</html>