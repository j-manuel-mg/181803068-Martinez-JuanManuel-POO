
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorial</title>
    </head>
    <body>
        <h1>Factorial de un numero</h1>

        <form>

            <label> Digite un numero:</label><br>
            <input type="number" required name="numero">
            <input type="submit" value="Calcular">

        </form>

        <%
            if (request.getParameter("numero") != null) {

                int n = Integer.parseInt(request.getParameter("numero"));
                int factorial = 1;

                if (n >= 0) {

        %>
        <h3>Factorial del numero: </h3>
        <%                    
                    for (int i = 1; i <= n; i++) {
                        
                        factorial *= i;

                    }
                    out.println("Usted digito el numero: " + n);
                    
                    out.println("<br><br>La factorial es: " + factorial);

                } else {
                    out.println("<br>No existe la factorial de un numero negativo");
                }

            } else {

                out.println("<br>No has digitado un numero");

            }

        %>
    </body>
</html>
