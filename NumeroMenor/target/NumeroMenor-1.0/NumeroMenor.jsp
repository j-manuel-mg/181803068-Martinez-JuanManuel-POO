
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numero Menor</title>
    </head>
    <body>
        
        <h1>Numero Menor de 15 numeros</h1>

        <form method="post">
            
            <input type="number" name="numero1" required><br>
            <input type="number" name="numero2" required><br>
            <input type="number" name="numero3" required><br>
            <input type="number" name="numero4" required><br>
            <input type="number" name="numero5" required><br>
            <input type="number" name="numero6" required><br>
            <input type="number" name="numero7" required><br>
            <input type="number" name="numero8" required><br>
            <input type="number" name="numero9" required><br>
            <input type="number" name="numero10" required><br>
            <input type="number" name="numero11" required><br>
            <input type="number" name="numero12" required><br>
            <input type="number" name="numero13" required><br>
            <input type="number" name="numero14" required><br>
            <input type="number" name="numero15" required><br>
            <input type="submit" value="Mostrar">
            
        </form>
        
        <%
            if (request.getParameter("numero1") != null) {
                
                int n[] = new int[15];
                
                n[0] = Integer.parseInt(request.getParameter("numero1"));
                n[1] = Integer.parseInt(request.getParameter("numero2"));
                n[2] = Integer.parseInt(request.getParameter("numero3"));
                n[3] = Integer.parseInt(request.getParameter("numero4"));
                n[4] = Integer.parseInt(request.getParameter("numero5"));
                n[5] = Integer.parseInt(request.getParameter("numero6"));
                n[6] = Integer.parseInt(request.getParameter("numero7"));
                n[7] = Integer.parseInt(request.getParameter("numero8"));
                n[8] = Integer.parseInt(request.getParameter("numero9"));
                n[9] = Integer.parseInt(request.getParameter("numero10"));
                n[10] = Integer.parseInt(request.getParameter("numero11"));
                n[11] = Integer.parseInt(request.getParameter("numero12"));
                n[12] = Integer.parseInt(request.getParameter("numero13"));
                n[13] = Integer.parseInt(request.getParameter("numero14"));
                n[14] = Integer.parseInt(request.getParameter("numero15"));
                
                int menor = n[0];
                
                out.println("<br>Los numeros digitados son: <br><br>");
                
                for (int i = 0; i < 15; i++) {
                    
                    out.println(n[i] + ",");
                    
                    if (n[i] < menor) {
                        
                        menor = n[i];
                        
                    }
                    
                }
                
                out.println("<br><br>El numero menor es: " + menor);
                
            } else {
                
                out.println("<br>No ha digitado ninguno de los numeros");
                
            }
            
        %>
    </body>
</html>