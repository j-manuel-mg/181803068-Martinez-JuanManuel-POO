
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", ""); //Conexion a la BD 
        stmt = conexion.prepareStatement("INSERT INTO usuario SET usuario = ?, password = MD5(?)"); //Preparamos el stmt
        stmt.setString(1, request.getParameter("usuario")); //Comparo el primer tipo
        stmt.setString(2, request.getParameter("password")); //Comparo el segundo tipo
        int resultado = stmt.executeUpdate(); //Guarda y ejecut el update
%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usuario</title>
    </head>
    <body>

        <%
            if (resultado == 1) { //Compara si el executeUpdate fue exitoso
        %>

        <!-- <br><h3 style="color: darkgreen">Usuario agregado exitosamente a la Base de Datos</h3><br> -->

        <br>
        <div class="alert alert-success" role="alert">
            Usuario agregado exitosamente a la Base de Datos
        </div>
        <br>

        <%
        } else { //Si no muestra un mensaje de error
        %>

        <!-- <br><h3 style="color: darkred">El usuario no se agrego correctamente a la Base de Datos</h3><br> -->

        <br>
        <div class="alert alert-danger" role="alert">
            El usuario no se agrego correctamente a la Base de Datos
        </div>
        <br>

        <%
            }
        %>

        <br><br>
        
        <table style="margin: 0 auto">
            <tr>
                <td><a  href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a></td>
            </tr>
        </table>

    </body>
</html>
<%
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
