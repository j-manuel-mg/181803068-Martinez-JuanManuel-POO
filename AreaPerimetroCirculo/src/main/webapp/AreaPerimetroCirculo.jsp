
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area y perimetro de un circulo</title>
    </head>
    <body>
        <h1>Area y perimetro de un circulo</h1>

        <form>

            <label> Digite un numero:</label><br>
            <input type="number" required name="numero">
            <input type="submit" value="Calcular">

        </form>

        <%
            if (request.getParameter("numero") != null) {

                int n = Integer.parseInt(request.getParameter("numero"));
                final double PI = 3.1416f;
                double area, perimetro;

                if (n >= 0) {

        %>
        <h3>Area del circulo: </h3>
        <%          
                    area = (PI * (Math.pow(n, 2)));
                    out.println("Usted ha digitado el numero: " + n);
                    out.println("<br><br>El area del circulo es: " + area + " centimetros cuadrados");
                    
        %>
        <h3>Perimetro del circulo: </h3>
        <%
                    perimetro = 2 * PI * n;
                    out.println("Usted ha digitado el numero: " + n);
                    out.println("<br><br>El perimetro del circulo es: " + perimetro + " centimetros lineales");

                } else {
                    out.println("<br>El radio no puede ser negativo");
                }

            } else {

                out.println("<br>No has digitado un numero");

            }

        %>

    </body>
</html>
