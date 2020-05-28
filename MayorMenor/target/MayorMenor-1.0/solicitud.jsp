
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numero mayor y Numero menor</title>
    </head>
    <body>

        <form>
            
            
            <h2 style="color: darkorange">Digite los numeros: </h2><br>
            
            
            
            <%
                int n = Integer.parseInt(request.getParameter("numero"));
            %>
            
            
            
            <%
                int array[] = new int[n];
                for (int i = 0; i < n; i++) {
            %>
            
            
            
            <input type="number" name="valor<%=i%>"/><br><br>  <!-- Al input numero lo igualamos al for en la posicion[i] -->
            
            
            
            <%
                    if (request.getParameter("valor" + i) != null) { //valor + i = valor1, valor2, valor3
                        array[i] = Integer.parseInt(request.getParameter("valor" + i)); //valor + i = valor1, valor2, valor3
                    }
                }

            %>
            
            
            
            <input type="hidden" name="numero" value="<%out.print(n);%>" /> <!--Necesitamos pasar los datos  -->
            <input type="submit" value="Enviar" />
            
            
            
            <%
                
                out.println("<br><br>Los numeros son: ");
                for (int i = 0; i < n; i++) {
                    out.println(array[i]);
                }
                
            %>
            
            
            
    </body>
</html>
