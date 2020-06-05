
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Triangulo Rectangulo</title>
    </head>
    <body>
        <h1>Triangulo Rectangulo</h1>

        <form>

            <label> Digite un numero:</label><br>
            <input type="number" required name="numero">
            <input type="submit" value="Mostrar">

        </form>

        <%
            if (request.getParameter("numero") != null) {

                int n = Integer.parseInt(request.getParameter("numero"));
                
                if (n >= 0) {

        %>
        <h3>Triangulo Rectangulo: </h3>
        <%          
            
                    out.println("Usted digito el numero: " + n);
                    
                    out.println("<br><br>El Triangulo Rectangulo es: <br><br>");
                    
                    for (int i = 0; i < n; i++) {
                        
                        for (int j = 0; j <= i; j++) {
                            
                            out.println("*");
                                
                            }
                            out.println("<br>");
                        }

                } else {
                    out.println("<br>No puede ir negativamente");
                }

            } else {

                out.println("<br>No has digitado un numero");

            }

        %>
    </body>
</html>
