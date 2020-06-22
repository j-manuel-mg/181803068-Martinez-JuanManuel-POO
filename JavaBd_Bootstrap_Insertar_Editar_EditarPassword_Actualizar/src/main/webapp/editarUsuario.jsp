
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("UPDATE usuario SET usuario = ? WHERE id_usuario = ?");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setInt(2, Integer.parseInt(request.getParameter("id_usuario")));

        int resultado = stmt.executeUpdate();
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>

        <%
            if (resultado > 0) { //Compara si el executeUpdate fue exitoso
        %>

        <!-- <br><h3 style="color: darkgreen">Usuario agregado exitosamente a la Base de Datos</h3><br> -->

        <br>
        <br>
        
        <div class="col">
            <div class="alert alert-success" role="alert">
                Usuario Modificado exitosamente de la Base de Datos
            </div>
        </div>
        
        <%
        } else { //Si no muestra un mensaje de error
        %>

        <!-- <br><h3 style="color: darkred">El usuario no se agrego correctamente a la Base de Datos</h3><br> -->
        
        <div class="col">
            <div class="alert alert-danger" role="alert">
                El usuario no se modifico correctamente
            </div>
        </div>

        <%
            }
        %>

        <br>
        
        <div class="col">
            <a  href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>
    </body>
</html>

<%    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
