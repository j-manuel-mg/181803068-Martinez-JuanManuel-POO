
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi primer formulario</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        <p>Este es mi primer formulario en donde conocere la diferencia entre <b>POST y GET</b> </p>
        <form method="POST"> <!--post: encapsula los datos  y get: los muestra por el url -->
            <input type="text" name="minombre"/> <br> <!--Introducir texto  -->
            <input type="password" name="contra"/> <br> <!--Contraseña  -->
            <input type="date" name="fechanacimiento"/> <br> <!--Fecha  -->
            <input type="submit" value="enviar"/> <!--Enviar  -->
        </form>
        
        <h3>Los datos ingresado son:  </h3>
        <%
            out.println("Nombre:  ");
            out.println(request.getParameter("minombre"));
        %>
        <br>
        <%
            out.println("\nContraseña:  ");
            out.println(request.getParameter("contra"));
        %>
        <br>
        <%
            out.println("\nFecha de nacimiento:  ");
            out.println(request.getParameter("fechanacimiento"));
        %>
    </body>
</html>
